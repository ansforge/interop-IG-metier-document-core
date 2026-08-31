Instance: FRSectionNoteLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMNote → FRCDACommentaireNonCode / FRLMNote → FRCompositionDocument.section:sectionNote"
Description: "Mapping des éléments du modèle métier FRLMNote vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionNote."
* name = "FRSectionNoteLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Commentaire non codé\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMNote"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-commentaire-non-code"
// Élément racine
* group[=].element[+].code = #FRLMNote
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDACommentaireNonCode"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMNote.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMNote.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRLMNote.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMNote"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMNote
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionNote"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMNote.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent  
// Titre de la section
* group[=].element[+].code = #FRLMNote.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Commentaire non codé
* group[=].element[+].code = #FRLMNote.description
* group[=].element[=].target.code = #Composition.section.extension:section-note
* group[=].element[=].target.equivalence = #equivalent
