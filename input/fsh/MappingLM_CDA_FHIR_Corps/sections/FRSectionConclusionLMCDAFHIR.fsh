Instance: FRSectionConclusionLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMConclusion → FRCDADICOMConclusion / FRLMConclusion → FRDiagnosticReportImagingDocument / FRLMConclusion → FRCompositionDocument.section:sectionImpression"
Description: "Mapping des éléments du modèle métier FRLMConclusion vers la section CDA FRCDADICOMConclusion, puis vers le profil FHIR FRDiagnosticReportImagingDocument / FRCompositionDocument.section:sectionImpression."
* title = "Mapping Métier/CDA/FHIR : \"Conclusion\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-conclusion"   
// Élément racine
* group[=].element[+].code = #FRLMConclusion
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMConclusion"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMConclusion.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de la conclusion
* group[=].element[+].code = #FRLMConclusion.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMConclusion.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Entrée : conditions ou observations liées à la conclusion
* group[=].element[+].code = #FRLMConclusion.entry.conditionOrFinding[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiee dans FRCDADICOMConclusion pour FRLMConclusion.entry.conditionOrFinding[x]. La section FRCDADICOMConclusion est non codée en CDA"

// Groupe Mapping 2 : modèle métier → FHIR DiagnosticReport
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document"
// Élément racine
* group[=].element[+].code = #FRLMConclusion
* group[=].element[=].target.code = #DiagnosticReport.conclusion
* group[=].element[=].target.display = "FRDiagnosticReportImagingDocument.conclusion"
* group[=].element[=].target.equivalence = #equivalent
// entrée : conditions ou observations liées à la conclusion
* group[=].element[+].code = #FRLMConclusion.entry.conditionOrFinding[x]
* group[=].element[=].target.code = #DiagnosticReport.result
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : modèle métier → FHIR Composition
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Élément racine
* group[=].element[+].code = #FRLMConclusion
* group[=].element[=].target.code = #Composition.section:sectionImpression
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionImpression"
* group[=].element[=].target.equivalence = #equivalent