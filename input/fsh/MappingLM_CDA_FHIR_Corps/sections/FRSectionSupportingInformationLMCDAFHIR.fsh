Instance: FRSectionSupportingInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMSupportingInformation → FRDiagnosticReportImagingDocument"
Description: "Mapping des éléments du modèle métier FRLMSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument."
* title = "Mapping Métier/CDA/FHIR : Informations cliniques"
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-historique-medical"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMHistoriqueMedical"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSupportingInformation.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section non codée
* group[=].element[+].code = #FRLMSupportingInformation.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif : antécédents médicaux, grossesse, contre-indications, dispositifs médicaux implantés, traitements en cours
* group[=].element[+].code = #FRLMSupportingInformation.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.previousResultsInformation."
// antécédents médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].target.code = #Section.entry.observation:antecedentsMedicaux
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #Section.entry.observation:antecedentsChirurgicaux
* group[=].element[=].target.equivalence = #equivalent
// grossesse
* group[=].element[+].code = #FRLMSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #Section.entry.observation:grossesse
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #Section.entry.observation:contreIndications
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.condition."
// dispositifs médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.device
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.device."
// administration de produit de santé
* group[=].element[+].code = #FRLMSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.priorMedicationAdministration."
// sexe clinique
* group[=].element[+].code = #FRLMSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.sexForClinicalUse."

// Groupe Mapping 2 : modèle métier → FHIR Composition
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #Composition.section:sectionHistory
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionHistory"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMSupportingInformation.codeSection
* group[=].element[=].target.code = #Composition.section:sectionHistory.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMSupportingInformation.titleSection
* group[=].element[=].target.code = #Composition.section:sectionHistory.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMSupportingInformation.description
* group[=].element[=].target.code = #Composition.section:sectionHistory.text
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRObservationResultDocument
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:Observation
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:Observation
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent
// dispositifs médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.device
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRDeviceAuteurDocument
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.device."
// grossesse
* group[=].element[+].code = #FRLMSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent
// administration de produit de santé
* group[=].element[+].code = #FRLMSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.code = #Composition.section:sectionHistory.entry:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.priorMedicationAdministration."
// sexe clinique
* group[=].element[+].code = #FRLMSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.sexForClinicalUse."

// Groupe Mapping 3 : modèle métier → FHIR DiagnosticReport
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document"
// élément racine
* group[=].element[+].code = #FRLMSupportingInformation
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.display = "FRDiagnosticReportImagingDocument.extension:historiqueMedical"
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.code = #DiagnosticReport.result:resultatAnterieur
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:Observation
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:Observation
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMSupportingInformation.entry.condition
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:FRConditionDocument
* group[=].element[=].target.equivalence = #equivalent
// dispositifs médicaux
* group[=].element[+].code = #FRLMSupportingInformation.entry.device
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument
* group[=].element[=].target.equivalence = #equivalent
// grossesse
* group[=].element[+].code = #FRLMSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent
// administration de produit de santé
* group[=].element[+].code = #FRLMSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument
* group[=].element[=].target.equivalence = #equivalent
// sexe clinique
* group[=].element[+].code = #FRLMSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible explicite identifiée pour FRLMSupportingInformation.entry.sexForClinicalUse. Cette donnée existe dans le patient."