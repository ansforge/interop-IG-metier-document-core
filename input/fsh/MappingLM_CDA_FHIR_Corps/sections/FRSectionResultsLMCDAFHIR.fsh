Instance: FRSectionResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationResults → FRCDAResultats / FRLMObservationResults → FRCompositionDocument.section:sectionResults"
Description: "Mapping des éléments du modèle métier FRLMObservationResults vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:sectionResults."
* name = "FRSectionResultsLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Résultats\""
* experimental = false
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-resultats"
// élément racine
* group[=].element[+].code = #FRLMObservationResults
* group[=].element[=].target[+].code = #Section
* group[=].element[=].target[=].display = "FRCDASectionResultats"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMObservationResults.codeSection
* group[=].element[=].target[+].code = #Section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMObservationResults.titleSection
* group[=].element[=].target[+].code = #Section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMObservationResults.description
* group[=].element[=].target[+].code = #Section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRLMObservationResults.entry.observationResult
* group[=].element[=].target[+].code = #Section.entry
* group[=].element[=].target[=].display = "FRCDAResultats"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMObservationResults
* group[=].element[=].target[+].code = #Composition.section
* group[=].element[=].target[=].display = "FRCompositionDocument.section:sectionResults"
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMObservationResults.codeSection
* group[=].element[=].target[+].code = #Composition.section.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMObservationResults.titleSection
* group[=].element[=].target[+].code = #Composition.section.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMObservationResults.description
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRLMObservationResults.entry.observationResult
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "Observation"
* group[=].element[=].target[=].equivalence = #equivalent
