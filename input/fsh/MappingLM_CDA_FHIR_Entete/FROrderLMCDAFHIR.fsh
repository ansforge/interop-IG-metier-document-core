Instance: FROrderLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMOrder → FRCDAInFulfillmentOf → ServiceRequest"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMOrder\" et l'élément CDA \"inFulfillmentOf\"
 - Mapping 2 : entre le modèle métier \"FRLMOrder\" et la ressource FHIR \"ServiceRequest\" (référencée depuis Composition via l'extension basedOn)"""

* title = "Mapping Métier/CDA/FHIR : \"Prescription\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-inFulfillment-of"

// Élément racine
* group[=].element[+].code = #FRLMOrder
* group[=].element[=].target.code = #InFulfillmentOf
* group[=].element[=].target.display = "inFulfillmentOf"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant de la demande
* group[=].element[+].code = #FRLMOrder.orderId
* group[=].element[=].target.code = #InFulfillmentOf.order.id
* group[=].element[=].target.equivalence = #equivalent

// Accession Number
* group[=].element[+].code = #FRLMOrder.accessionNumber
* group[=].element[=].target.code = #InFulfillmentOf.order.ps3-20:accessionNumber
* group[=].element[=].target.equivalence = #equivalent

// Date et heure de la demande
* group[=].element[+].code = #FRLMOrder.orderDateAndTime
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter sa date."

// Personne/organisation à l'origine de la demande
* group[=].element[+].code = #FRLMOrder.orderPlacer
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son demandeur."

// Motif de la demande
* group[=].element[+].code = #FRLMOrder.orderReason
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son motif."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/ServiceRequest"

// Élément racine
* group[=].element[+].code = #FRLMOrder
* group[=].element[=].target.code = #ServiceRequest
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référencé depuis Composition.extension:basedOn (event-basedOn.value[x])."

// Identifiant de la demande
* group[=].element[+].code = #FRLMOrder.orderId
* group[=].element[=].target.code = #ServiceRequest.identifier
* group[=].element[=].target.equivalence = #equivalent

// Accession Number
* group[=].element[+].code = #FRLMOrder.accessionNumber
* group[=].element[=].target.code = #ServiceRequest.identifier
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Autre occurrence de ServiceRequest.identifier."

// Date et heure de la demande
* group[=].element[+].code = #FRLMOrder.orderDateAndTime
* group[=].element[=].target.code = #ServiceRequest.authoredOn
* group[=].element[=].target.equivalence = #equivalent

// Personne/organisation à l'origine de la demande
* group[=].element[+].code = #FRLMOrder.orderPlacer
* group[=].element[=].target.code = #ServiceRequest.requester
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "ServiceRequest.requester.resolve().ofType(PractitionerRole, Organization ou Patient)."

// Motif de la demande
* group[=].element[+].code = #FRLMOrder.orderReason
* group[=].element[=].target.code = #ServiceRequest.reasonCode
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "orderReason peut porter un CodeableConcept simple (porté par ServiceRequest.reasonCode) ou une référence FRLMCondition/FRLMObservation (portée alors par ServiceRequest.reasonReference)."
