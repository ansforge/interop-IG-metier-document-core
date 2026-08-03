Instance: FRSectionAdvanceDirectivesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdvanceDirectives → FRCDADirectivesAnticipees / FRLMAdvanceDirectives → FRCompositionDocument.section:advanceDirectives"
Description: "Mapping des éléments du modèle métier FRLMAdvanceDirectives vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR puis vers la section FHIR FRCompositionDocument.section:advanceDirectives."
* title = "Mapping Métier/CDA/FHIR : \"Directives anticipées\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directives"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees"
// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirectives
* group[=].element[=].target.code = #FRCDADirectivesAnticipees
* group[=].element[=].target.equivalence = #equivalent
//code de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.codeSection
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.titleSection
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.description
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Directive anticipée
* group[=].element[+].code = #FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective
* group[=].element[=].target.code = #FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee
* group[=].element[=].target.equivalence = #equivalent  

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directives"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirectives
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirectives
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirectives.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirectives.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.description
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirectives.text
* group[=].element[=].target.equivalence = #equivalent
// Entrées Directives anticipées
* group[=].element[+].code = #FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective
* group[=].element[=].target.code = #FRCompositionDocument.section:advanceDirectives.entry:FRAdvanceDirectiveDocument
* group[=].element[=].target.equivalence = #equivalent