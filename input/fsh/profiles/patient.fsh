Resource: Patient
Parent: DomainResource
Id: PatientProfile
Title: "Patient"
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."

* identifier 0..* SU Identifier "An identifier for this patient" "An identifier for this patient."
* identifier ^requirements = "Patients are almost always assigned specific numerical identifiers."
* active 0..1 ?! SU boolean "Whether this patient's record is in active use" "Whether this patient record is in active use. \nMany systems use this property to mark as non-current patients, such as those that have not been seen for a period of time based on an organization's business rules.\n\nIt is often used to filter patient lists to exclude inactive patients\n\nDeceased patients may also be marked as inactive for the same reasons, but may be active for some time after death."
* name 0..* SU HumanName "A name associated with the patient" "A name associated with the individual."
* telecom 0..* SU ContactPoint "A contact detail for the individual" "A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted."
* gender 0..1 SU code "male | female | other | unknown" "Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes."
* gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* birthDate 0..1 SU date "The date of birth for the individual" "The date of birth for the individual."
* deceased[x] 0..1 ?! SU boolean or dateTime "Indicates if the individual is deceased or not" "Indicates if the individual is deceased or not."
* address 0..* SU Address "An address for the individual" "An address for the individual."
* maritalStatus 0..1 CodeableConcept "Marital (civil) status of a patient" "This field contains a patient's most recent marital (civil) status."
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* photo 0..* Attachment "Image of the patient" "Image of the patient."
* contact 0..* BackboneElement "A contact party (e.g. guardian, partner, friend) for the patient" "A contact party (e.g. guardian, partner, friend) for the patient."
* contact.relationship 0..* CodeableConcept "The kind of relationship" "The nature of the relationship between the patient and the contact person."
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (extensible)
* contact.name 0..1 HumanName "A name associated with the contact person" "A name associated with the contact person."
* contact.telecom 0..* ContactPoint "A contact detail for the person" "A contact detail for the person, e.g. a telephone number or an email address."
* contact.address 0..1 Address "Address for the contact person" "Address for the contact person."
* contact.gender 0..1 code "male | female | other | unknown" "Administrative Gender - the gender that the contact person is considered to have for administration and record keeping purposes."
* contact.gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* contact.organization 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Organization that is associated with the contact" "Organization on behalf of which the contact is acting or for which the contact is working."
* contact.period 0..1 Period "The period during which this contact person or organization is valid to be contacted relating to this patient" "The period during which this contact person or organization is valid to be contacted relating to this patient."
* generalPractitioner 0..* Reference(http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole) "Patient's nominated primary care provider" "Patient's nominated care provider."
* managingOrganization 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Organization that is the custodian of the patient record" "Organization that is the custodian of the patient record."
* link 0..* ?! SU BackboneElement "Link to another patient resource that concerns the same actual person" "Link to another patient resource that concerns the same actual patient."