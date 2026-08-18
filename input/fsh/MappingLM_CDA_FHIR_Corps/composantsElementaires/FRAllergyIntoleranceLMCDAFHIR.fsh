Instance: FRAllergyIntoleranceLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAllergyIntolerance → FRCDAAllergieOuHypersensibilite / FRLMAllergyIntolerance → FRAllergyIntoleranceDocument"
Description: "Mapping des éléments du modèle métier FRLMAllergyIntolerance vers le profil CDA FRCDAAllergieOuHypersensibilite, puis vers le profil FHIR FRAllergyIntoleranceDocument."

* title = "Mapping Métier/CDA/FHIR : \"Allergie ou Hypersensibilité\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite"

// Élément racine
* group[=].element[+].code = #FRLMAllergyIntolerance
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAllergyIntolerance.header.identifier
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.id
* group[=].element[=].target.equivalence = #equivalent

// Description narrative
* group[=].element[+].code = #FRLMAllergyIntolerance.note
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.text
* group[=].element[=].target.equivalence = #equivalent

// Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie
* group[=].element[+].code = #FRLMAllergyIntolerance.type
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.code
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMAllergyIntolerance.header.status
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutDuProbleme
* group[=].element[=].target.equivalence = #equivalent

// Date de début et de fin
* group[=].element[+].code = #FRLMAllergyIntolerance.period
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Date de début
* group[=].element[+].code = #FRLMAllergyIntolerance.period.onsetDate
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent

// Date de fin
* group[=].element[+].code = #FRLMAllergyIntolerance.period.endDate
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent

// Agent responsable
* group[=].element[+].code = #FRLMAllergyIntolerance.agentOrAllergen
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.participant
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme
* group[=].element[=].target.equivalence = #equivalent

// Agent responsable de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.agentOrAllergen
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.agentOrAllergen n'est pas mappé explicitement dans le profil CDA cible."

// Manifestation de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.manifestation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.manifestation est porté dans FRCDAProbleme, sans correspondance explicite définie ici."

// Sévérité de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.severity
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.severity est porté dans FRCDAProbleme, sans correspondance explicite définie ici."

// Période de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.period n'est pas mappé explicitement au niveau du profil CDA cible."

// Date de début de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period.onsetDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.period.onsetDate n'est pas mappé explicitement au niveau du profil CDA cible."

// Date de fin de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period.endDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.period.endDate n'est pas mappé explicitement au niveau du profil CDA cible."

// Certitude
* group[=].element[+].code = #FRLMAllergyIntolerance.certainty
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude
* group[=].element[=].target.equivalence = #equivalent

// Criticité
* group[=].element[+].code = #FRLMAllergyIntolerance.criticality
* group[=].element[=].target.code = #FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite
* group[=].element[=].target.equivalence = #equivalent

// Catégorie
* group[=].element[+].code = #FRLMAllergyIntolerance.category
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "La catégorie (food|medication|environment|biologic) n'est pas portée explicitement dans le profil CDA cible."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-allergy-intolerance-document"

// Élément racine
* group[=].element[+].code = #FRLMAllergyIntolerance
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMAllergyIntolerance.header.identifier
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

// Description narrative
* group[=].element[+].code = #FRLMAllergyIntolerance.note
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.note
* group[=].element[=].target.equivalence = #equivalent

// Type d'allergie / hypersensibilité non allergique / intolérance / idiosyncrasie
* group[=].element[+].code = #FRLMAllergyIntolerance.type
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.type
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMAllergyIntolerance.header.status
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.clinicalStatus
* group[=].element[=].target.equivalence = #equivalent

// Agent responsable
* group[=].element[+].code = #FRLMAllergyIntolerance.agentOrAllergen
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Catégorie
* group[=].element[+].code = #FRLMAllergyIntolerance.category
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.category
* group[=].element[=].target.equivalence = #equivalent

// Date de début et de fin
* group[=].element[+].code = #FRLMAllergyIntolerance.period
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.onsetPeriod
* group[=].element[=].target.equivalence = #equivalent

// Date de début
* group[=].element[+].code = #FRLMAllergyIntolerance.period.onsetDate
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.onsetPeriod.start
* group[=].element[=].target.equivalence = #equivalent

// Date de fin
* group[=].element[+].code = #FRLMAllergyIntolerance.period.endDate
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.onsetPeriod.end
* group[=].element[=].target.equivalence = #equivalent

// Réaction observée
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction
* group[=].element[=].target.equivalence = #equivalent

// Agent responsable de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.agentOrAllergen
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.substance
* group[=].element[=].target.equivalence = #equivalent

// Manifestation
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.manifestation
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.manifestation
* group[=].element[=].target.equivalence = #equivalent

// Certitude
* group[=].element[+].code = #FRLMAllergyIntolerance.certainty
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.verificationStatus
* group[=].element[=].target.equivalence = #equivalent

// Criticité
* group[=].element[+].code = #FRLMAllergyIntolerance.criticality
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.criticality
* group[=].element[=].target.equivalence = #equivalent

// Sévérité de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.severity
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.severity
* group[=].element[=].target.equivalence = #equivalent

// Période de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.onset
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Le modèle métier porte une période (début/fin), alors que FHIR reaction.onset est un seul instant dateTime."

// Date de début de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period.onsetDate
* group[=].element[=].target.code = #FRAllergyIntoleranceDocument.reaction.onset
* group[=].element[=].target.equivalence = #equivalent

// Date de fin de la réaction
* group[=].element[+].code = #FRLMAllergyIntolerance.reaction.period.endDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Le sous-élément reaction.period.endDate n'est pas mappé explicitement dans le profil FHIR cible. FHIR reaction.onset ne permet pas de représenter explicitement une date de fin."
