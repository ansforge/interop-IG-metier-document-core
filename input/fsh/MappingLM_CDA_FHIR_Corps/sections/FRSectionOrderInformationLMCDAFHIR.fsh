Instance: FRSectionOrderInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMOrderInformation → FRCDADICOMDemandeExamen / FRLMOrderInformation → FRCompositionDocument.section:sectionOrder"
Description: "Mapping des éléments du modèle métier FRLMOrderInformation vers la section CDA FRCDADICOMDemandeExamen, puis vers la section FHIR FRCompositionDocument.section:sectionOrder."
* title = "Mapping Métier/CDA/FHIR : Demande d'examen d'imagerie"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen"
// élément racine (section Demande d'examen d'imagerie non codée)
* group[=].element[+].code = #FRLMOrderInformation
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen
* group[=].element[=].target.equivalence = #equivalent
// titre de la section non codée
* group[=].element[+].code = #FRLMOrderInformation.titleSection
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif :  finalité d'examen et justification de la demande 
* group[=].element[+].code = #FRLMOrderInformation.description
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen.text
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMOrderInformation.codeSection
* group[=].element[=].target.code = #FRCDADICOMDemandeExamen.code
* group[=].element[=].target.equivalence = #equivalent
// entrée demande d'examen d'imagerie
* group[=].element[+].code = #FRLMOrderInformation.entry.orderInformation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiee dans FRCDADICOMDemandeExamen pour FRLMOrderInformation.entry.orderInformation."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMOrderInformation
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionOrder
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMOrderInformation.codeSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionOrder.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMOrderInformation.titleSection
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionOrder.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif de la section
* group[=].element[+].code = #FRLMOrderInformation.description
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionOrder.text
* group[=].element[=].target.equivalence = #equivalent
// entrée demande d'examen d'imagerie
* group[=].element[+].code = #FRLMOrderInformation.entry.orderInformation
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionOrder.entry:FRServiceRequestImagingDocument
* group[=].element[=].target.equivalence = #equivalent