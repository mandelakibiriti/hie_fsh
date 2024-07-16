Profile: Patient_ke_Profile
Parent: Patient
Id: Patient-ke-Profile
Title: "Patient_ke_Profile"
Description: "Demographics and other administrative information about an individual or animal receiving care or other health-related services."

* identifier 1..1 MS
* identifier ^definition = "Patients are almost always assigned specific numerical identifiers."
* active 0..1 SU
* active only boolean 
* active ^short = "Whether this patient's record is in active use"
* active ^comment = "If a record is inactive, and linked to an active record, then future patient/record updates should occur on the other patient."
* active ^requirements = "Need to be able to mark a patient record as not to be used because it was created in error."
* active ^meaningWhenMissing = "This resource is generally assumed to be active if no value is provided for the active element"
* active ^isModifierReason = "This element is labelled as a modifier because it is a status element that can indicate that a record should not be treated as valid"
* name 0..* SU 
* name ^short = "A name associated with the patient"
* name ^comment = "A patient may have multiple names with different uses or applicable periods. For animals, the name is a \"HumanName\" in the sense that is assigned and used by humans and has the same patterns."
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name."
* name obeys ips-pat-1
* telecom 0..*
* gender 0..1
* gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* birthDate 0..1
* deceased[x] 0..1
* address 0..*
* maritalStatus 0..1
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (extensible)
* photo 0..*
* contact 0..*
* contact.relationship 0..*
* contact.relationship from http://hl7.org/fhir/ValueSet/patient-contactrelationship (extensible)
* contact.name 0..1
* contact.telecom 0..*
* contact.address 0..1
* contact.gender 0..1
* contact.gender from http://hl7.org/fhir/ValueSet/administrative-gender|4.0.1 (required)
* contact.organization only Reference(Organization)
* contact.period 0..1
* generalPractitioner only Reference(http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole)
* managingOrganization only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* link 0..*

Invariant: ips-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
* severity = #error
* expression = "family.exists() or given.exists() or text.exists()"
* xpath = "f:given or f:family or f:text"