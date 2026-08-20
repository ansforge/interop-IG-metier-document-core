Instance: FRSectionResultsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservationResults → FRCDAResultats / FRLMObservationResults → FRCompositionDocument.section:sectionResults"
Description: "Mapping des éléments du modèle métier FRLMObservationResults vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:sectionResults."
* title = "Mapping Métier/CDA/FHIR : \"Résultats\""
* status = #draft
// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-results"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats"
// élément racine
* group[=].element[+].code = #FRLMObservationResults
* group[=].element[=].target[+].code = #FRCDAResultats
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMObservationResults.codeSection
* group[=].element[=].target[+].code = #FRCDAResultats.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMObservationResults.titleSection
* group[=].element[=].target[+].code = #FRCDAResultats.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMObservationResults.description
* group[=].element[=].target[+].code = #FRCDAResultats.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRLMObservationResults.entry.observationResult
* group[=].element[=].target[+].code = #FRCDAResultats.entry:FRCDAResultats
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-results"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMObservationResults
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults
* group[=].element[=].target[=].equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMObservationResults.codeSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.code
* group[=].element[=].target[=].equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMObservationResults.titleSection
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.title
* group[=].element[=].target[=].equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMObservationResults.description
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.text
* group[=].element[=].target[=].equivalence = #equivalent
// Entrée Resultats
* group[=].element[+].code = #FRLMObservationResults.entry.observationResult
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.entry:FRObservationResultDocument
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #FRCompositionDocument.section:sectionResults.entry:FRDiagnosticReportDocument
* group[=].element[=].target[=].equivalence = #equivalent
