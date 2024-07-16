Profile: Condition_ke_Profile
Parent: Condition
Id: Condition-ke-Profile
Title: "Condition_ke_Profile"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."

* identifier 1..1 MS
* identifier ^short = "Business identifier for this condition"
* category 0..*
* category from http://hl7.org/fhir/ValueSet/condition-category (extensible)
* severity 0..1
* severity from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* code 0..1
* code from http://hl7.org/fhir/ValueSet/condition-code (example)
* bodySite 0..*
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* subject 1..1 
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group)
* encounter 0..1 
* encounter only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)
* onset[x] 0..1 
* onset[x] only dateTime or Age or Period or Range or string
* abatement[x] 0..1 
* abatement[x] only dateTime or Age or Period or Range or string
* note 0..* 
* note ^short = "Additional information about the Condition"