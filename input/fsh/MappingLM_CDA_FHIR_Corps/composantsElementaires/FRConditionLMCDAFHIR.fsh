Instance: FRConditionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMCondition → FRCDAProbleme / FRLMCondition → FRConditionDocument"
Description: "Mapping des éléments du modèle métier FRLMCondition vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument."

* title = "Mapping Métier/CDA/FHIR : \"Problème\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-condition"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme"

// Élément racine
* group[=].element[+].code = #FRLMCondition
* group[=].element[=].target.code = #FRCDAProbleme
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMCondition.header.identifier
* group[=].element[=].target.code = #FRCDAProbleme.id
* group[=].element[=].target.equivalence = #equivalent

// Type d'observation
* group[=].element[+].code = #FRLMCondition.type
* group[=].element[=].target.code = #FRCDAProbleme.code
* group[=].element[=].target.equivalence = #equivalent

// Problème observé
* group[=].element[+].code = #FRLMCondition.problem
* group[=].element[=].target.code = #FRCDAProbleme.value
* group[=].element[=].target.equivalence = #equivalent

// Période
* group[=].element[+].code = #FRLMCondition.period
* group[=].element[=].target.code = #FRCDAProbleme.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// Date de début du problème
* group[=].element[+].code = #FRLMCondition.period.onsetDate
* group[=].element[=].target.code = #FRCDAProbleme.effectiveTime.low
* group[=].element[=].target.equivalence = #equivalent

// Date de fin du problème
* group[=].element[+].code = #FRLMCondition.period.endDate
* group[=].element[=].target.code = #FRCDAProbleme.effectiveTime.high
* group[=].element[=].target.equivalence = #equivalent

// Statut du problème
* group[=].element[+].code = #FRLMCondition.header.status
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frStatutDuProbleme
* group[=].element[=].target.equivalence = #equivalent

// Sévérité
* group[=].element[+].code = #FRLMCondition.severity
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frSeverite
* group[=].element[=].target.equivalence = #equivalent

// Certitude
* group[=].element[+].code = #FRLMCondition.diagnosisAssertionStatus
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frCertitude
* group[=].element[=].target.equivalence = #equivalent

// Statut clinique du patient
* group[=].element[+].code = #FRLMCondition.clinicalStatus
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient
* group[=].element[=].target.equivalence = #equivalent

// Localisation anatomique
* group[=].element[+].code = #FRLMCondition.bodySite
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite de bodySite dans le profil CDA FRCDAProbleme."

// Stade/Grade
* group[=].element[+].code = #FRLMCondition.stage
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite de stage dans le profil CDA FRCDAProbleme."

// Document référencé
* group[=].element[+].code = #FRLMCondition.reference
* group[=].element[=].target.code = #FRCDAProbleme.reference.externalDocument.text.reference
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMCondition.note
* group[=].element[=].target.code = #FRCDAProbleme.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-condition"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document"

// Élément racine
* group[=].element[+].code = #FRLMCondition
* group[=].element[=].target.code = #FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMCondition.header.identifier
* group[=].element[=].target.code = #FRConditionDocument.identifier
* group[=].element[=].target.equivalence = #equivalent

// Type d'observation
* group[=].element[+].code = #FRLMCondition.type
* group[=].element[=].target.code = #FRConditionDocument.category
* group[=].element[=].target.equivalence = #equivalent

// Problème observé
* group[=].element[+].code = #FRLMCondition.problem
* group[=].element[=].target.code = #FRConditionDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Statut du problème
* group[=].element[+].code = #FRLMCondition.header.status
* group[=].element[=].target.code = #FRConditionDocument.clinicalStatus
* group[=].element[=].target.equivalence = #equivalent

// Période
* group[=].element[+].code = #FRLMCondition.period
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "La période source est portée par deux éléments FHIR distincts: onsetDateTime et abatementDateTime."

// Date de début du problème
* group[=].element[+].code = #FRLMCondition.period.onsetDate
* group[=].element[=].target.code = #FRConditionDocument.onsetDateTime
* group[=].element[=].target.equivalence = #equivalent

// Date de fin du problème
* group[=].element[+].code = #FRLMCondition.period.endDate
* group[=].element[=].target.code = #FRConditionDocument.abatementDateTime
* group[=].element[=].target.equivalence = #equivalent

// Sévérité
* group[=].element[+].code = #FRLMCondition.severity
* group[=].element[=].target.code = #FRConditionDocument.severity
* group[=].element[=].target.equivalence = #equivalent

// Certitude
* group[=].element[+].code = #FRLMCondition.diagnosisAssertionStatus
* group[=].element[=].target.code = #FRConditionDocument.verificationStatus
* group[=].element[=].target.equivalence = #equivalent

// Statut clinique du patient
* group[=].element[+].code = #FRLMCondition.clinicalStatus
* group[=].element[=].target.code = #FRConditionDocument.stage.summary
* group[=].element[=].target.equivalence = #equivalent

// Localisation anatomique
* group[=].element[+].code = #FRLMCondition.bodySite
* group[=].element[=].target.code = #FRConditionDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent

// Stade/Grade
* group[=].element[+].code = #FRLMCondition.stage
* group[=].element[=].target.code = #FRConditionDocument.stage.summary
* group[=].element[=].target.equivalence = #equivalent

// Document référencé
* group[=].element[+].code = #FRLMCondition.reference
* group[=].element[=].target.code = #FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.content.attachment.url
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMCondition.note
* group[=].element[=].target.code = #FRConditionDocument.note
* group[=].element[=].target.equivalence = #equivalent