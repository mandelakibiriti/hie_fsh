Resource: Observation
Parent: DomainResource
Id: Observation
Title: "Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."

* identifier 0..* SU Identifier "Business Identifier for observation" "A unique identifier assigned to this observation."
* basedOn 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/CarePlan or http://hl7.org/fhir/StructureDefinition/DeviceRequest or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation or http://hl7.org/fhir/StructureDefinition/MedicationRequest or http://hl7.org/fhir/StructureDefinition/NutritionOrder or http://hl7.org/fhir/StructureDefinition/ServiceRequest) "Fulfills plan, proposal or order" "A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed."
* partOf 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/MedicationAdministration or http://hl7.org/fhir/StructureDefinition/MedicationDispense or http://hl7.org/fhir/StructureDefinition/MedicationStatement or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Immunization or http://hl7.org/fhir/StructureDefinition/ImagingStudy) "Part of referenced event" "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure."
* status 1..1 ?! SU code "registered | preliminary | final | amended +" "The status of the result value."
* status from http://hl7.org/fhir/ValueSet/observation-status|4.0.1 (required)
* category 0..* CodeableConcept "Classification of  type of observation" "A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred)
* code 1..1 SU CodeableConcept "Type of observation (code / type)" "Describes what was observed. Sometimes this is called the observation \"name\"."
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* subject 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location) "Who and/or what the observation is about" "The patient, or group of patients, location, or device this observation is about and into whose record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* encounter 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Healthcare event during which this observation is made" "The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made."
* effective[x] 0..1 SU dateTime or Period or Timing or instant "Clinically relevant time/time-period for observation" "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself."
* note 0..* Annotation "Comments about the observation" "Comments about the observation or the results."
* bodySite 0..1 CodeableConcept "Observed body part" "Indicates the site on the subject's body where the observation was made (i.e. the target site)."
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* specimen 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Specimen) "Specimen used for this observation" "The specimen that was used when this observation was made."
* specimen ^comment = "Should only be used if not implicit in code found in `Observation.code`.  Observations are not made on specimens themselves; they are made on a subject, but in many cases by the means of a specimen. Note that although specimens are often involved, they are not always tracked and reported explicitly. Also note that observation resources may be used in contexts that track the specimen explicitly (e.g. Diagnostic Report)."
* referenceRange 0..* BackboneElement "Provides guide for interpretation" "Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an \"OR\".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used."
* referenceRange.type 0..1 CodeableConcept "Reference range qualifier" "Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range."
* referenceRange.type from http://hl7.org/fhir/ValueSet/referencerange-meaning (preferred)
* component 0..* SU BackboneElement "Component results" "Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component.code 1..1 SU CodeableConcept "Type of component observation (code / type)" "Describes what was observed. Sometimes this is called the observation \"code\"."
* component.code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* component.value[x] 0..1 SU Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period "Actual component result" "The information determined as a result of making the observation, if the information has a simple value."
* component.dataAbsentReason 0..1 CodeableConcept "Why the component result is missing" "Provides a reason why the expected value in the element Observation.component.value[x] is missing."
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)
* component.interpretation 0..* CodeableConcept "High, low, normal, etc." "A categorical assessment of an observation value.  For example, high, low, normal."
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* component.referenceRange 0..* contentReference #Observation.referenceRange "Provides guide for interpretation of component result" "Guidance on how to interpret the value by comparison to a normal or recommended range."