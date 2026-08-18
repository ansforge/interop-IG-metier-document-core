Instance: FRSectionAttachmentsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMAttachments → FRCDADocumentsAjoutes/ FRLMAttachments → FRCompositionDocument.section:sectionAttachments"
Description: "Mapping des éléments du modèle métier FRLMAttachments vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:sectionAttachments."
* title = "Mapping Métier/CDA/FHIR : \"Documents ajoutés\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-documents-ajoutes"
// élément racine
* group[=].element[+].code = #FRLMAttachments
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDADocumentsAjoutes"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAttachments.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMAttachments.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMAttachments.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMAttachments.entry.attachment:FRLMAttachment
* group[=].element[=].target[+].code = #Section.entry:frDocumentAttache
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMAttachments.entry.observation:FRLMObservation
* group[=].element[=].target[+].code = #Section.entry:frSimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMAttachments
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionAttachments"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMAttachments.codeSection
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMAttachments.titleSection
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMAttachments.description
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Document attaché
* group[=].element[+].code = #FRLMAttachments.entry:attachment:FRLMAttachment
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMAttachments.entry:observation:FRLMObservation
* group[=].element[=].target[+].code = #Composition.section:sectionAttachments.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent