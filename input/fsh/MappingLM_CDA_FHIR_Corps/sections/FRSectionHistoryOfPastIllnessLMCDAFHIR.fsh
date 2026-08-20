Instance: FRSectionMedicalHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoryOfPastIllness → FRCDAAntecedentsMedicaux / FRLMHistoryOfPastIllness → FRCompositionDocument.section:sectionMedicalHistory"
Description: "Mapping des éléments du modèle métier FRLMHistoryOfPastIllness vers la section CDA FRCDAAntecedentsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalHistory."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents médicaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-history-of-past-illness"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-medicaux"
// Élément racine
* group[=].element[+].code = #FRLMHistoryOfPastIllness
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.codeSection
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.titleSection
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.description
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : problème
* group[=].element[+].code = #FRLMHistoryOfPastIllness.entry.problem:FRLMCondition
* group[=].element[=].target.code = #FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-history-of-past-illness"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMHistoryOfPastIllness
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionMedicalHistory
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionMedicalHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionMedicalHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionMedicalHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : problème
* group[=].element[+].code = #FRLMHistoryOfPastIllness.entry.problem:FRLMCondition
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionMedicalHistory.entry:FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent