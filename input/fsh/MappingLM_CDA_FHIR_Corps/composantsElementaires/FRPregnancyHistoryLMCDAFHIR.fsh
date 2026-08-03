Instance: FRPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRPregnancyHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Historique de la grossesse \""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse"
// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMPregnancyHistory.header.status
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent
//subject
* group[=].element[+].code = #FRLMPregnancyHistory.directSubject[x]
* group[=].element[=].target.equivalence = #unmatched
// Type
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent
// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent  
// Informations relatives à la grossesse 
* group[=].element[+].code = #FRLMPregnancyHistory.result
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent
// Composant detaillé de l'observation 
* group[=].element[+].code = #FRLMPregnancyHistory.component
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance
* group[=].element[=].target.equivalence = #equivalent
//Observation ou examen source dont derive cette information
* group[=].element[+].code = #FRLMPregnancyHistory.derivedFrom[x]
* group[=].element[=].target.equivalence = #unmatched
// Observations associées
* group[=].element[+].code = #FRLMPregnancyHistory.hasMember[x] 
* group[=].element[=].target.equivalence = #unmatched

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-pregnancy-history-document"
// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #FRPregnancyHistoryDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'entrée  
* group[=].element[+].code = #FRLMPregnancyHistory.header.identifier
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Type d'entrée
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Informations relatives à la grossesse 
* group[=].element[+].code = #FRLMPregnancyHistory.result
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.hasMember:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent
// // Composant detaillé de l'observation 
* group[=].element[+].code = #FRLMPregnancyHistory.component
* group[=].element[=].target.code = #FRPregnancyHistoryDocument.component
* group[=].element[=].target.equivalence = #equivalent