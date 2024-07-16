Profile: Encounter_ke_profile
Parent: Encounter
Id: Encounter-ke-Profile
Title: "Encounter_ke_Profile"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."

* identifier 1..1 MS 
* identifier ^short = "Identifier(s) by which this encounter is known"
* status 1..1
* status = #completed
* statusHistory 0..*
* class 1..1 
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* classHistory 0..* 
* classHistory ^definition = "The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient."
* priority 0..1
* priority ^short = "Indicates the urgency of the encounter"
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (example)
* subject 0..1 
* subject ^short = "The patient or group present at the encounter"
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group) 
* episodeOfCare 0..* SU
* episodeOfCare only Reference(http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) 
* basedOn 0..*
* basedOn ^short = "The ServiceRequest that initiated this encounter"
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest) 
* participant 0..*
* participant ^short = "List of participants involved in the encounter"
* participant.type 0..*
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (extensible)
* participant.period 0..1
* participant.individual 0..1 
* participant.individual only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/RelatedPerson)
* appointment only Reference(http://hl7.org/fhir/StructureDefinition/Appointment)
* period 0..1
* length 0..1
* reasonCode 0..*
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason (preferred)
* diagnosis 0..*
* diagnosis.condition 1..1 
* diagnosis.condition only Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Procedure)
* account 0..* 
* account only Reference(http://hl7.org/fhir/StructureDefinition/Account)
* serviceProvider 0..1 
* serviceProvider only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* partOf 0..1 
* partOf only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)