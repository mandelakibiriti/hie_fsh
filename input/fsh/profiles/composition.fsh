Profile: Composition_ke_Profile
Parent: Composition
Id: Composition-ke-Profile
Title: "Composition_ke_Profile"
Description: "A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.)."

* identifier 1..1 MS 
* identifier ^definition = "A version-independent identifier for the Composition. This identifier stays constant as the composition is changed over time."
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/composition-status|4.0.1 (required)
* type 1..1 MS
* type ^definition = "Specifies the particular kind of composition (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the composition."
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (preferred)
* category 0..*
* category ^definition = "A categorization for the type of the composition - helps for indexing and searching. This may be implied by or derived from the code specified in the Composition Type."
* category from http://hl7.org/fhir/ValueSet/document-classcodes (example)
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Resource) 
* subject ^short = "Who and/or what the composition is about"
* encounter only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)
* date 1..1 MS
* author only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/Organization)
* title 1..1 MS
* attester 0..*
* custodian only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* relatesTo 0..*
* event 0..*
* event.code 0..*
* event.code from http://terminology.hl7.org/ValueSet/v3-ActCode (example)