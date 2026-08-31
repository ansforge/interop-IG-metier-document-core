Instance: FRSectionExaminationReportLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMExaminationReport → FRCDADICOMActeImagerie / FRLMExaminationReport → FRCompositionDocument.section:sectionImagingStudy"
Description: "Mapping des éléments du modèle métier FRLMExaminationReport vers la section CDA FRCDADICOMActeImagerie, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy."
* name = "FRSectionExaminationReportLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-acte-imagerie"
// Élément racine
* group[=].element[+].code = #FRLMExaminationReport
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMActeImagerie"
* group[=].element[=].target.equivalence = #equivalent
// Code de la section
* group[=].element[+].code = #FRLMExaminationReport.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMExaminationReport.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// Description narrative de l'acte
* group[=].element[+].code = #FRLMExaminationReport.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #Section.entry:frDicomTechniqueImagerie.procedure
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergies et intolérances
* group[=].element[+].code = #FRLMExaminationReport.entry.adverseReactions
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifiee dans FRCDADICOMActeImagerie pour FRLMExaminationReport.entry.adverseReactions."

// Groupe Mapping 2 : modèle métier → CDA Conclusion
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-conclusion"
// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDASectionDICOMConclusion"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : modèle métier → CDA Résultats
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-resultats"
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMResultats"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 4 : modèle métier → FHIR Composition
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"

// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionImpression"
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRProcedureImagingDocument"
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRMedicationAdministrationDocument"
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Allergies et intolérances
* group[=].element[+].code = #FRLMExaminationReport.entry.adverseReactions
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRAllergyIntoleranceDocument"
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target[+].code = #Composition.section.text
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Cible narrative pour les resultats textuels dans la section Findings."
* group[=].element[=].target[+].code = #Composition.section.entry
* group[=].element[=].target[=].display = "Observation"
* group[=].element[=].target[=].equivalence = #equivalent

// Groupe Mapping 5 : modèle métier → FHIR DiagnosticReport
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document"
// Sous section : Conclusion
* group[=].element[+].code = #FRLMExaminationReport.subSection.conclusion
* group[=].element[=].target.code = #DiagnosticReport.conclusion
* group[=].element[=].target.display = "FRDiagnosticReportImagingDocument.conclusion"
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Techniques d'imagerie
* group[=].element[+].code = #FRLMExaminationReport.entry.imagingProcedures
* group[=].element[=].target.code = #DiagnosticReport.extension:procedure
* group[=].element[=].target.equivalence = #equivalent
// Entrée : Produits de santé administrés
* group[=].element[+].code = #FRLMExaminationReport.entry.medicationAdministrations
* group[=].element[=].target.code = #DiagnosticReport.extension:procedure
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où l'extension procedure référence un FRMedicationAdministrationDocument (partOf du FRProcedureImagingDocument)."
// Entrée : Résultats d'examens
* group[=].element[+].code = #FRLMExaminationReport.entry.results[x]
* group[=].element[=].target.code = #DiagnosticReport.result
* group[=].element[=].target.equivalence = #equivalent