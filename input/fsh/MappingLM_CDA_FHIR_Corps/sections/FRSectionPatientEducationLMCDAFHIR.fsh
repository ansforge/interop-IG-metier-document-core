Instance: FRSectionPatientEducationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatientEducation → FRCDAEducationDuPatient / FRLMPatientEducation → FRCompositionDocument.section:sectionPatientEducation"
Description: "Mapping des éléments du modèle métier FRLMPatientEducation vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:sectionPatientEducation."
* title = "Mapping Métier/CDA/FHIR : \"Education du patient\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-education-du-patient"
// élément racine
* group[=].element[+].code = #FRLMPatientEducation
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPatientEducation.codeSection
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPatientEducation.titleSection
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPatientEducation.description
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure:FRLMProcedure
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frActe
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation:FRLMObservation
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frSimpleObservation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference:FRLMAttachment
* group[=].element[=].target[+].code = #FRCDAEducationDuPatient.entry:frReferencesExternes
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRLMPatientEducation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPatientEducation.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPatientEducation.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPatientEducation.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure:FRLMProcedure
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.entry:FRProcedureDocument
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation:FRLMObservation
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.entry:Observation
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference:FRLMAttachment
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionPatientEducation.entry:FRDocumentReferenceDocument
* group[=].element[=].target[=].equivalence = #equivalent
