Instance: FRPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRObservationPregnancyHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-de-la-grossesse"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target.equivalence = #equivalent

// Identifiant de l'entrée
* group[=].element[+].code = #FRLMPregnancyHistory.header.identifier
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.id
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMPregnancyHistory.header.status
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Sujet de l'observation (si différent du patient)
* group[=].element[+].code = #FRLMPregnancyHistory.directSubject[x]
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.subject
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode utilisée
* group[=].element[+].code = #FRLMPregnancyHistory.method
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la méthode au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Informations relatives à la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.result
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.component:frObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent

// Interprétation du résultat
* group[=].element[+].code = #FRLMPregnancyHistory.interpretation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à l'interprétation au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Commentaire
* group[=].element[+].code = #FRLMPregnancyHistory.note
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié au commentaire au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Composant détaillé de l'observation
* group[=].element[+].code = #FRLMPregnancyHistory.component
* group[=].element[=].target.code = #FRCDAHistoriqueDeLaGrossesse.component:frNaissance
* group[=].element[=].target.equivalence = #equivalent

// Observation ou examen source dont dérive cette information
* group[=].element[+].code = #FRLMPregnancyHistory.derivedFrom[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la traçabilité de la source au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Observations associées
* group[=].element[+].code = #FRLMPregnancyHistory.hasMember[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié aux observations associées au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-history-document"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant de l'entrée
* group[=].element[+].code = #FRLMPregnancyHistory.header.identifier
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMPregnancyHistory.header.status
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.status
* group[=].element[=].target.equivalence = #equivalent

// Sujet de l'observation (si différent du patient)
* group[=].element[+].code = #FRLMPregnancyHistory.directSubject[x]
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.focus
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode utilisée
* group[=].element[+].code = #FRLMPregnancyHistory.method
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.method
* group[=].element[=].target.equivalence = #equivalent

// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent

// Valeur du résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.value[x]
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.dataAbsentReason
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.dataAbsentReason
* group[=].element[=].target.equivalence = #equivalent

// Incertitude associée au résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.uncertainty
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ dédié à l'incertitude du résultat dans FRObservationPregnancyHistoryDocument."

// Interprétation du résultat
* group[=].element[+].code = #FRLMPregnancyHistory.interpretation
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMPregnancyHistory.note
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.note
* group[=].element[=].target.equivalence = #equivalent

// Composant détaillé de l'observation
* group[=].element[+].code = #FRLMPregnancyHistory.component
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.component
* group[=].element[=].target.equivalence = #equivalent

// Observation ou examen source dont dérive cette information
* group[=].element[+].code = #FRLMPregnancyHistory.derivedFrom[x]
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.derivedFrom
* group[=].element[=].target.equivalence = #equivalent

// Observations associées
* group[=].element[+].code = #FRLMPregnancyHistory.hasMember[x]
* group[=].element[=].target.code = #FRObservationPregnancyHistoryDocument.hasMember
* group[=].element[=].target.equivalence = #equivalent