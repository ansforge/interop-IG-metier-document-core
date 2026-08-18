Instance: FRSectionMedicalHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHistoryOfPastIllness → FRCDAAntecedentsMedicaux / FRLMHistoryOfPastIllness → FRCompositionDocument.section:sectionMedicalHistory"
Description: "Mapping des éléments du modèle métier FRLMHistoryOfPastIllness vers la section CDA FRCDAAntecedentsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalHistory."
* title = "Mapping Métier/CDA/FHIR : \"Antécédents médicaux\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-medicaux"
// Élément racine
* group[=].element[+].code = #FRLMHistoryOfPastIllness
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDAAntecedentsMedicaux"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : problème
* group[=].element[+].code = #FRLMHistoryOfPastIllness.entry.problem:FRLMCondition
* group[=].element[=].target.code = #Section.entry.FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMHistoryOfPastIllness
* group[=].element[=].target.code = #Composition.section:sectionMedicalHistory
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionMedicalHistory"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.codeSection
* group[=].element[=].target.code = #Composition.section:sectionMedicalHistory.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.titleSection
* group[=].element[=].target.code = #Composition.section:sectionMedicalHistory.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMHistoryOfPastIllness.description
* group[=].element[=].target.code = #Composition.section:sectionMedicalHistory.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : problème
* group[=].element[+].code = #FRLMHistoryOfPastIllness.entry.problem:FRLMCondition
* group[=].element[=].target.code = #Composition.section:sectionMedicalHistory.entry:FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent