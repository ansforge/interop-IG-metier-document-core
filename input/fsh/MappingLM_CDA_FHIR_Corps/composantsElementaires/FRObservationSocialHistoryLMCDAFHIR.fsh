Instance: FRObservationSocialHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationSocialHistory → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMObservationSocialHistory vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument."
* name = "FRObservationSocialHistoryLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationSocialHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-habitus-mode-de-vie"
// Élément racine
* group[=].element[+].code = #FRLMObservationSocialHistory
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAHabitusModeDeVie"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Commentaire / note
* group[=].element[+].code = #FRLMObservationSocialHistory.note
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR (modèle métier → FHIR)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationSocialHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-social-history-document"
// Élément racine
* group[=].element[+].code = #FRLMObservationSocialHistory
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationSocialHistoryDocument"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// Date de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservationSocialHistory.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Commentaire / note
* group[=].element[+].code = #FRLMObservationSocialHistory.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
