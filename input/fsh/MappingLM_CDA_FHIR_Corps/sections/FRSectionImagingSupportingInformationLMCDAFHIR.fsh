Instance: FRSectionImagingSupportingInformationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMImagingSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMImagingSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMImagingSupportingInformation → FRDiagnosticReportImagingDocument"
Description: "Mapping des éléments du modèle métier FRLMImagingSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument."
* name = "FRSectionImagingSupportingInformationLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : Informations cliniques"
* experimental = false
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-historique-medical"
// élément racine
* group[=].element[+].code = #FRLMImagingSupportingInformation
* group[=].element[=].target.code = #Section
* group[=].element[=].target.display = "FRCDADICOMHistoriqueMedical"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMImagingSupportingInformation.codeSection
* group[=].element[=].target.code = #Section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section non codée
* group[=].element[+].code = #FRLMImagingSupportingInformation.titleSection
* group[=].element[=].target.code = #Section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif : antécédents médicaux, grossesse, contre-indications, dispositifs médicaux implantés, traitements en cours
* group[=].element[+].code = #FRLMImagingSupportingInformation.description
* group[=].element[=].target.code = #Section.text
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.previousResultsInformation."
// antécédents médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].display = "FRLMObservation"
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDASimpleObservation"
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].display = "FRLMCondition"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.historyOfPastIllnessFRLMCondition."
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDASimpleObservation"
* group[=].element[=].target.equivalence = #equivalent
// grossesse
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDAObservationSurLaGrossesse"
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #Section.entry.observation
* group[=].element[=].target.display = "FRCDASimpleObservation"
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.condition
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.condition."
// dispositifs médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.device
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.device."
// administration de produit de santé
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.priorMedicationAdministration."
// sexe clinique
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.sexForClinicalUse."

// Groupe Mapping 2 : modèle métier → FHIR Composition
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document"
// élément racine
* group[=].element[+].code = #FRLMImagingSupportingInformation
* group[=].element[=].target.code = #Composition.section
* group[=].element[=].target.display = "FRCompositionDocument.section:sectionHistory"
* group[=].element[=].target.equivalence = #equivalent
// code de la section
* group[=].element[+].code = #FRLMImagingSupportingInformation.codeSection
* group[=].element[=].target.code = #Composition.section.code
* group[=].element[=].target.equivalence = #equivalent
// titre de la section
* group[=].element[+].code = #FRLMImagingSupportingInformation.titleSection
* group[=].element[=].target.code = #Composition.section.title
* group[=].element[=].target.equivalence = #equivalent
// bloc narratif
* group[=].element[+].code = #FRLMImagingSupportingInformation.description
* group[=].element[=].target.code = #Composition.section.text
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "Observation"
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux (observation)
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].display = "FRLMObservation"
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "Observation"
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux (condition)
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].display = "FRLMCondition"
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRConditionDocument"
* group[=].element[=].target.equivalence = #equivalent
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "Observation"
* group[=].element[=].target.equivalence = #equivalent
// contre-indications
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRObservationContraIndicationsDocument"
* group[=].element[=].target.equivalence = #equivalent
// Problème
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.condition
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRConditionDocument"
* group[=].element[=].target.equivalence = #equivalent
// dispositifs médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.device
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.device."
// grossesse
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.display = "FRObservationPregnancyDocument"
* group[=].element[=].target.equivalence = #equivalent
// administration de produit de santé
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.code = #Composition.section.entry
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.priorMedicationAdministration."
// sexe clinique
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.sexForClinicalUse."

// Groupe Mapping 3 : modèle métier → FHIR DiagnosticReport
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document"
// élément racine
* group[=].element[+].code = #FRLMImagingSupportingInformation
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.display = "FRDiagnosticReportImagingDocument.extension:historiqueMedical"
* group[=].element[=].target.equivalence = #equivalent
// résultats d'examens antérieurs pertinents
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.previousResultsInformation
* group[=].element[=].target.code = #DiagnosticReport.result:resultatAnterieur
* group[=].element[=].target.equivalence = #equivalent
// antécédents médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastIllness
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence une Observation d'antécédent médical."
// antécédents chirurgicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.historyOfPastProcedures
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence une Observation d'antécédent chirurgical."
// contre-indications
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.contraIndication
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRObservationContraIndicationsDocument."
// Problème
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.condition
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRConditionDocument."
// dispositifs médicaux
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.device
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRDeviceUseStatementDocument."
// grossesse
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.pregnancyStatus
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRObservationPregnancyDocument."
// administration de produit de santé
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.priorMedicationAdministration
* group[=].element[=].target.code = #DiagnosticReport.extension:historiqueMedical
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRMedicationAdministrationDocument."
// sexe clinique
* group[=].element[+].code = #FRLMImagingSupportingInformation.entry.sexForClinicalUse
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune cible explicite identifiée pour FRLMImagingSupportingInformation.entry.sexForClinicalUse. Cette donnée existe dans le patient."