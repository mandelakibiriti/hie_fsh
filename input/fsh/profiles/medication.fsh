Profile: Medication_ke_Profile
Parent: Medication
Id: Medication-ke-Profile
Title: "Medication_ke_Profile"
Description: "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."

* identifier 1..1 MS
* identifier ^short = "Business identifier for this medication"
* code 0..1
* code from http://hl7.org/fhir/ValueSet/medication-codes (example)
* amount 0..1 
* amount ^short = "Amount of drug in package"
* ingredient 0..*
* ingredient.item[x] 1..1
* ingredient.item[x] only Reference(http://hl7.org/fhir/StructureDefinition/Substance or http://hl7.org/fhir/StructureDefinition/Medication) 
* ingredient.item[x] ^definition = "The actual ingredient - either a substance (simple ingredient) or another medication of a medication."
* ingredient.isActive 0..1 
* ingredient.isActive only boolean
* ingredient.isActive ^short = "Active ingredient indicator"
* batch 0..1
* batch ^definition = "Information that only applies to packages (not products)."