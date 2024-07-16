Profile: MedicationRequest_ke_Profile
Parent: MedicationRequest
Id: MedicationRequest-ke-Profile
Title: "MedicationRequest_ke_Profile"
Description: "An order or request for both supply of the medication and the instructions for administration of the medication to a patient. The resource is called \"MedicationRequest\" rather than \"MedicationPrescription\" or \"MedicationOrder\" to generalize the use across inpatient and outpatient settings, including care plans, etc., and to harmonize with workflow patterns."

* identifier 1..1 MS
* subject 1..1 MS
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group)
* reasonCode 0..*
* reasonCode from http://hl7.org/fhir/ValueSet/condition-code (example)
* reasonReference only Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Observation)
* medication[x] 1..1 SU 
* medication[x] only CodeableConcept or Reference(http://hl7.org/fhir/StructureDefinition/Medication) 
* medication[x] ^definition = "Identifies the medication being requested. This is a link to a resource that represents the medication which may be the details of the medication or simply an attribute carrying a code that identifies the medication from a known list of medications."
* medication[x] from http://hl7.org/fhir/ValueSet/medication-codes (example)
* encounter 0..1 
* encounter only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status|4.0.1 (required)
* priority 0..1
* priority from http://hl7.org/fhir/ValueSet/request-priority|4.0.1 (required)
* supportingInformation 0..* 
* supportingInformation only Reference(http://hl7.org/fhir/StructureDefinition/Resource) 
* supportingInformation ^definition = "Include additional information (for example, patient height and weight) that supports the ordering of the medication."
* authoredOn 0..1
* requester 0..1 
* requester only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/Device) 
* requester ^short = "Who/What requested the Request"
* performer 0..1 
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/CareTeam) 
* performer ^short = "Intended performer of administration"
* basedOn 0..* 
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/CarePlan or http://hl7.org/fhir/StructureDefinition/MedicationRequest or http://hl7.org/fhir/StructureDefinition/ServiceRequest or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation)
* courseOfTherapyType 0..1
* courseOfTherapyType ^definition = "The description of the overall pattern of the administration of the medication to the patient."
* courseOfTherapyType from http://hl7.org/fhir/ValueSet/medicationrequest-course-of-therapy (example)
* insurance 0..* 
* insurance only Reference(http://hl7.org/fhir/StructureDefinition/Coverage or http://hl7.org/fhir/StructureDefinition/ClaimResponse)
* note 0..*
* dosageInstruction 0..*
* dosageInstruction ^comment = "There are examples where a medication request may include the option of an oral dose or an Intravenous or Intramuscular dose.  For example, \"Ondansetron 8mg orally or IV twice a day as needed for nausea\" or \"CompazineÂ® (prochlorperazine) 5-10mg PO or 25mg PR bid prn nausea or vomiting\".  In these cases, two medication requests would be created that could be grouped together.  The decision on which dose and route of administration to use is based on the patient's condition at the time the dose is needed."
* dispenseRequest 0..1
* dispenseRequest.performer 
* dispenseRequest.performer only Reference(http://hl7.org/fhir/StructureDefinition/Organization) 
* dispenseRequest.performer ^short = "Indicates the intended dispensing Organization specified by the prescriber."
* substitution 0..1
* substitution.allowed[x] 1..1 MS
* substitution.allowed[x] only boolean or CodeableConcept
* substitution.allowed[x] from http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode (example)
* substitution.reason 0..1
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason (example)
* priorPrescription 0..1 
* priorPrescription only Reference(http://hl7.org/fhir/StructureDefinition/MedicationRequest)
* detectedIssue 0..* 
* detectedIssue only Reference(http://hl7.org/fhir/StructureDefinition/DetectedIssue) 
* detectedIssue ^definition = "Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, duplicate therapy, dosage alert etc."