Profile: ServiceRequest_ke_Profile
Parent: ServiceRequest
Id: ServiceRequest-ke-Profile
Title: "ServiceRequest_ke_Profile"
Description: "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."

* identifier 1..1 MS
* status 1..1 MS SU
* status from http://hl7.org/fhir/ValueSet/request-status|4.0.1 (required)
* category 0..*
* category from http://hl7.org/fhir/ValueSet/servicerequest-category (example)
* priority 0..1
* priority from http://hl7.org/fhir/ValueSet/request-priority|4.0.1 (required)
* doNotPerform 0..1 
* doNotPerform only boolean
* doNotPerform ^definition = "Set this to true if the record is saying that the service/procedure should NOT be performed."
* code 0..1
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* orderDetail 0..*
* orderDetail from http://hl7.org/fhir/ValueSet/servicerequest-orderdetail (example)
* subject 1..1 MS
* subject only Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Location or http://hl7.org/fhir/StructureDefinition/Device)
* encounter 0..1 
* encounter only Reference(http://hl7.org/fhir/StructureDefinition/Encounter)
* encounter ^alias[0] = "context"
* occurrence[x] 0..1 
* occurrence[x] only dateTime or Period or Timing
* authoredOn 0..1
* authoredOn only dateTime 
* authoredOn ^short = "Date request signed"
* requester 0..1 
* requester only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/Device)
* performer 0..* 
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/CareTeam or http://hl7.org/fhir/StructureDefinition/HealthcareService or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/RelatedPerson)
* performerType 0..1
* performerType from http://hl7.org/fhir/ValueSet/participant-role (example)
* locationCode 0..*
* locationCode from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (example)
* locationReference 0..* 
* locationReference only Reference(http://hl7.org/fhir/StructureDefinition/Location)
* reasonCode 0..*
* reasonCode from http://hl7.org/fhir/ValueSet/procedure-reason (example)
* reasonReference 0..* 
* reasonReference only Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/DiagnosticReport or http://hl7.org/fhir/StructureDefinition/DocumentReference)
* insurance 0..* 
* insurance only Reference(http://hl7.org/fhir/StructureDefinition/Coverage or http://hl7.org/fhir/StructureDefinition/ClaimResponse)
* specimen 0..* 
* specimen only Reference(http://hl7.org/fhir/StructureDefinition/Specimen)
* bodySite 0..*
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* note 0..*
* patientInstruction 0..1 
* patientInstruction only string 
* patientInstruction ^definition = "Instructions in terms that are understood by the patient or consumer."