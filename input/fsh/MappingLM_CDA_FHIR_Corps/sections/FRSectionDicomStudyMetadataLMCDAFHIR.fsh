Instance: FRSectionDicomStudyMetadataLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMDicomStudyMetadata → FRCDADICOMObjectCatalog / FRLMDicomStudyMetadata → FRCompositionDocument.section:sectionImagingStudy"
Description: "Mapping des éléments du modèle métier FRLMDicomStudyMetadata vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy."
* title = "Mapping Métier/CDA/FHIR : \"Catalogue des objets d'imagerie\""   
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDicomStudyMetadata"    
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-object-catalog"
// Élément racine
* group[=].element[+].code = #FRLMDicomStudyMetadata
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMObjectCatalog"
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// texte narratif de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// entrée Examen imagerie
* group[=].element[+].code = #FRLMDicomStudyMetadata.entry.imagingStudy
* group[=].element[=].target.code = #Section.entry:FRCDADICOMExamenImagerie
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDicomStudyMetadata"    
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMDicomStudyMetadata
* group[=].element[=].target.code = #Composition.section:sectionImagingStudy
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionImagingStudy"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.codeSection
* group[=].element[=].target.code = #Composition.section:sectionImagingStudy.code
* group[=].element[=].target.equivalence = #equivalent
// Titre de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.titleSection
* group[=].element[=].target.code = #Composition.section:sectionImagingStudy.title
* group[=].element[=].target.equivalence = #equivalent
// texte narratif de la section
* group[=].element[+].code = #FRLMDicomStudyMetadata.description
* group[=].element[=].target.code = #Composition.section:sectionImagingStudy.text
* group[=].element[=].target.equivalence = #equivalent
// entrée Examen imagerie
* group[=].element[+].code = #FRLMDicomStudyMetadata.entry.imagingStudy
* group[=].element[=].target.code = #Composition.section:sectionImagingStudy.entry:FRImagingStudyDocument
* group[=].element[=].target.equivalence = #equivalent