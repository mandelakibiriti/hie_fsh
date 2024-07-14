Resource: Condition
Parent: DomainResource
Id: Condition
Title: "Condition"
Description: "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern."

* identifier 0..* SU Identifier "External Ids for this condition" "Business identifiers assigned to this condition by the performer or other systems which remain constant as the resource is updated and propagates from server to server."

* category 0..* CodeableConcept "problem-list-item | encounter-diagnosis" "A category assigned to the condition."
* category from http://hl7.org/fhir/ValueSet/condition-category (extensible)
* severity 0..1 CodeableConcept "Subjective severity of condition" "A subjective assessment of the severity of the condition as evaluated by the clinician."
* severity from http://hl7.org/fhir/ValueSet/condition-severity (preferred)
* code 0..1 SU CodeableConcept "Identification of the condition, problem or diagnosis" "Identification of the condition, problem or diagnosis."
* code from http://hl7.org/fhir/ValueSet/condition-code (example)
* bodySite 0..* SU CodeableConcept "Anatomical location, if relevant" "The anatomical location where this condition manifests itself."
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* subject 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group) "Who has the condition?" "Indicates the patient or group who the condition record is associated with."
* encounter 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Encounter created as part of" "The Encounter during which this Condition was created or to which the creation of this record is tightly associated."
* onset[x] 0..1 SU dateTime or Age or Period or Range or string "Estimated or actual date,  date-time, or age" "Estimated or actual date or date-time  the condition began, in the opinion of the clinician."
* abatement[x] 0..1 dateTime or Age or Period or Range or string "When in resolution/remission" "The date or estimated date that the condition resolved or went into remission. This is called \"abatement\" because of the many overloaded connotations associated with \"remission\" or \"resolution\" - Conditions are never really resolved, but they can abate."
* note 0..* Annotation "Additional information about the Condition" "Additional information about the Condition. This is a general notes/comments entry  for description of the Condition, its diagnosis and prognosis."