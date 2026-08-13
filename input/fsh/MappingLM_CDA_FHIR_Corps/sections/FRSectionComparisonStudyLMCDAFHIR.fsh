Instance: FRSectionComparisonStudyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMComparisonStudy → FRCDADICOMExamenComparatif / FRLMComparisonStudy → FRCompositionDocument.section:sectionComparison"
Description: "Mapping des éléments du modèle métier FRLMComparisonStudy vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section FHIR FRCompositionDocument.section:sectionComparison."
* title = "Mapping Métier/CDA/FHIR : \"Comparaison d'examens d'imagerie\""
* status = #draft   

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparison-study"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif"
// Élément racine
* group[=].element[+].code = #FRLMComparisonStudy
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComparisonStudy.codeSection
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMComparisonStudy.titleSection
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMComparisonStudy.description
* group[=].element[=].target.code = #FRCDADICOMExamenComparatif.text
* group[=].element[=].target.equivalence = #equivalent
// FRLMComparisonStudy impose entry 0..0 et subSection 0..0 : aucun mapping d'entree/sous-section.

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparison-study"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMComparisonStudy
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionComparison
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMComparisonStudy.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionComparison.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMComparisonStudy.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionComparison.title
* group[=].element[=].target.equivalence = #equivalent
// Description de la section
* group[=].element[+].code = #FRLMComparisonStudy.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionComparison.text
* group[=].element[=].target.equivalence = #equivalent
// FRLMComparisonStudy impose entry 0..0 et subSection 0..0 : aucun mapping d'entree/sous-section.
