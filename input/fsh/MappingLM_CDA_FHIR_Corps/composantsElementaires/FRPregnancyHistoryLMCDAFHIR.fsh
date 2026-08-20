Instance: FRPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRObservationPregnancyHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-de-la-grossesse"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.equivalence = #equivalent

// Identifiant de l'entrée
* group[=].element[+].code = #FRLMPregnancyHistory.header.identifier
* group[=].element[=].target.code = #Organizer.id
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMPregnancyHistory.header.status
* group[=].element[=].target.code = #Organizer.statusCode
* group[=].element[=].target.equivalence = #equivalent

// Sujet de l'observation (si différent du patient)
* group[=].element[+].code = #FRLMPregnancyHistory.directSubject[x]
* group[=].element[=].target.code = #Organizer.subject
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #Organizer.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode utilisée
* group[=].element[+].code = #FRLMPregnancyHistory.method
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la méthode au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."

// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #Organizer.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Informations relatives à la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.result
* group[=].element[=].target.code = #Organizer.component:frObservationSurLaGrossesse
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
* group[=].element[=].target.code = #Organizer.component:frNaissance
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
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-history-document"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyHistory
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.equivalence = #equivalent

// Identifiant de l'entrée
* group[=].element[+].code = #FRLMPregnancyHistory.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMPregnancyHistory.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent

// Sujet de l'observation (si différent du patient)
* group[=].element[+].code = #FRLMPregnancyHistory.directSubject[x]
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyHistory.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode utilisée
* group[=].element[+].code = #FRLMPregnancyHistory.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent

// Période de la grossesse
* group[=].element[+].code = #FRLMPregnancyHistory.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent

// Valeur du résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.value[x]
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.dataAbsentReason
* group[=].element[=].target.code = #Observation.dataAbsentReason
* group[=].element[=].target.equivalence = #equivalent

// Incertitude associée au résultat
* group[=].element[+].code = #FRLMPregnancyHistory.result.uncertainty
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ dédié à l'incertitude du résultat dans FRObservationPregnancyHistoryDocument."

// Interprétation du résultat
* group[=].element[+].code = #FRLMPregnancyHistory.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMPregnancyHistory.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent

// Composant détaillé de l'observation
* group[=].element[+].code = #FRLMPregnancyHistory.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent

// Observation ou examen source dont dérive cette information
* group[=].element[+].code = #FRLMPregnancyHistory.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #equivalent

// Observations associées
* group[=].element[+].code = #FRLMPregnancyHistory.hasMember[x]
* group[=].element[=].target.code = #Observation.hasMember
* group[=].element[=].target.equivalence = #equivalent