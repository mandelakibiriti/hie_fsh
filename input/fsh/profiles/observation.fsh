Profile: Observation_ke_Profile
Parent: Observation
Id: Observation-ke-Profile
Title: "Observation_ke_Profile"
Description: "Measurements and simple assertions made about a patient, device or other subject."

* identifier 1..1 MS
* identifier ^short = "Business identifier for this observation"
* basedOn 0..* 
* basedOn ^requirements = "Allows tracing of authorization for the event and tracking whether proposals/recommendations were acted upon."
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/CarePlan or http://hl7.org/fhir/StructureDefinition/DeviceRequest or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation or http://hl7.org/fhir/StructureDefinition/MedicationRequest or http://hl7.org/fhir/StructureDefinition/NutritionOrder or http://hl7.org/fhir/StructureDefinition/ServiceRequest) 
* partOf 0..* 
* partOf only Reference(http://hl7.org/fhir/StructureDefinition/MedicationAdministration or http://hl7.org/fhir/StructureDefinition/MedicationDispense or http://hl7.org/fhir/StructureDefinition/MedicationStatement or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Immunization or http://hl7.org/fhir/StructureDefinition/ImagingStudy) 
* partOf ^definition = "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure."
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/observation-status|4.0.1 (required)
* category 0..*
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred)
* code 1..1 MS
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* subject 0..1
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location)
* encounter 0..1 
* encounter only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)
* encounter ^definition =  "The healthcare event (e.g. a patient and healthcare provider interaction) during which this observation is made."
* effective[x] 0..1
* effective[x] only dateTime or Period or Timing or instant 
* effective[x] ^definition = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself."
* note 0..*
* bodySite 0..1
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* specimen 0..1 
* specimen only Reference(http://hl7.org/fhir/StructureDefinition/Specimen)
* specimen ^comment = "Should only be used if not implicit in code found in `Observation.code`.  Observations are not made on specimens themselves; they are made on a subject, but in many cases by the means of a specimen. Note that although specimens are often involved, they are not always tracked and reported explicitly. Also note that observation resources may be used in contexts that track the specimen explicitly (e.g. Diagnostic Report)."
* referenceRange 0..*
* referenceRange.type 0..1
* referenceRange.type from http://hl7.org/fhir/ValueSet/referencerange-meaning (preferred)
* component 0..* 
* component ^definition = "Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component.code 1..1 MS
* component.code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* component.value[x] 0..1 
* component.value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* component.dataAbsentReason 0..1
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)
* component.interpretation 0..*
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* component.referenceRange 0..*
* value[x] 0..1 
* value[x] only Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period
* value[x] ^comment = "An observation may have; 1)  a single value here, 2)  both a value and a set of related or component values,  or 3)  only a set of related or component values. If a value is present, the datatype for this element should be determined by Observation.code.  A CodeableConcept with just a text would be used instead of a string if the field was usually coded, or if the type associated with the Observation.code defines a coded value.  For additional guidance, see the [Notes section](observation.html#notes) below."
* value[x] ^requirements = "An observation exists to have a value, though it might not if it is in error, or if it represents a group of observations."