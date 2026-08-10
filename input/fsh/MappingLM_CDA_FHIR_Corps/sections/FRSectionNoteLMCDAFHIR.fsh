Instance: FRSectionNoteLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMNote → FRCDACommentaireNonCode / FRLMNote → FRCompositionDocument.section:sectionNote"
Description: "Mapping des éléments du modèle métier FRLMNote vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionNote."
* title = "Mapping Métier/CDA/FHIR : \"Commentaire non codé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-note"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code"
// Élément racine
* group[=].element[+].code = #FRLMNote
* group[=].element[=].target.code = #FRCDACommentaireNonCode
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMNote.codeSection
* group[=].element[=].target.code = #FRCDACommentaireNonCode.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMNote.titleSection
* group[=].element[=].target.code = #FRCDACommentaireNonCode.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRLMNote.description
* group[=].element[=].target.code = #FRCDACommentaireNonCode.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-note"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMNote
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionNote
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMNote.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionNote.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRLMNote.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionNote.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRLMNote.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionNote.extension:section-note
* group[=].element[=].target.equivalence = #equivalent
