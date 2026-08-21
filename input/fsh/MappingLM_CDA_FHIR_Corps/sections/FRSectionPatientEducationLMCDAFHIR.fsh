Instance: FRSectionPatientEducationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatientEducation → FRCDAEducationDuPatient / FRLMPatientEducation → FRCompositionDocument.section:sectionPatientEducation"
Description: "Mapping des éléments du modèle métier FRLMPatientEducation vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:sectionPatientEducation."
* title = "Mapping Métier/CDA/FHIR : \"Education du patient\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-education-du-patient"
// élément racine
* group[=].element[+].code = #FRLMPatientEducation
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDAEducationDuPatient"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPatientEducation.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPatientEducation.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPatientEducation.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure:FRLMProcedure
* group[=].element[=].target[+].code = #Section.entry:frActe
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation:FRLMObservation
* group[=].element[=].target[+].code = #Section.entry:frSimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference:FRLMAttachment
* group[=].element[=].target[+].code = #Section.entry:frReferencesExternes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRLMPatientEducation
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionPatientEducation"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPatientEducation.codeSection
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPatientEducation.titleSection
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPatientEducation.description
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure:FRLMProcedure
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.entry:FRProcedureDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation:FRLMObservation
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference:FRLMAttachment
* group[=].element[=].target[+].code = #Composition.section:sectionPatientEducation.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent
