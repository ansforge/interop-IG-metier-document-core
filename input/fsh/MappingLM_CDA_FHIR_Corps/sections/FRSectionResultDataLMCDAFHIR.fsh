Instance: FRSectionResultDataLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMResultData → FRCDACRBIOChapitre / FRLMResultData → FRDiagnosticReportBIOChapterDocument / FRLMResultData → FRCompositionDocument.section.entry"
Description: "Mapping des éléments du modèle métier FRLMResultData vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRDiagnosticReportBIOChapterDocument et vers FRCompositionDocument.section.entry / section.text."
* name = "FRSectionResultDataLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Compte rendu de biologie de 1er niveau\""
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-chapitre"
// Élément racine
* group[=].element[+].code = #FRLMResultData
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDACRBIOChapitre"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMResultData.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMResultData.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif de la section
* group[=].element[+].code = #FRLMResultData.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// Entrée Résultats d'examens de biologie médicale
* group[=].element[+].code = #FRLMResultData.entry.laboratoryTestResults
* group[=].element[=].target.code = #Section.entry.act
* group[=].element[=].target.display = "FRCDAResultatsExamensDeBiologieMedicale"
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR DiagnosticReport
// FRDiagnosticReportBIOChapterDocument est le profil FHIR dédié au CR de biologie côté FR.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-bio-chapter-document"
// Élément racine
* group[=].element[+].code = #FRLMResultData
* group[=].element[=].target.code = #DiagnosticReport
* group[=].element[=].target.display = "FRDiagnosticReportBIOChapterDocument"
* group[=].element[=].target.equivalence = #equivalent
// code de la section (chapitre de BIO)
* group[=].element[+].code = #FRLMResultData.codeSection
* group[=].element[=].target.code = #DiagnosticReport.category:chapitreBIO
* group[=].element[=].target.equivalence = #equivalent
// Entrée Résultats d'examens de biologie médicale
* group[=].element[+].code = #FRLMResultData.entry.laboratoryTestResults
* group[=].element[=].target.code = #DiagnosticReport.result
* group[=].element[=].target.display = "FRObservationLaboratoryReportResultsDocument"
* group[=].element[=].target.equivalence = #equivalent
// Commentaires, interprétation et recommandations du compte rendu
// ou bien ajouter sur FRLMResultData un élément dédié commentaireInterpretationRecommandations 0..* ?
* group[=].element[+].code = #FRLMResultData.description
* group[=].element[=].target[+].code = #DiagnosticReport.conclusion
* group[=].element[=].target[=].equivalence = #relatedto
* group[=].element[=].target[+].code = #DiagnosticReport.conclusionCode
* group[=].element[=].target[=].equivalence = #relatedto

// Groupe Mapping 3 : modèle métier → FHIR Composition
// Pas de correspondance pour FRLMResultData dans son ensemble (pas de code/titre/texte de section) :
// seules l'entrée et les commentaires ont une cible dans Composition.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// Entrée Résultats d'examens de biologie médicale (référence l'Observation, pas le DiagnosticReport)
* group[=].element[+].code = #FRLMResultData.entry.laboratoryTestResults
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRObservationLaboratoryReportResultsDocument"
* group[=].element[=].target.equivalence = #equivalent
// Commentaires, interprétation et recommandations (related-to section.text)
* group[=].element[+].code = #FRLMResultData.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #relatedto
