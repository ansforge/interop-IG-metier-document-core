Instance: FRSectionExposureInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExposureInformation → FRCDADICOMExpositionAuxRadiations / FRLMExposureInformation → FRCompositionDocument.section:sectionExposureRadiation"
Description: "Mapping des éléments du modèle métier FRLMExposureInformation vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:sectionExposureRadiation."
* title = "Mapping Métier/CDA/FHIR : \"Exposition aux radiations\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposure-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations"
// élément racine
* group[=].element[+].code = #FRLMExposureInformation
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMExposureInformation.codeSection
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMExposureInformation.titleSection
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMExposureInformation.description
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Quantité
* group[=].element[+].code = #FRLMExposureInformation.subSection.quantityExposure
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée administration des produits radiopharmaceutiques
* group[=].element[+].code = #FRLMExposureInformation.subSection.radiopharmaceuticalAdministration
* group[=].element[=].target[+].code = #FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposure-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMExposureInformation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMExposureInformation.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMExposureInformation.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMExposureInformation.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Quantité
* group[=].element[+].code = #FRLMExposureInformation.subSection.quantityExposure
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée administration des produits radiopharmaceutiques
* group[=].element[+].code = #FRLMExposureInformation.subSection.radiopharmaceuticalAdministration
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef
* group[=].element[=].target[=].equivalence = #equivalent
