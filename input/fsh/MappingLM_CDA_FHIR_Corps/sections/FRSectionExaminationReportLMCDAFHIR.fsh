Instance: FRSectionExaminationReportLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExaminationReport → FRCDADICOMActeImagerie / FRLMExaminationReport → FRCompositionDocument.section:sectionImagingStudy"
Description: "Mapping des éléments du modèle métier FRLMExaminationReport vers la section CDA FRCDADICOMActeImagerie, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy."
* title = "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMExaminationReport
* group[=].element[=].target.code = #FRCDADICOMActeImagerie
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMExaminationReport.codeSection
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMExaminationReport.titleSection
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'acte
* group[=].element[+].code = #FRLMExaminationReport.description
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergies et intolérances
* group[=].element[+].code = #FRLMExaminationReport.entry.adverseReactions
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiee dans FRCDADICOMActeImagerie pour FRLMExaminationReport.entry.adverseReactions."

// Groupe Mapping 2 : modèle métier → CDA Conclusion
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-conclusion"
// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #FRCDASectionDICOMConclusion
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : modèle métier → CDA Résultats
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-resultats"
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target.code = #FRCDADICOMResultats
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 4 : modèle métier → FHIR Composition
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document"

// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionImpression
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergies et intolérances
* group[=].element[+].code = #FRLMExaminationReport.entry.adverseReactions
* group[=].element[=].target.code = #FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target[+].code = #FRCompositionDocument.section:Findings.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Cible narrative pour les resultats textuels dans la section Findings."
* group[=].element[=].target[+].code = #FRCompositionDocument.section:Findings.entry:FRObservationResultDocument
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Cible structuree pour les resultats codes/observations dans la section Findings."

// Groupe Mapping 5 : modèle métier → FHIR DiagnosticReport
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-imaging-document"
// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #FRDiagnosticReportImagingDocument.conclusion
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #FRDiagnosticReportImagingDocument.extension:procedure
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #FRDiagnosticReportImagingDocument.extension:procedure.partOf:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target.code = #FRDiagnosticReportImagingDocument.result
* group[=].element[=].target.equivalence = #equivalent