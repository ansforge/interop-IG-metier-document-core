Instance: FRSectionAddendumLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAddendum → FRCDADicomAddendum / FRLMAddendum → FRCompositionDocument.section:sectionAddendum"
Description: "Mapping des éléments du modèle métier FRLMAddendum vers la section CDA FRCDADicomAddendum, puis vers la section FHIR FRCompositionDocument.section:sectionAddendum."
* title = "Mapping Métier/CDA/FHIR : \"Addendum\""  
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-addendum"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-addendum"
// Élément racine
* group[=].element[+].code = #FRLMAddendum
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADicomAddendum"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAddendum.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAddendum.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'addendum
* group[=].element[+].code = #FRLMAddendum.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'addendum
* group[=].element[+].code = #FRLMAddendum.author[x]
* group[=].element[=].target.code = #Section.author
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-addendum"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMAddendum
* group[=].element[=].target.code = #Composition.section:sectionAddendum
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionAddendum"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAddendum.codeSection
* group[=].element[=].target.code = #Composition.section:sectionAddendum.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAddendum.titleSection
* group[=].element[=].target.code = #Composition.section:sectionAddendum.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'addendum
* group[=].element[+].code = #FRLMAddendum.description
* group[=].element[=].target.code = #Composition.section:sectionAddendum.text
* group[=].element[=].target.equivalence = #equivalent
// Auteur de l'addendum
* group[=].element[+].code = #FRLMAddendum.author[x]
* group[=].element[=].target.code = #Composition.author
* group[=].element[=].target.equivalence = #equivalent