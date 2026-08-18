Instance: FRSectionAllergiesAndIntolerancesLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAllergiesAndIntolerances → FRCDAAllergiesEtHypersensibilites / FRLMAllergiesAndIntolerances → FRCompositionDocument.section:sectionAllergiesAndIntolerances"
Description: "Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:sectionAllergiesAndIntolerances."
* title = "Mapping Métier/CDA/FHIR : \"Allergies et intolérances\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergies-and-intolerances"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-allergies-et-hypersensibilites"
// Élément racine
* group[=].element[+].code = #FRLMAllergiesAndIntolerances
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDAAllergiesEtHypersensibilites"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergie ou intolérance
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance
* group[=].element[=].target.code = #Section.entry:FRCDAListeDesAllergiesEtHypersensibilites
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergies-and-intolerances"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMAllergiesAndIntolerances
* group[=].element[=].target.code = #Composition.section:sectionAllergiesAndIntolerances
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionAllergiesAndIntolerances"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.codeSection
* group[=].element[=].target.code = #Composition.section:sectionAllergiesAndIntolerances.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.titleSection
* group[=].element[=].target.code = #Composition.section:sectionAllergiesAndIntolerances.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la section
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.description
* group[=].element[=].target.code = #Composition.section:sectionAllergiesAndIntolerances.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergie ou intolérance
* group[=].element[+].code = #FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance
* group[=].element[=].target.code = #Composition.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument
* group[=].element[=].target.equivalence = #equivalent