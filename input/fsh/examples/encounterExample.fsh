Instance: EncounterExample
InstanceOf: Encounter_ke_profile
Description: "An example of a patient"
* identifier 
  * id = "1"
* status = #completed
* statusHistory.status = #finished
* statusHistory.period.start = "2024-07-18"
* statusHistory.period.end = "2024-07-18"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EL "elective"
 // Reference to Patient: 1
* subject = Reference(cfsb1721289869981)
 // Reference to EpisodeOfCare: Referral
* episodeOfCare = Reference(cfsb1721289918097)
 // Reference to ServiceRequest: Lab Test
* basedOn = Reference(cfsb1721289945109)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant.period.start = "2024-07-18"
* participant.period.end = "2024-07-18"
// Reference to Practitioner: Lab Technologist
* participant.individual = Reference(cfsb1721290101953)
// Reference to Condition: Malaria
* diagnosis.condition = Reference(cfsb1721290196789)
* diagnosis.use = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
 // Reference to Account: SHACode
* account = Reference(cfsb1721290250508)
 // Reference to Organization: Metropolitan Hospital
* serviceProvider = Reference(cfsb1721290296579)
 // Reference to Encounter: Another Encounter
* partOf = Reference(cfsb1721290330279)
