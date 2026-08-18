Instance: FRSectionAdvanceDirectivesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAdvanceDirectives → FRCDADirectivesAnticipees / FRLMAdvanceDirectives → FRCompositionDocument.section:sectionAdvanceDirectives"
Description: "Mapping des éléments du modèle métier FRLMAdvanceDirectives vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR puis vers la section FHIR FRCompositionDocument.section:sectionAdvanceDirectives."
* title = "Mapping Métier/CDA/FHIR : \"Directives anticipées\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-advance-directives"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-directives-anticipees"
// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirectives
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADirectivesAnticipees"
* group[=].element[=].target.equivalence = #equivalent
//code de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Directive anticipée
* group[=].element[+].code = #FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective
* group[=].element[=].target.code = #Section.entry:FRCDADirectiveAnticipee
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-advance-directives"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMAdvanceDirectives
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionAdvanceDirectives"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.codeSection
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.titleSection
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.title
* group[=].element[=].target.equivalence = #equivalent
// texte de la section
* group[=].element[+].code = #FRLMAdvanceDirectives.description
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.text
* group[=].element[=].target.equivalence = #equivalent
// Entrées Directives anticipées
* group[=].element[+].code = #FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument
* group[=].element[=].target.equivalence = #equivalent