Instance: FRSectionComparisonStudyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMComparisonStudy → FRCDADICOMExamenComparatif / FRLMComparisonStudy → FRCompositionDocument.section:sectionComparison"
Description: "Mapping des éléments du modèle métier FRLMComparisonStudy vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section FHIR FRCompositionDocument.section:sectionComparison."
* name = "FRSectionComparisonStudyLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Comparaison d'examens d'imagerie\""
* experimental = false
* status = #draft   

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMComparisonStudy"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-examen-comparatif"
// Élément racine
* group[=].element[+].code = #FRLMComparisonStudy
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMExamenComparatif"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComparisonStudy.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMComparisonStudy.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMComparisonStudy.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// FRLMComparisonStudy impose entry 0..0 et subSection 0..0 : aucun mapping d'entree/sous-section.

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMComparisonStudy"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMComparisonStudy
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionComparison"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComparisonStudy.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMComparisonStudy.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMComparisonStudy.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #equivalent
// FRLMComparisonStudy impose entry 0..0 et subSection 0..0 : aucun mapping d'entree/sous-section.
