Resource: ServiceRequest
Parent: DomainResource
Id: ServiceRequest
Title: "ServiceRequest"
Description: "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed."

* identifier 0..* SU Identifier "Identifiers assigned to this order" "Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller."
* status 1..1 ?! SU code "draft | active | on-hold | revoked | completed | entered-in-error | unknown" "The status of the order."
* status from http://hl7.org/fhir/ValueSet/request-status|4.0.1 (required)
* category 0..* SU CodeableConcept "Classification of service" "A code that classifies the service for searching, sorting and display purposes (e.g. \"Surgical Procedure\")."
* category from http://hl7.org/fhir/ValueSet/servicerequest-category (example)
* priority 0..1 SU code "routine | urgent | asap | stat" "Indicates how quickly the ServiceRequest should be addressed with respect to other requests."
* priority from http://hl7.org/fhir/ValueSet/request-priority|4.0.1 (required)
* doNotPerform 0..1 ?! SU boolean "True if service/procedure should not be performed" "Set this to true if the record is saying that the service/procedure should NOT be performed."
* code 0..1 SU CodeableConcept "What is being requested/ordered" "A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested."
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* orderDetail 0..* SU CodeableConcept "Additional order information" "Additional details and instructions about the how the services are to be delivered.   For example, and order for a urinary catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require additional instructions specifying how the bandage should be applied."
* orderDetail from http://hl7.org/fhir/ValueSet/servicerequest-orderdetail (example)
* subject 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Location or http://hl7.org/fhir/StructureDefinition/Device) "Individual or Entity the service is ordered for" "On whom or what the service is to be performed. This is usually a human patient, but can also be requested on animals, groups of humans or animals, devices such as dialysis machines, or even locations (typically for environmental scans)."
* encounter 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Encounter in which the request was created" "An encounter that provides additional information about the healthcare context in which this request is made."
* encounter ^alias[0] = "context"
* occurrence[x] 0..1 SU dateTime or Period or Timing "When service should occur" "The date/time at which the requested service should occur."
* authoredOn 0..1 SU dateTime "Date request signed" "When the request transitioned to being actionable."
* requester 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson or http://hl7.org/fhir/StructureDefinition/Device) "Who/what is requesting service" "The individual who initiated the request and has responsibility for its activation."
* performer 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/CareTeam or http://hl7.org/fhir/StructureDefinition/HealthcareService or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "Requested performer" "The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc."
* performerType 0..1 SU CodeableConcept "Performer role" "Desired type of performer for doing the requested service."
* performerType from http://hl7.org/fhir/ValueSet/participant-role (example)
* locationCode 0..* SU CodeableConcept "Requested location" "The preferred location(s) where the procedure should actually happen in coded or free text form. E.g. at home or nursing day care center."
* locationCode from http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType (example)
* locationReference 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Location) "Requested location" "A reference to the the preferred location(s) where the procedure should actually happen. E.g. at home or nursing day care center."
* reasonCode 0..* SU CodeableConcept "Explanation/Justification for procedure or service" "An explanation or justification for why this service is being requested in coded or textual form.   This is often for billing purposes.  May relate to the resources referred to in `supportingInfo`."
* reasonCode from http://hl7.org/fhir/ValueSet/procedure-reason (example)
* reasonReference 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Condition or http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/DiagnosticReport or http://hl7.org/fhir/StructureDefinition/DocumentReference) "Explanation/Justification for service or service" "Indicates another resource that provides a justification for why this service is being requested.   May relate to the resources referred to in `supportingInfo`."
* insurance 0..* Reference(http://hl7.org/fhir/StructureDefinition/Coverage or http://hl7.org/fhir/StructureDefinition/ClaimResponse) "Associated insurance coverage" "Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be needed for delivering the requested service."
* specimen 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Specimen) "Procedure Samples" "One or more specimens that the laboratory procedure will use."
* bodySite 0..* SU CodeableConcept "Location on Body" "Anatomic location where the procedure should be performed. This is the target site."
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* note 0..* Annotation "Comments" "Any other notes and comments made about the service request. For example, internal billing notes."
* patientInstruction 0..1 SU string "Patient or consumer-oriented instructions" "Instructions in terms that are understood by the patient or consumer."
* relevantHistory 0..* Reference(http://hl7.org/fhir/StructureDefinition/Provenance) "Request provenance" "Key events in the history of the request."
* relevantHistory ^comment = "This might not include provenances for all versions of the request â€“ only those deemed â€œrelevantâ€� or important.\rThis SHALL NOT include the Provenance associated with this current version of the resource.  (If that provenance is deemed to be a â€œrelevantâ€� change, it will need to be added as part of a later update.  Until then, it can be queried directly as the Provenance that points to this version using _revinclude\rAll Provenances should have some historical version of this Request as their subject."