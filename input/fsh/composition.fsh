Resource: Composition
Parent: DomainResource
Id: Composition
Title: "Composition"
Description: "A set of healthcare-related information that is assembled together into a single logical package that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. A Composition defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type=document, and any other resources referenced from Composition must be included as subsequent entries in the Bundle (for example Patient, Practitioner, Encounter, etc.)."

* identifier 0..1 SU Identifier "Version-independent identifier for the Composition" "A version-independent identifier for the Composition. This identifier stays constant as the composition is changed over time."
* status 1..1 ?! SU code "preliminary | final | amended | entered-in-error" "The workflow/clinical status of this composition. The status is a marker for the clinical standing of the document."
* status from http://hl7.org/fhir/ValueSet/composition-status|4.0.1 (required)
* type 1..1 SU CodeableConcept "Kind of composition (LOINC if possible)" "Specifies the particular kind of composition (e.g. History and Physical, Discharge Summary, Progress Note). This usually equates to the purpose of making the composition."
* type from http://hl7.org/fhir/ValueSet/doc-typecodes (preferred)
* category 0..* SU CodeableConcept "Categorization of Composition" "A categorization for the type of the composition - helps for indexing and searching. This may be implied by or derived from the code specified in the Composition Type."
* category from http://hl7.org/fhir/ValueSet/document-classcodes (example)
* subject 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Resource) "Who and/or what the composition is about" "Who or what the composition is about. The composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure)."
* encounter 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Context of the Composition" "Describes the clinical encounter or type of care this documentation is associated with."
* date 1..1 SU dateTime "Composition editing time" "The composition editing time, when the composition was last logically changed by the author."
* author 1..* SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/Organization) "Who and/or what authored the composition" "Identifies who is responsible for the information in the composition, not necessarily who typed it in."
* title 1..1 SU string "Human Readable name/title" "Official human-readable label for the composition."
* attester 0..* BackboneElement "Attests to accuracy of composition" "A participant who has attested to the accuracy of the composition/document."
* custodian 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Organization) "Organization which maintains the composition" "Identifies the organization or group who is responsible for ongoing maintenance of and access to the composition/document information."
* relatesTo 0..* BackboneElement "Relationships to other compositions/documents" "Relationships that this composition has with other compositions or documents that already exist."
* event 0..* SU BackboneElement "The clinical service(s) being documented" "The clinical service, such as a colonoscopy or an appendectomy, being documented."
* event.code 0..* SU CodeableConcept "Code(s) that apply to the event being documented" "This list of codes represents the main clinical acts, such as a colonoscopy or an appendectomy, being documented. In some cases, the event is inherent in the typeCode, such as a \"History and Physical Report\" in which the procedure being documented is necessarily a \"History and Physical\" act."
* event.code from http://terminology.hl7.org/ValueSet/v3-ActCode (example)