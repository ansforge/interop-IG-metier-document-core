Instance: FRSectionPatientEducationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPatientEducation → FRCDAEducationDuPatient / FRLMPatientEducation → FRCompositionDocument.section:sectionPatientEducation"
Description: "Mapping des éléments du modèle métier FRLMPatientEducation vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:sectionPatientEducation."
* name = "FRSectionPatientEducationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Education du patient\""
* experimental = false
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
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine   
* group[=].element[+].code = #FRLMPatientEducation
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionPatientEducation"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMPatientEducation.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMPatientEducation.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMPatientEducation.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Acte
* group[=].element[+].code = #FRLMPatientEducation.entry.procedure
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Simple observation
* group[=].element[+].code = #FRLMPatientEducation.entry.observation
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée References externes
* group[=].element[+].code = #FRLMPatientEducation.entry.reference
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].equivalence = #equivalent
