Instance: FRSectionPregnancyHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSectionPregnancyHistory → FRCDAHistoriqueDesGrossesses / FRLMSectionPregnancyHistory → FRCompositionDocument.section:sectionPregnancyHistory"
Description: "Mapping des éléments du modèle métier FRLMSectionPregnancyHistory vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:sectionPregnancyHistory."
* name = "FRSectionPregnancyHistoryLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Historique des grossesses\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-grossesses"
// élément racine
* group[=].element[+].code = #FRLMSectionPregnancyHistory
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAHistoriqueDesGrossesses"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyStatus
* group[=].element[=].target[+].code = #Section.entry:frObservationSurLaGrossesse.observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Historique des grossesses
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyHistory
* group[=].element[=].target[+].code = #Section.entry:frHistoriqueDeLaGrossesse.organizer
* group[=].element[=].target[=].equivalence = #equivalent
// Commentaire de la section : aucune cible directe
* group[=].element[+].code = #FRLMSectionPregnancyHistory.note
* group[=].element[=].target[+].equivalence = #unmatched

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMSectionPregnancyHistory
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionPregnancyHistory"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Observation sur la grossesse
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyStatus
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRObservationPregnancyDocument"
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Historique des grossesses
* group[=].element[+].code = #FRLMSectionPregnancyHistory.entry.pregnancyHistory
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "FRObservationPregnancyHistoryDocument"
* group[=].element[=].target[=].equivalence = #equivalent
// Commentaire de la section
* group[=].element[+].code = #FRLMSectionPregnancyHistory.note
* group[=].element[=].target[+].code  = #Composition.section.extension:section-note 
* group[=].element[=].target[=].equivalence = #equivalent