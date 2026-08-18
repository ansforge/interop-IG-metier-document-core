Instance: FRServiceRequestLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMServiceRequest → FRCDADemandeDExamenOuDeSuivi / FRLMServiceRequest → FRServiceRequestDocument"
Description: "Mapping des éléments du modèle métier FRLMServiceRequest vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument."
* title = "Mapping Métier/CDA/FHIR : \"Demande d'examen ou de suivi\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi"
// Élément racine
* group[=].element[+].code = #FRLMServiceRequest
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDADemandeDExamenOuDeSuivi"
* group[=].element[=].target.equivalence = #equivalent
// Statut de la demande
* group[=].element[+].code = #FRLMServiceRequest.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Type de la demande
* group[=].element[+].code = #FRLMServiceRequest.code
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Quantité demandée
* group[=].element[+].code = #FRLMServiceRequest.quantity
* group[=].element[=].target.equivalence = #unmatched
// Localisation anatomique
* group[=].element[+].code = #FRLMServiceRequest.bodySite
* group[=].element[=].target.code = #Observation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Motif de la demande
* group[=].element[+].code = #FRLMServiceRequest.reason[x]
* group[=].element[=].target.equivalence = #unmatched
// Priorité de la demande
* group[=].element[+].code = #FRLMServiceRequest.priority
* group[=].element[=].target.code = #Observation.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// Informations pertinentes pour l'interprétation
* group[=].element[+].code = #FRLMServiceRequest.supportingInformation[x]
* group[=].element[=].target.code = #Observation.entryRelationship.observation
* group[=].element[=].target.equivalence = #inexact
* group[=].element[=].target.comment = "Le modèle métier FRLMServiceRequest.supportingInformation[x] correspond à la composante observation portée dans l'entrée CDA FRCDADemandeDExamenOuDeSuivi.entryRelationship.observation. Le mapping est inexact car le type de l'élément supportingInformation[x] peut être Observation, Condition, Procedure ou MedicationAdministration alors que le type de l'élément entryRelationship.observation est uniquement Observation."
// Prélèvement
* group[=].element[+].code = #FRLMServiceRequest.specimen
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent
// Consultation à l'origine
* group[=].element[+].code = #FRLMServiceRequest.encounter
* group[=].element[=].target.code = #Observation.entryRelationship.encounter
* group[=].element[=].target.equivalence = #equivalent
// Date ou période prévisionnelle
* group[=].element[+].code = #FRLMServiceRequest.occurrence[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMServiceRequest.patientInstructions
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document"
// Élément racine
* group[=].element[+].code = #FRLMServiceRequest
* group[=].element[=].target.code = #ServiceRequest
* group[=].element[=].target.display = "FRServiceRequestDocument"
* group[=].element[=].target.equivalence = #equivalent
// Statut de la demande
* group[=].element[+].code = #FRLMServiceRequest.header.status
* group[=].element[=].target.code = #ServiceRequest.status
* group[=].element[=].target.equivalence = #equivalent
// Type de la demande
* group[=].element[+].code = #FRLMServiceRequest.code
* group[=].element[=].target.code = #ServiceRequest.code
* group[=].element[=].target.equivalence = #equivalent
// Quantité demandée
* group[=].element[+].code = #FRLMServiceRequest.quantity
* group[=].element[=].target.code = #ServiceRequest.quantity
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMServiceRequest.bodySite
* group[=].element[=].target.code = #ServiceRequest.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Motif de la demande
* group[=].element[+].code = #FRLMServiceRequest.reason[x]
* group[=].element[=].target.code = #ServiceRequest.reasonCode
* group[=].element[=].target.equivalence = #equivalent
// Priorité de la demande
* group[=].element[+].code = #FRLMServiceRequest.priority
* group[=].element[=].target.code = #ServiceRequest.priority
* group[=].element[=].target.equivalence = #equivalent
// Informations pertinentes pour l'interprétation
* group[=].element[+].code = #FRLMServiceRequest.supportingInformation[x]
* group[=].element[=].target.code = #ServiceRequest.supportingInfo
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMServiceRequest.specimen
* group[=].element[=].target.code = #ServiceRequest.specimen
* group[=].element[=].target.equivalence = #equivalent
// Consultation à l'origine
* group[=].element[+].code = #FRLMServiceRequest.encounter
* group[=].element[=].target.code = #ServiceRequest.encounter
* group[=].element[=].target.equivalence = #equivalent
// Date ou période prévisionnelle
* group[=].element[+].code = #FRLMServiceRequest.occurrence[x]
* group[=].element[=].target.code = #ServiceRequest.occurrence[x]
* group[=].element[=].target.equivalence = #equivalent
// Instructions au patient
* group[=].element[+].code = #FRLMServiceRequest.patientInstructions
* group[=].element[=].target.code = #ServiceRequest.note
* group[=].element[=].target.equivalence = #equivalent