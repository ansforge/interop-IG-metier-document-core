Instance: FRSectionPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSectionPregnancyHistory → FRCDAHistoriqueDesGrossesses / FRLMSectionPregnancyHistory → FRCompositionDocument.section:sectionPregnancyHistory"
Description: "Mapping des éléments du modèle métier FRLMSectionPregnancyHistory vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:sectionPregnancyHistory."
* title = "Mapping Métier/CDA/FHIR : \"Historique des grossesses\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-grossesses"
// élément racine
* group[=].element[+].code = #FRLMSectionPregnancyHistory
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.codeSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.titleSection
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.description
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse ou Entrée Historique des grossesses
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory
* group[=].element[=].target[+].code = #FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse
* group[=].element[=].target[=].equivalence = #equivalent
// Commentaire de la section : aucune cible directe
* group[=].element[+].code = #FRLMSectionPregnancyHistory.note
* group[=].element[=].target[+].equivalence = #unmatched

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-pregnancy-history"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMSectionPregnancyHistory
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory.entry:FRObservationPregnancyDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Historique des grossesses
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPregnancyHistory.entry:FRPregnancyHistoryDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Commentaire de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.note
* group[=].element[=].target[+].code  = #FRCompositionDocument.section:sectionPregnancyHistory.extension:section-note 
* group[=].element[=].target[=].equivalence = #equivalent