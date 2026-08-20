Instance: FRObservationSocialHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationSocialHistory → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationSocialHistory vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-social-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-habitus-mode-de-vie"
// Élément racine
* group[=].element[+].code = #FRLMObservationSocialHistory
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.header.status
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.observationDate[x]
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.type
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.code
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.result
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.value
* group[=].element[=].target.equivalence = #equivalent
// Commentaire / note
* group[=].element[+].code = #FRLMObservationSocialHistory.note
* group[=].element[=].target.code = #FRCDAHabitusModeDeVie.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR (modèle métier → FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-social-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-social-history-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationSocialHistory
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.header.status
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.observationDate[x]
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.effectiveDateTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.type
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.result
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.valueCodeableConcept
* group[=].element[=].target.equivalence = #equivalent
// Commentaire / note
* group[=].element[+].code = #FRLMObservationSocialHistory.note
* group[=].element[=].target.code = #FRObservationSocialHistoryDocument.note
* group[=].element[=].target.equivalence = #equivalent
