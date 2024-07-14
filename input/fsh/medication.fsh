Resource: Medication
Parent: DomainResource
Id: Medication
Title: "Medication"
Description: "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use."

* identifier 0..* SU Identifier "Business identifier for this medication" "Business identifier for this medication."
* code 0..1 SU CodeableConcept "Codes that identify this medication" "A code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems."
* code from http://hl7.org/fhir/ValueSet/medication-codes (example)
* amount 0..1 SU Ratio "Amount of drug in package" "Specific amount of the drug in the packaged product.  For example, when specifying a product that has the same strength (For example, Insulin glargine 100 unit per mL solution for injection), this attribute provides additional clarification of the package amount (For example, 3 mL, 10mL, etc.)."
* ingredient 0..* BackboneElement "Active or inactive ingredient" "Identifies a particular constituent of interest in the product."
* ingredient.item[x] 1..1 CodeableConcept or Reference(http://hl7.org/fhir/StructureDefinition/Substance or http://hl7.org/fhir/StructureDefinition/Medication) "The actual ingredient or content" "The actual ingredient - either a substance (simple ingredient) or another medication of a medication."
* ingredient.isActive 0..1 boolean "Active ingredient indicator" "Indication of whether this ingredient affects the therapeutic action of the drug."
* batch 0..1 BackboneElement "Details about packaged medications" "Information that only applies to packages (not products)."