Instance: FRSectionPresentedFormLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPresentedForm → FRCDADocumentPDFCopie / FRLMPresentedForm → FRCompositionDocument.section:sectionPresentedForm"
Description: "Mapping des éléments du modèle métier FRLMPresentedForm vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:sectionPresentedForm."
* name = "FRSectionPresentedFormLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Document PDF-copie\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-document-pdf-copie"
// élément racine
* group[=].element[+].code = #FRLMPresentedForm
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDADocumentPDFCopie"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPresentedForm.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPresentedForm.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPresentedForm.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMPresentedForm.entry.attachment
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMPresentedForm
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionPresentedForm"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPresentedForm.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPresentedForm.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPresentedForm.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMPresentedForm.entry.attachment
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent
