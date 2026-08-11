Instance: FRSectionProblemsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMProblems → FRCDAProblemesActifs / FRLMProblems → FRCompositionDocument.section:sectionProblems"
Description: "Mapping des éléments du modèle métier FRLMProblems vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:sectionProblems."
* title = "Mapping Métier/CDA/FHIR : \"Problèmes actifs\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problems"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs"
// élément racine
* group[=].element[+].code = #FRLMProblems
* group[=].element[=].target[+].code = #FRCDAProblemesActifs
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMProblems.codeSection
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMProblems.titleSection
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMProblems.description
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problèmes actifs
* group[=].element[+].code = #FRLMProblems.entry.problem:FRLMCondition
* group[=].element[=].target[+].code = #FRCDAProblemesActifs.entry:FRCDAListeDesProblemes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problems"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRLMProblems
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionProblems
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMProblems.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionProblems.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMProblems.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionProblems.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMProblems.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionProblems.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Problèmes actifs
* group[=].element[+].code = #FRLMProblems.entry.problem:FRLMCondition
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionProblems.entry:FRConditionDocument
* group[=].element[=].target[=].equivalence = #equivalent