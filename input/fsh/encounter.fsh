Resource: Encounter
Parent: DomainResource
Id: Encounter
Title: "Encounter"
Description: "An interaction between a patient and healthcare provider(s) for the purpose of providing healthcare service(s) or assessing the health status of a patient."

* identifier 0..* SU Identifier "Identifier(s) by which this encounter is known" "Identifier(s) by which this encounter is known."
* status 1..1 ?! SU code "planned | arrived | triaged | in-progress | onleave | finished | cancelled +" "planned | arrived | triaged | in-progress | onleave | finished | cancelled +."
* status from http://hl7.org/fhir/ValueSet/encounter-status|4.0.1 (required)
* statusHistory 0..* BackboneElement "List of past encounter statuses" "The status history permits the encounter resource to contain the status history without needing to read through the historical versions of the resource, or even have the server store them."
* class 1..1 SU Coding "Classification of patient encounter" "Concepts representing classification of patient encounter such as ambulatory (outpatient), inpatient, emergency, home health or others due to local variations."
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode (extensible)
* classHistory 0..* BackboneElement "List of past encounter classes" "The class history permits the tracking of the encounters transitions without needing to go  through the resource history.  This would be used for a case where an admission starts of as an emergency encounter, then transitions into an inpatient scenario. Doing this and not restarting a new encounter ensures that any lab/diagnostic results can more easily follow the patient and not require re-processing and not get lost or cancelled during a kind of discharge from emergency to inpatient."
* priority 0..1 CodeableConcept "Indicates the urgency of the encounter" "Indicates the urgency of the encounter."
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority (example)
* subject 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group) "The patient or group present at the encounter" "The patient or group present at the encounter."
* episodeOfCare 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/EpisodeOfCare) "Episode(s) of care that this encounter should be recorded against" "Where a specific encounter should be classified as a part of a specific episode(s) of care this field should be used. This association can facilitate grouping of related encounters together for a specific purpose, such as government reporting, issue tracking, association via a common problem.  The association is recorded on the encounter as these are typically created after the episode of care and grouped on entry rather than editing the episode of care to append another encounter to it (the episode of care could span years)."
* basedOn 0..* Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest) "The ServiceRequest that initiated this encounter" "The request this encounter satisfies (e.g. incoming referral or procedure request)."
* participant 0..* SU BackboneElement "List of participants involved in the encounter" "The list of people responsible for providing the service."
* participant.type 0..* SU CodeableConcept "Role of participant in encounter" "Role of participant in encounter."
* participant.type from http://hl7.org/fhir/ValueSet/encounter-participant-type (extensible)
* participant.period 0..1 Period "Period of time during the encounter that the participant participated" "The period of time that the specified participant participated in the encounter. These can overlap or be sub-sets of the overall encounter's period."
* participant.individual 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "Persons involved in the encounter other than the patient" "Persons involved in the encounter other than the patient."
* appointment 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Appointment) "The appointment that scheduled this encounter" "The appointment that scheduled this encounter."
* period 0..1 Period "The start and end time of the encounter" "The start and end time of the encounter."
* length 0..1 Duration "Quantity of time the encounter lasted (less time absent)" "Quantity of time the encounter lasted. This excludes the time during leaves of absence."
* reasonCode 0..* SU CodeableConcept "Coded reason the encounter takes place" "Reason the encounter takes place, expressed as a code. For admissions, this can be used for a coded admission diagnosis."
* reasonCode from http://hl7.org/fhir/ValueSet/encounter-reason (preferred)
* diagnosis 0..* SU BackboneElement "The list of diagnosis relevant to this encounter" "The list of diagnosis relevant to this encounter."
* diagnosis.condition 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Procedure) "The diagnosis or procedure relevant to the encounter" "Reason the encounter takes place, as specified using information from another resource. For admissions, this is the admission diagnosis. The indication will typically be a Condition (with other resources referenced in the evidence.detail), or a Procedure."
* account 0..* Reference(http://hl7.org/fhir/StructureDefinition/Account) "The set of accounts that may be used for billing for this Encounter" "The set of accounts that may be used for billing for this Encounter."
* serviceProvider 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Organization) "The organization (facility) responsible for this encounter" "The organization that is primarily responsible for this Encounter's services. This MAY be the same as the organization on the Patient record, however it could be different, such as if the actor performing the services was from an external organization (which may be billed seperately) for an external consultation.  Refer to the example bundle showing an abbreviated set of Encounters for a colonoscopy."
* partOf 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Another Encounter this encounter is part of" "Another Encounter of which this encounter is a part of (administratively or in time)."