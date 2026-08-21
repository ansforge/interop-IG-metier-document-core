# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping des sections entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:sectionAddendum |
| FRLMAddendum.codeSection | Section.code | Composition.section:sectionAddendum.code |
| FRLMAddendum.titleSection | Section.title | Composition.section:sectionAddendum.title |
| FRLMAddendum.description | Section.text | Composition.section:sectionAddendum.text |
| FRLMAddendum.author[x] | Section.author | Composition.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:sectionAdvanceDirectives |
| FRLMAdvanceDirectives.codeSection | Section.code | Composition.section:sectionAdvanceDirectives.code |
| FRLMAdvanceDirectives.titleSection | Section.title | Composition.section:sectionAdvanceDirectives.title |
| FRLMAdvanceDirectives.description | Section.text | Composition.section:sectionAdvanceDirectives.text |
| FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective | Section.entry:FRCDADirectiveAnticipee | Composition.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:sectionAlerts |
| FRLMAlerts.codeSection | Section.code | Composition.section:sectionAlerts.code |
| FRLMAlerts.titleSection | Section.title | Composition.section:sectionAlerts.title |
| FRLMAlerts.description | Section.text | Composition.section:sectionAlerts.text |
| FRLMAlerts.entry.alert |  | Composition.section:sectionAlerts.entry:Flag |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:sectionAllergiesAndIntolerances |
| FRLMAllergiesAndIntolerances.codeSection | Section.code | Composition.section:sectionAllergiesAndIntolerances.code |
| FRLMAllergiesAndIntolerances.titleSection | Section.title | Composition.section:sectionAllergiesAndIntolerances.title |
| FRLMAllergiesAndIntolerances.description | Section.text | Composition.section:sectionAllergiesAndIntolerances.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance | Section.entry:FRCDAListeDesAllergiesEtHypersensibilites | Composition.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:sectionAttachments |
| FRLMAttachments.codeSection | Section.code | Composition.section:sectionAttachments.code |
| FRLMAttachments.titleSection | Section.title | Composition.section:sectionAttachments.title |
| FRLMAttachments.description | Section.text | Composition.section:sectionAttachments.text |
| FRLMAttachments.entry.attachment:FRLMAttachment | Section.entry:frDocumentAttache |  |
| FRLMAttachments.entry.observation:FRLMObservation | Section.entry:frSimpleObservation |  |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:sectionPlanOfCare |
| FRLMCarePlans.codeSection | Section.code | Composition.section:sectionPlanOfCare.code |
| FRLMCarePlans.titleSection | Section.title | Composition.section:sectionPlanOfCare.title |
| FRLMCarePlans.description | Section.text | Composition.section:sectionPlanOfCare.text |
| FRLMCarePlans.entry.carePlans:FRLMCarePlan | Section.entry:FRCDAActe |  |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:sectionComparison |
| FRLMComparisonStudy.codeSection | Section.code | Composition.section:sectionComparison.code |
| FRLMComparisonStudy.titleSection | Section.title | Composition.section:sectionComparison.title |
| FRLMComparisonStudy.description | Section.text | Composition.section:sectionComparison.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMConclusion.codeSection | Section.code |  |
| FRLMConclusion.description | Section.text |  |
| FRLMConclusion.titleSection | Section.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | DiagnosticReport.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:sectionImagingStudy |
| FRLMDicomStudyMetadata.titleSection | Section.title | Composition.section:sectionImagingStudy.title |
| FRLMDicomStudyMetadata.codeSection | Section.code | Composition.section:sectionImagingStudy.code |
| FRLMDicomStudyMetadata.description | Section.text | Composition.section:sectionImagingStudy.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | Section.entry:FRCDADICOMExamenImagerie | Composition.section:sectionImagingStudy.entry:FRImagingStudyDocument |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | Section.code |  |
| FRLMExaminationReport.titleSection | Section.title |  |
| FRLMExaminationReport.description | Section.text |  |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry.frDICOMTechniqueImagerie | Composition.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry.frDICOMTechniqueImagerie | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry.frDICOMAdministrationProduitDeSante | Composition.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry.frDICOMAdministrationProduitDeSante | DiagnosticReport.extension:procedure.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.adverseReactions |  | Composition.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | Composition.section:Findings.entry:FRObservationResultDocument |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | Composition.section:Findings.text |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | DiagnosticReport.result |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:sectionExposureRadiation |
| FRLMExposureInformation.codeSection | Section.code | Composition.section:sectionExposureRadiation.code |
| FRLMExposureInformation.titleSection | Section.title | Composition.section:sectionExposureRadiation.title |
| FRLMExposureInformation.description | Section.text | Composition.section:sectionExposureRadiation.text |
| FRLMExposureInformation.subSection.quantityExposure | Section.entry:frDICOMQuantite | Composition.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExposureInformation.subSection.radiopharmaceuticalAdministration | Section.entry:frDICOMAdministrationRadiopharmaceutique | Composition.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMFamilyMedicalHistory** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:sectionFamilyMedicalHistory |
| FRLMFamilyMedicalHistory.codeSection | Organizer.code | Composition.section:sectionFamilyMedicalHistory.code |
| FRLMFamilyMedicalHistory.titleSection | Organizer.title | Composition.section:sectionFamilyMedicalHistory.title |
| FRLMFamilyMedicalHistory.description | Organizer.text | Composition.section:sectionFamilyMedicalHistory.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | Organizer.entry:FRCDAAntecedentsFamiliaux | Composition.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:sectionFunctionalStatus |
| FRLMFunctionalStatus.codeSection | Section.code | Composition.section:sectionFunctionalStatus.code |
| FRLMFunctionalStatus.titleSection | Section.title | Composition.section:sectionFunctionalStatus.title |
| FRLMFunctionalStatus.description | Section.text | Composition.section:sectionFunctionalStatus.text |
| FRLMFunctionalStatus.author | Section.author | Composition.author |
| FRLMFunctionalStatus.informant | Section.informant | Composition.extension:informant |
| FRLMFunctionalStatus.entry.assessment | Section.entry:FRCDAGroupDeQuestionnairesDEvaluation | Composition.section:sectionFunctionalStatus.entry:FRObservationAssessmentDocument |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors |
| FRLMHazardousWorkingConditions.codeSection | Section.code | Composition.section:sectionUncodedOccupationalRiskFactors.code |
| FRLMHazardousWorkingConditions.titleSection | Section.title | Composition.section:sectionUncodedOccupationalRiskFactors.title |
| FRLMHazardousWorkingConditions.description | Section.text | Composition.section:sectionUncodedOccupationalRiskFactors.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:sectionDischargeMedications |
| FRLMHospitalDischargeMedications.codeSection | Section.code | Composition.section:sectionDischargeMedications.code |
| FRLMHospitalDischargeMedications.titleSection | Section.title | Composition.section:sectionDischargeMedications.title |
| FRLMHospitalDischargeMedications.description | Section.text | Composition.section:sectionDischargeMedications.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration | Section.entry.FRCDATraitement |  |
| **FRLMImmunisations** | **FRCDAVaccinations** | FRCompositionDocument.section:sectionImmunizations |
| FRLMImmunisations.codeSection | Section.code | Composition.section:sectionImmunizations.code |
| FRLMImmunisations.titleSection | Section.title | Composition.section:sectionImmunizations.title |
| FRLMImmunisations.description | Section.text | Composition.section:sectionImmunizations.text |
| FRLMImmunisations.entry.immunisation | Section.entry.FRCDAVaccination | Composition.section:sectionImmunizations.entry:FRImmunizationDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** |  |
| FRLMCRBIOChapitre.code | Section.code |  |
| FRLMCRBIOChapitre.blocNarratif | Section.text |  |
| FRLMCRBIOChapitre.titreSection | Section.title |  |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | Section.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | Section.component.section:FRCDACRBIOSousChapitre |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | Section.code |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | Section.title |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | Section.text |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | Section.entry:FRCDASimpleObservation |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | Section.entry:FRCDADocumentAttache |  |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** |  |
| FRLMCRBIOSousChapitre.codeSection | Section.code |  |
| FRLMCRBIOSousChapitre.blocNarratif | Section.text |  |
| FRLMCRBIOSousChapitre.titreSection | Section.title |  |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | Section.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevicePrescription |
| FRLMMedicalDevicePrescriptions.author[x] | Section.author | Composition.section:sectionMedicalDevicePrescription.author |
| FRLMMedicalDevicePrescriptions.codeSection | Section.code | Composition.section:sectionMedicalDevicePrescription.code |
| FRLMMedicalDevicePrescriptions.titleSection | Section.title | Composition.section:sectionMedicalDevicePrescription.title |
| FRLMMedicalDevicePrescriptions.description | Section.text | Composition.section:sectionMedicalDevicePrescription.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse | Section.entry:FRCDADispositifMedical | Composition.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevices |
| FRLMMedicalDevicesAndImplants.codeSection | Section.code | Composition.section:sectionMedicalDevices.code |
| FRLMMedicalDevicesAndImplants.titleSection | Section.title | Composition.section:sectionMedicalDevices.title |
| FRLMMedicalDevicesAndImplants.description | Section.text | Composition.section:sectionMedicalDevices.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | Section.entry:FRCDADispositifMedical | Composition.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:sectionMedicalHistory |
| FRLMHistoryOfPastIllness.codeSection | Section.code | Composition.section:sectionMedicalHistory.code |
| FRLMHistoryOfPastIllness.titleSection | Section.title | Composition.section:sectionMedicalHistory.title |
| FRLMHistoryOfPastIllness.description | Section.text | Composition.section:sectionMedicalHistory.text |
| FRLMHistoryOfPastIllness.entry.problem:FRLMCondition | Section.entry. FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme | Composition.section:sectionMedicalHistory.entry:FRConditionDocument |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:sectionMedicationDispense |
| FRLMMedicationDispensations.codeSection | Section.code | Composition.section:sectionMedicationDispense.code |
| FRLMMedicationDispensations.description | Section.text | Composition.section:sectionMedicationDispense.text |
| FRLMMedicationDispensations.titleSection | Section.title | Composition.section:sectionMedicationDispense.title |
| FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense | Section.entry.FRCDATraitementDispense | Composition.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:sectionMedicationRequest |
| FRLMMedicationPrescription.author[x] | Section.author | Composition.section:sectionMedicationRequest.author |
| FRLMMedicationPrescription.codeSection | Section.code | Composition.section:sectionMedicationRequest.code |
| FRLMMedicationPrescription.titleSection | Section.title | Composition.section:sectionMedicationRequest.title |
| FRLMMedicationPrescription.description | Section.text | Composition.section:sectionMedicationRequest.text |
| FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem | Section.entry:FRCDATraitementPrescrit | Composition.section:sectionMedicationRequest.entry:FRMedicationRequestDocument |
| **FRLMMedicationSummary** | **FRCDATraitements** | FRCompositionDocument.section:sectionMedications |
| FRLMMedicationSummary.codeSection | Section.code | Composition.section:sectionMedications.code |
| FRLMMedicationSummary.titleSection | Section.title | Composition.section:sectionMedications.title |
| FRLMMedicationSummary.description | Section.text | Composition.section:sectionMedications.text |
| FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration | Section.entry:FRCDATraitement | Composition.section:sectionMedications.entry:FRMedicationAdministrationDocument |
| **FRLMNote** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:sectionNote |
| FRLMNote.codeSection | Section.code | Composition.section:sectionNote.code |
| FRLMNote.titleSection | Section.title | Composition.section:sectionNote.title |
| FRLMNote.description | Section.text | Composition.section:sectionNote.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:sectionOrder |
| FRLMOrderInformation.titleSection | Section.title | Composition.section:sectionOrder.title |
| FRLMOrderInformation.description | Section.text | Composition.section:sectionOrder.text |
| FRLMOrderInformation.codeSection | Section.code | Composition.section:sectionOrder.code |
| FRLMOrderInformation.entry.orderInformation |  | Composition.section:sectionOrder.entry:FRServiceRequestImagingDocument |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:sectionPatientEducation |
| FRLMPatientEducation.codeSection | Section.code | Composition.section:sectionPatientEducation.code |
| FRLMPatientEducation.titleSection | Section.title | Composition.section:sectionPatientEducation.title |
| FRLMPatientEducation.description | Section.text | Composition.section:sectionPatientEducation.text |
| FRLMPatientEducation.entry.procedure:FRLMProcedure | Section.entry:frActe | Composition.section:sectionPatientEducation.entry:FRProcedureDocument |
| FRLMPatientEducation.entry.observation:FRLMObservation | Section.entry:frSimpleObservation | Composition.section:sectionPatientEducation.entry:Observation |
| FRLMPatientEducation.entry.reference:FRLMAttachment | Section.entry:frReferencesExternes | Composition.section:sectionPatientEducation.entry:FRDocumentReferenceDocument |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction |
| FRLMPredictableAdverseDrugReaction.titreSection | Section.title |  |
| FRLMPredictableAdverseDrugReaction.description | Section.text | Composition.section:sectionPredictableAdverseDrugReaction.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction | Section.entry:FRCDAEffetIndesirable | Composition.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:sectionPregnancyHistory |
| FRLMSectionPregnancyHistory.codeSection | Section.code | Composition.section:sectionPregnancyHistory.code |
| FRLMSectionPregnancyHistory.titleSection | Section.title | Composition.section:sectionPregnancyHistory.title |
| FRLMSectionPregnancyHistory.description | Section.text | Composition.section:sectionPregnancyHistory.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus | Section.entry:FRCDAObservationSurLaGrossesse | Composition.section:sectionPregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory | Section.entry:FRCDAHistoriqueDeLaGrossesse | Composition.section:sectionPregnancyHistory.entry:FRPregnancyHistoryDocument |
| FRLMSectionPregnancyHistory.note |  | Composition.section:sectionPregnancyHistory.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:sectionPresentedForm |
| FRLMPresentedForm.codeSection | Section.code | Composition.section:sectionPresentedForm.code |
| FRLMPresentedForm.titleSection | Section.title | Composition.section:sectionPresentedForm.title |
| FRLMPresentedForm.description | Section.text | Composition.section:sectionPresentedForm.text |
| FRLMPresentedForm.entry.attachment:FRLMAttachment | Section.entry:FRCDADocumentAttache | Composition.section:sectionPresentedForm.entry:FRDocumentReferenceDocument |
| **FRLMProblems** | **FRCDAProblemesActifs** | FRCompositionDocument.section:sectionProblems |
| FRLMProblems.codeSection | Section.code | Composition.section:sectionProblems.code |
| FRLMProblems.titleSection | Section.title | Composition.section:sectionProblems.title |
| FRLMProblems.description | Section.text | Composition.section:sectionProblems.text |
| FRLMProblems.entry.problem:FRLMCondition | Section.entry:FRCDAListeDesProblemes | Composition.section:sectionProblems.entry:FRConditionDocument |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:sectionProceduresHx |
| FRLMProcedures.codeSection | Section.code | Composition.section:sectionProceduresHx.code |
| FRLMProcedures.titleSection | Section.title | Composition.section:sectionProceduresHx.title |
| FRLMProcedures.description | Section.text | Composition.section:sectionProceduresHx.text |
| FRLMProcedures.entry.procedure:FRLMProcedure | Section.entry:FRCDAActe | Composition.section:sectionProceduresHx.entry:FRProcedureDocument |
| **FRLMQRCode** | **FRCDACodeABarres** | FRCompositionDocument.section:sectionQrCode |
| FRLMQRCode.codeSection | Section.code | Composition.section:sectionQrCode.code |
| FRLMQRCode.titleSection | Section.title | Composition.section:sectionQrCode.title |
| FRLMQRCode.description | Section.text | Composition.section:sectionQrCode.text |
| FRLMQRCode.entry.observationMedia:FRLMObservationMedia | Section.entry.FRCDACodeABarres | Composition.section:sectionQrCode.entry:FRCDAMediaDocument |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:sectionReasonForReferral |
| FRLMReasonForReferral.codeSection | Section.code | Composition.section:sectionReasonForReferral.code |
| FRLMReasonForReferral.titleSection | Section.title | Composition.section:sectionReasonForReferral.title |
| FRLMReasonForReferral.description | Section.text | Composition.section:sectionReasonForReferral.text |
| FRLMReasonForReferral.entry.observation | Section.entry:FRCDASimpleObservation | Composition.section:sectionReasonForReferral.entry:Observation |
| FRLMReasonForReferral.entry.problemes | Section.entry:FRCDAProbleme | Composition.section:sectionReasonForReferral.entry:FRConditionDocument |
| **FRLMObservationResults** | **FRCDAResultats** | FRCompositionDocument.section:sectionResults |
| FRLMObservationResults.codeSection | Organizer.code | Composition.section:sectionResults.code |
| FRLMObservationResults.titleSection | Organizer.title | Composition.section:sectionResults.title |
| FRLMObservationResults.description | Organizer.text | Composition.section:sectionResults.text |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRDiagnosticReportDocument |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRObservationResultDocument |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:sectionSocialHistory |
| FRLMSocialHistory.codeSection | Section.code | Composition.section:sectionSocialHistory.code |
| FRLMSocialHistory.titleSection | Section.title | Composition.section:sectionSocialHistory.title |
| FRLMSocialHistory.description | Section.text | Composition.section:sectionSocialHistory.text |
| FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory | Section.entry:FRCDAHabitusModeDeVie | Composition.section:sectionSocialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:sectionHistory |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRDiagnosticReportImagingDocument.extension:historiqueMedical |
| FRLMSupportingInformation.codeSection | Section.code | Composition.section:sectionHistory.code |
| FRLMSupportingInformation.titleSection | Section.title | Composition.section:sectionHistory.title |
| FRLMSupportingInformation.description | Section.text | Composition.section:sectionHistory.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | Composition.section:sectionHistory.entry:FRObservationResultDocument |
| FRLMSupportingInformation.entry.previousResultsInformation |  | DiagnosticReport.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation:antecedentsMedicaux | Composition.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation:antecedentsMedicaux | DiagnosticReport.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation:antecedentsChirurgicaux | Composition.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation:antecedentsChirurgicaux | DiagnosticReport.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation:grossesse | Composition.section:sectionHistory.entry:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation:grossesse | DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation:contreIndications | Composition.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation:contreIndications | DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.condition |  | Composition.section:sectionHistory.entry:FRConditionDocument |
| FRLMSupportingInformation.entry.condition |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRConditionDocument |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASignesVitaux** | FRCompositionDocument.section:sectionVitalSigns |
| FRLMVitalSigns.titleSection | Organizer.title | Composition.section:sectionVitalSigns.title |
| FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign | Organizer.entry:FRCDASignesVitauxEntry | Composition.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument |

### Mapping des entrées entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAdvanceDirective** | **FRCDADirectiveAnticipee** | **FRAdvanceDirectiveDocument** |
| FRLMAdvanceDirective.header.identifier | Observation.id | Consent.identifier |
| FRLMAdvanceDirective.category | Observation.code | Consent.provision.code |
| FRLMAdvanceDirective.header.status | Observation.statusCode | Consent.status |
| FRLMAdvanceDirective.header.date | Observation.effectiveTime |  |
| FRLMAdvanceDirective.value | Observation.value | Consent.provision.type |
| FRLMAdvanceDirective.note | Observation.text |  |
| FRLMAdvanceDirective.attachment | Observation.entryRelationship.observationMedia | Consent.source[x] |
| FRLMAttachment.url | Observation.reference. externalDocument.text.reference | Consent.source[x].url |
| FRLMAttachment.header.identifier | Observation.entryRelationship. observationMedia.id | Consent.source[x].id |
| FRLMAttachment.data | Observation.entryRelationship. observationMedia.value | Consent.source[x].data |
| **FRLMAdverseDrugReaction** | **FRCDAEffetIndesirable** | **FRAdverseEventDocument** |
| FRLMAdverseDrugReaction.header.identifier | Observation.id | AdverseEvent.identifier |
| FRLMAdverseDrugReaction.header.status | Observation.statusCode |  |
| FRLMAdverseDrugReaction.adverseDrugReactionType | Observation.code | AdverseEvent.category |
| FRLMAdverseDrugReaction.header.date | Observation.effectiveTime | AdverseEvent.date |
| FRLMAdverseDrugReaction.detected |  | AdverseEvent.detected |
| FRLMAdverseDrugReaction.value | Observation.value |  |
| FRLMAdverseDrugReaction.medicationAdministration | Observation.entryRelationship:frTraitement | AdverseEvent.suspectEntity.instance |
| FRLMAdverseDrugReaction.reaction | Observation.entryRelationship:frProbleme | AdverseEvent.resultingCondition |
| FRLMAdverseDrugReaction.causalityAssessment | Observation.entryRelationship:frImputabiliteEffetIndesirable | AdverseEvent.suspectEntity.causality |
| FRLMAdverseDrugReaction.severity | Observation.entryRelationship:frGraviteEffetIndesirable | AdverseEvent.severity |
| FRLMAdverseDrugReaction.outcome | Observation.entryRelationship:frEvolutionEffetIndesirable | AdverseEvent.outcome |
| **FRLMAllergyIntolerance** | **FRCDAAllergieOuHypersensibilite** | **FRAllergyIntoleranceDocument** |
| FRLMAllergyIntolerance.header.identifier | Observation.id | AllergyIntolerance.identifier |
| FRLMAllergyIntolerance.note | Observation.text | AllergyIntolerance.note |
| FRLMAllergyIntolerance.type | Observation.code | AllergyIntolerance.type |
| FRLMAllergyIntolerance.header.status | Observation.entryRelationship:frStatutDuProbleme | AllergyIntolerance.clinicalStatus |
| FRLMAllergyIntolerance.period | Observation.effectiveTime | AllergyIntolerance.onset[x] |
| FRLMAllergyIntolerance.period.onsetDate | Observation.effectiveTime.low | AllergyIntolerance.onset[x].start |
| FRLMAllergyIntolerance.period.endDate | Observation.effectiveTime.high | AllergyIntolerance.onset[x].end |
| FRLMAllergyIntolerance.agentOrAllergen | Observation.participant | AllergyIntolerance.code |
| FRLMAllergyIntolerance.reaction | Observation.entryRelationship:frProbleme | AllergyIntolerance.reaction |
| FRLMAllergyIntolerance.reaction.agentOrAllergen |  | AllergyIntolerance.reaction.substance |
| FRLMAllergyIntolerance.reaction.manifestation |  | AllergyIntolerance.reaction.manifestation |
| FRLMAllergyIntolerance.reaction.severity |  | AllergyIntolerance.reaction.severity |
| FRLMAllergyIntolerance.reaction.period |  | AllergyIntolerance.reaction.onset |
| FRLMAllergyIntolerance.reaction. period.onsetDate |  | AllergyIntolerance.reaction.onset |
| FRLMAllergyIntolerance.reaction. period.endDate |  |  |
| FRLMAllergyIntolerance.certainty | Observation.entryRelationship:frCertitude | AllergyIntolerance.verificationStatus |
| FRLMAllergyIntolerance.criticality | Observation.entryRelationship:frCriticite | AllergyIntolerance.criticality |
| FRLMAllergyIntolerance.category |  | AllergyIntolerance.category |
| **FRLMAttachment** | FRCDADocumentAttache.component:frObservationMedia.observationMedia | FRDocumentReferenceDocument.content.attachment |
| FRLMAttachment.contentType | Organizer.component:frObservationMedia. observationMedia.value.mediaType | DocumentReference.content.attachment.contentType |
| FRLMAttachment.language | Organizer.component:frObservationMedia. observationMedia.languageCode | DocumentReference.content.attachment.language |
| FRLMAttachment.data | Organizer.component:frObservationMedia. observationMedia.value | DocumentReference.content.attachment.data |
| FRLMAttachment.url | Organizer.component:frObservationMedia. observationMedia.value.reference | DocumentReference.content.attachment.url |
| FRLMAttachment.size |  | DocumentReference.content.attachment.size |
| FRLMAttachment.title |  | DocumentReference.content.attachment.title |
| **FRLMCarePlan** | **FRCDAReferenceItemPlanTraitement** | **FRCarePlanDocument** |
| FRLMCarePlan.header.identifier | SubstanceAdministration.id | CarePlan.identifier |
| FRLMCarePlan.header.status | SubstanceAdministration.statusCode | CarePlan.status |
| FRLMCarePlan.addresses |  | CarePlan.addresses |
| FRLMCarePlan.goal |  | CarePlan.goal |
| FRLMCarePlan.activity | SubstanceAdministration.entryRelationship:frItemPlanTraitement | CarePlan.activity.reference:FRMedicationRequestDocument |
| **FRLMCondition** | **FRCDAProbleme** | **FRConditionDocument** |
| FRLMCondition.header.identifier | Observation.id | Condition.identifier |
| FRLMCondition.type | Observation.code | Condition.category |
| FRLMCondition.problem | Observation.value | Condition.code |
| FRLMCondition.period | Observation.effectiveTime |  |
| FRLMCondition.period.onsetDate | Observation.effectiveTime.low | Condition.onsetDateTime |
| FRLMCondition.period.endDate | Observation.effectiveTime.high | Condition.abatementDateTime |
| FRLMCondition.header.status | Observation.entryRelationship:frStatutDuProbleme | Condition.clinicalStatus |
| FRLMCondition.severity | Observation.entryRelationship:frSeverite | Condition.severity |
| FRLMCondition.diagnosisAssertionStatus | Observation.entryRelationship:frCertitude | Condition.verificationStatus |
| FRLMCondition.clinicalStatus | Observation.entryRelationship:frStatutCliniqueDuPatient | Condition.stage.summary |
| FRLMCondition.bodySite |  | Condition.bodySite |
| FRLMCondition.stage |  | Condition.stage.summary |
| FRLMCondition.reference | Observation.reference. externalDocument.text.reference | Condition.evidence.detail:FRDocumentReferenceDocument.content.attachment.url |
| FRLMCondition.note | Observation.entryRelationship:frCommentaireER | Condition.note |
| **FRLMDevice** | FRCDADispositifMedical.participant. participantRole.playingDevice | **Device** |
| FRLMDevice.identifier | Supply.participant. participantRole.id | Device.identifier |
| FRLMDevice.udi | Supply.participant. participantRole.id | Device.udiCarrier.deviceIdentifier |
| FRLMDevice.manufacturer |  | Device.manufacturer |
| FRLMDevice.manufactureDate |  | Device.manufactureDate |
| FRLMDevice.expiryDate |  | Device.expirationDate |
| FRLMDevice.lotNumber |  | Device.lotNumber |
| FRLMDevice.serialNumber |  | Device.serialNumber |
| FRLMDevice.name | Supply.text | Device.deviceName |
| FRLMDevice.name.value | Supply.text | Device.deviceName.name |
| FRLMDevice.name.type |  | Device.deviceName.type |
| FRLMDevice.modelNumber |  | Device.modelNumber |
| FRLMDevice.version |  | Device.version.value |
| FRLMDevice.type | Supply.participant. participantRole.playingDevice.code | Device.type |
| FRLMDevice.note | Supply.text | Device.note |
| **FRLMDeviceUse** | **FRCDADispositifMedical** | **FRDeviceUseStatementDocument** |
| FRLMDeviceUse.header.identifier | Supply.id | DeviceUseStatement.identifier |
| FRLMDeviceUse.header.status | Supply.statusCode | DeviceUseStatement.status |
| FRLMDeviceUse.periodOfUse | Supply.effectiveTime | DeviceUseStatement.timingPeriod |
| FRLMDeviceUse.periodOfUse.onsetDate | Supply.effectiveTime.low | DeviceUseStatement.timingPeriod.start |
| FRLMDeviceUse.periodOfUse.endDate | Supply.effectiveTime.high | DeviceUseStatement.timingPeriod.end |
| FRLMDeviceUse.periodOfUse.duration | Supply.expectedUseTime | DeviceUseStatement.timing[x] |
| FRLMDeviceUse.header.performer[x] | Supply.performer | DeviceUseStatement.extension:performer |
| FRLMDeviceUse.device | Supply.participant | DeviceUseStatement.device |
| FRLMDeviceUse.bodySite |  | DeviceUseStatement.bodySite |
| FRLMDeviceUse.reason[x]:FRLMCondition | Supply.entryRelationship:frEnRapportAvecALD |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecAccidentTravail | DeviceUseStatement.reasonReference:FRObservationALDDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecAccidentTravail | DeviceUseStatement.reasonReference:FRObservationPreventionDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecAccidentTravail | DeviceUseStatement.reasonReference:FRObservationWorkRelatedAccidentDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecPrevention | DeviceUseStatement.reasonReference:FRObservationALDDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecPrevention | DeviceUseStatement.reasonReference:FRObservationPreventionDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | Supply.entryRelationship:frEnRapportAvecPrevention | DeviceUseStatement.reasonReference:FRObservationWorkRelatedAccidentDocument |
| FRLMDeviceUse.reason[x]:FRLMProcedure |  |  |
| FRLMDeviceUse.note | Supply.text | DeviceUseStatement.note |
| **FRLMEncounter** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMEncounter.header.identifier | Encounter.id | Encounter.identifier |
| FRLMEncounter.header.status | Encounter.statusCode | Encounter.status |
| FRLMEncounter.header.author[x] | Encounter.author | Encounter.author |
| FRLMEncounter.participant | Encounter.participant | Encounter.participant |
| FRLMEncounter.type | Encounter.code | Encounter.class |
| FRLMEncounter.period | Encounter.effectiveTime | Encounter.period |
| FRLMEncounter.priority | Encounter.priorityCode | Encounter.priority |
| FRLMEncounter.participant | Encounter.participant:autresParticipants | Encounter.participant |
| FRLMEncounter.serviceProvider | Encounter.performer. assignedEntity.representedOrganization | Encounter.serviceProvider |
| FRLMEncounter.referringProfessional | Encounter.performer | Encounter.participant.individual |
| FRLMEncounter.basedOn[x] |  | Encounter.basedOn |
| FRLMEncounter.reason[x] |  | Encounter.reasonCode |
| FRLMEncounter.admission |  | Encounter.hospitalization |
| FRLMEncounter.admission.admitter |  | Encounter.participant.individual |
| FRLMEncounter.admission.admitSource |  | Encounter.hospitalization.admitSource |
| FRLMEncounter.dischargeDiagnosis[x] |  | Encounter.diagnosis.condition |
| FRLMEncounter.dischargeDestination |  |  |
| FRLMEncounter.dischargeDestination.type |  | Encounter.hospitalization.dischargeDisposition |
| FRLMEncounter.dischargeDestination.location[x] |  | Encounter.hospitalization.destination |
| FRLMEncounter.serviceLocation | Encounter.participant:lieuExecution | Encounter.location |
| FRLMEncounter.serviceLocation.period |  | Encounter.location.period |
| FRLMEncounter.serviceLocation.organisationPart[x] | Encounter.participant:lieuExecution | Encounter.location.location |
| FRLMEncounter.subEncounter |  | Encounter.partOf |
| FRLMEncounter.note | Encounter.text |  |
| **FRLMFamilyMemberHistory** | **FRCDAAntecedentsFamiliaux** | **FRFamilyMemberHistoryDocument** |
| FRLMFamilyMemberHistory.header.status | Organizer.statusCode | FamilyMemberHistory.status |
| FRLMFamilyMemberHistory.relatedPerson | Organizer.subject.relatedSubject | FamilyMemberHistory.relationship |
| FRLMFamilyMemberHistory.condition | Organizer.component:frAntecedentFamilialObserve | FamilyMemberHistory.condition |
| FRLMFamilyMemberHistory.condition.code | Organizer.component:frAntecedentFamilialObserve.code | FamilyMemberHistory.condition.code |
| FRLMFamilyMemberHistory.condition.outcome | Organizer.component:frAntecedentFamilialObserve.value | FamilyMemberHistory.condition.outcome |
| FRLMFamilyMemberHistory.condition.contributedToDeath | Organizer.component:frAntecedentFamilialObserve.value | FamilyMemberHistory.condition.contributedToDeath |
| FRLMFamilyMemberHistory.condition.onset[x] | Organizer.component:frAntecedentFamilialObserve.effectiveTime | FamilyMemberHistory.condition.onset[x] |
| FRLMFamilyMemberHistory.condition.bodySite | Organizer.component:frAntecedentFamilialObserve.targetSiteCode | FamilyMemberHistory.condition.extension:FRFamilyMemberHistoryBodySiteExtension |
| FRLMFamilyMemberHistory.note | Organizer.text | FamilyMemberHistory.note |
| **FRLMProcedure** | **FRCDADICOMTechniqueImagerie** | **FRProcedureImagingDocument** |
| FRLMProcedure.header.identifier | Procedure.id | Procedure.identifier |
| FRLMProcedure.code | Procedure.code | Procedure.code |
| FRLMProcedure.header.status | Procedure.statusCode | Procedure.status |
| FRLMProcedure.procedureDate[x] | Procedure.effectiveTime | Procedure.performed[x] |
| FRLMProcedure.procedureDateDateTime | Procedure.effectiveTime.low |  |
| FRLMProcedure.procedureDatePeriod | Procedure.effectiveTime.high |  |
| FRLMProcedure.priority | Procedure.priorityCode | Procedure.extension:priority |
| FRLMProcedure.bodySite | Procedure.targetSiteCode | Procedure.bodySite |
| FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier | Procedure.targetSiteCode.qualifier |  |
| FRLMProcedure.approachSiteCode | Procedure.approachSiteCode | Procedure.extension:approachBodySite |
| FRLMProcedure.header.participant[x] | Procedure.participant | Procedure.extension:participant |
| **FRLMQuantityExposure** | **FRCDADICOMQuantite** | FRObservationRadiationExposureDocument.component |
| FRLMQuantityExposure.header. participant[x].participantProfessional |  | Observation.performer:professionnelAutorisantExposition |
| FRLMQuantityExposure.type | Observation.code | Observation.component.code |
| FRLMQuantityExposure.quantity | Observation.value | Observation.component.valueQuantity |
| FRLMQuantityExposure.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier | Observation.targetSiteCode.qualifier | Observation.bodySite.extension:precisionTopographique |
| **FRLMSeries** | **FRCDADICOMSerieImagerie** | **FRImagingStudyDocument** |
| FRLMSeries.seriesUid | Act.id | ImagingStudy.series.uid |
| FRLMSeries.number |  | ImagingStudy.series.number |
| FRLMSeries.seriesModality | Act.code.qualifier | ImagingStudy.series.modality |
| FRLMSeries.bodySite |  | ImagingStudy.series.bodySite |
| FRLMSeries.specimen |  | ImagingStudy.series.specimen |
| FRLMSeries.numberOfInstances |  | ImagingStudy.series.numberOfInstances |
| FRLMSeries.seriesEndpoint | Act.entryRelationship:FRCDADICOMSOPInstanceObservation.text | ImagingStudy.series.endpoint |
| FRLMSeries.started | Act.effectiveTime | ImagingStudy.series.started |
| FRLMSeries.instanceSOP | Act.entryRelationship:FRCDADICOMSOPInstanceObservation | ImagingStudy.series.instance |
| FRLMSeries.instanceSOP. header.identifier | Act.entryRelationship:FRCDADICOMSOPInstanceObservation.id | ImagingStudy.series.instance.uid |
| FRLMSeries.instanceSOP.sopClass | Act.entryRelationship:FRCDADICOMSOPInstanceObservation.code | ImagingStudy.series.instance.sopClass |
| FRLMSeries.instanceSOP.instanceNumber |  | ImagingStudy.series.instance.number |
| FRLMSeries.instanceSOP.numberOfFrames |  | ImagingStudy.series.instance.extension:number-of-frames |
| FRLMSeries.seriesEndpoint.connectionType | Act.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference | ImagingStudy.series.endpoint.connectionType |
| FRLMSeries.seriesEndpoint.payloadType | Act.entryRelationship:FRCDADICOMSOPInstanceObservation. text.mediaType | ImagingStudy.series.endpoint.payloadType |
| FRLMSeries.seriesEndpoint.address | Act.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference | ImagingStudy.series.endpoint.address |
| **FRLMImagingStudy** | **FRCDADICOMExamenImagerie** | **FRImagingStudyDocument** |
| FRLMImagingStudy.header.identifier | FRCDADICOMTechniqueImagerie.id | ImagingStudy.identifier |
| FRLMImagingStudy.modality | FRCDADICOMTechniqueImagerie.methodCode | ImagingStudy.modality |
| FRLMImagingStudy.bodySite | FRCDADICOMTechniqueImagerie.targetSiteCode | ImagingStudy.bodySite |
| FRLMImagingStudy.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier |  |
| FRLMImagingStudy.encounter |  | ImagingStudy.encounter |
| FRLMImagingStudy.started | FRCDADICOMTechniqueImagerie.effectiveTime | ImagingStudy.started |
| FRLMImagingStudy.basedOn |  | ImagingStudy.basedOn |
| FRLMImagingStudy.numberOfSeries |  | ImagingStudy.numberOfSeries |
| FRLMImagingStudy.numberOfInstances |  | ImagingStudy.numberOfInstances |
| FRLMImagingStudy.studyCustodian |  | ImagingStudy.series.performer.actor:Organization |
| FRLMImagingStudy.studyEndpoint |  | ImagingStudy.endpoint |
| FRLMImagingStudy.series |  | ImagingStudy.series |
| **FRLMImmunisation** | **FRCDAVaccination** | **FRImmunizationDocument** |
| FRLMImmunisation.identifiant | SubstanceAdministration.id | Immunization.identifier |
| FRLMImmunisation.header.status | SubstanceAdministration.statusCode | Immunization.status |
| FRLMImmunisation.periodOfImmunisation | SubstanceAdministration.effectiveTime | Immunization.occurrencePeriod |
| FRLMImmunisation.periodOfImmunisation.startDate | SubstanceAdministration.effectiveTime.low | Immunization.occurrencePeriod.start |
| FRLMImmunisation.periodOfImmunisation.endDate | SubstanceAdministration.effectiveTime.high | Immunization.occurrencePeriod.end |
| FRLMImmunisation.diseaseOrAgentTargeted | SubstanceAdministration.entryRelationship:frProbleme | Immunization.protocolApplied.targetDisease |
| FRLMImmunisation.administeredProduct | SubstanceAdministration.consumable:FRCDAProduitDeSante | Immunization.vaccineCode |
| FRLMImmunisation.route | SubstanceAdministration.routeCode | Immunization.route |
| FRLMImmunisation.site | SubstanceAdministration.approachSiteCode | Immunization.site |
| FRLMImmunisation.doseQuantity | SubstanceAdministration.doseQuantity | Immunization.doseQuantity |
| FRLMImmunisation.doseNumber | SubstanceAdministration.entryRelationship:frRangDeLaVaccination | Immunization.protocolApplied.doseNumber |
| FRLMImmunisation.note | SubstanceAdministration.entryRelationship:frCommentaireER | Immunization.note |
| FRLMImmunisation.prescription | SubstanceAdministration.entryRelationship:frPrescription | Immunization.basedOn |
| FRLMImmunisation.reaction | SubstanceAdministration.entryRelationship:frProbleme | Immunization.reaction |
| FRLMImmunisation.reasonCode |  | Immunization.reasonCode |
| **FRLMBatterieExamensBiologieMedicale** | **FRCDABatterieExamensDeBiologieMedicale** |  |
| FRLMBatterieExamensBiologieMedicale.identifiant | Organizer.id |  |
| FRLMBatterieExamensBiologieMedicale.codeBatterieExamen | Organizer.code |  |
| FRLMBatterieExamensBiologieMedicale.statut | Organizer.statusCode |  |
| FRLMBatterieExamensBiologieMedicale.dateExamen | Organizer.effectiveTime |  |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain | Organizer.subject |  |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | Organizer.subject |  |
| FRLMBatterieExamensBiologieMedicale.laboratoireExecutant | Organizer.performer |  |
| FRLMBatterieExamensBiologieMedicale.auteur | Organizer.author |  |
| FRLMBatterieExamensBiologieMedicale.participant | Organizer.participant |  |
| FRLMBatterieExamensBiologieMedicale.prelevement | Organizer.component:frPrelevement |  |
| FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent | Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMBatterieExamensBiologieMedicale.imageIllustrative | Organizer.component:frImageIllustrative |  |
| FRLMBatterieExamensBiologieMedicale.commentaire | Organizer.component:frCommentaireER |  |
| **FRLMIsolatMicrobiologique** | **FRCDAIsolatMicrobiologique** |  |
| FRLMIsolatMicrobiologique.identifiant | Organizer.id |  |
| FRLMIsolatMicrobiologique.codeIsolat | Organizer.code |  |
| FRLMIsolatMicrobiologique.statut | Organizer.statusCode |  |
| FRLMIsolatMicrobiologique.dateResultat | Organizer.effectiveTime |  |
| FRLMIsolatMicrobiologique.choice:SujetNonHumain | Organizer.subject |  |
| FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain | Organizer.subject |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique | Organizer.specimen |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat | Organizer.specimen.specimenRole |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.identifiant | Organizer.specimen. specimenRole.id |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent | Organizer.specimen. specimenRole.specimenPlayingEntity |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent.code | Organizer.specimen. specimenRole.specimenPlayingEntity.code |  |
| FRLMIsolatMicrobiologique.laboratoireExecutant | Organizer.performer |  |
| FRLMIsolatMicrobiologique.auteur | Organizer.author |  |
| FRLMIsolatMicrobiologique.valideur | Authenticator (CDA participant) : participant/@typeCode='AUTHEN' |  |
| FRLMIsolatMicrobiologique.responsable | Responsible Party (CDA participant) : participant/@typeCode='RESP' |  |
| FRLMIsolatMicrobiologique.dispositifAutomatique | Device (CDA participant) : participant/@typeCode='DEV' |  |
| FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale | Organizer.component:frBatterieExamensDeBiologieMedicale |  |
| FRLMIsolatMicrobiologique.resultatElementCliniquePertinent | Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMIsolatMicrobiologique.imageIllustrative | Organizer.component:frImageIllustrative |  |
| FRLMIsolatMicrobiologique.commentaire | Organizer.component:frCommentaireER |  |
| **FRLMResultatExamensBiologieElementCliniquePertinent** | **FRCDAResultatExamensDeBiologieElementCliniquePertinent** |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.identifiant | Observation.id |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation | Observation.code |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat | Observation.effectiveTime |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat | Observation.value |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.interpretation | Observation.interpretationCode.code |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.methode | Observation.methodCode |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain | Observation.subject |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain | Observation.subject |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant | Observation.performer |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.auteur | Observation.author |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | Authenticator (CDA participant) : participant/@typeCode='AUTHEN' |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | Responsible Party (CDA participant) : participant/@typeCode='RESP' |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | Device (CDA participant) : participant/@typeCode='DEV' |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.commentaire | Observation.entryRelationship:frCommentaireER |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.prelevement | Observation.entryRelationship:frPrelevement |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs | Observation.entryRelationship.observation |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference | Observation.referenceRange.observationRange |  |
| **FRLMResultatsExamensBiologieMedicale** | **FRCDAResultatExamensDeBiologie** |  |
| FRLMResultatsExamensBiologieMedicale.code | Act.code |  |
| FRLMResultatsExamensBiologieMedicale.statut | Act.statusCode |  |
| FRLMResultatsExamensBiologieMedicale.dateResultat | Act.effectiveTime |  |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain | Act.subject |  |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | Act.subject |  |
| FRLMResultatsExamensBiologieMedicale.laboratoireExecutant | Act.performer |  |
| FRLMResultatsExamensBiologieMedicale.auteur | Act.author |  |
| FRLMResultatsExamensBiologieMedicale.valideur | Authenticator (CDA participant) : participant/@typeCode='AUTHEN' |  |
| FRLMResultatsExamensBiologieMedicale.responsable | Responsible Party (CDA participant) : participant/@typeCode='RESP' |  |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | Device (CDA participant) : participant/@typeCode='DEV' |  |
| FRLMResultatsExamensBiologieMedicale.prelevement | Act.entryRelationship:frPrelevement |  |
| FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale | Act.entryRelationship:frBatterieExamensDeBiologieMedicale |  |
| FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique | Act.entryRelationship:frIsolatMicrobiologique |  |
| FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent | Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMResultatsExamensBiologieMedicale.imageIllustrative | Act.entryRelationship:frImageIllustrative |  |
| FRLMResultatsExamensBiologieMedicale.commentaire | Act.entryRelationship:frCommentaireER |  |
| **FRLMObservationMedia** | **FRCDAImageIllustrative** | **FRMediaDocument** |
| FRLMObservationMedia.identifiant | ObservationMedia.id | Media.identifier |
| FRLMObservationMedia.content.data | ObservationMedia.value | Media.content.data |
| FRLMObservationMedia.content.contentType | ObservationMedia.value.mediaType | Media.content.contentType |
| FRLMObservationMedia.subject:FRLMPatient | ObservationMedia.subject | Media.subject |
| FRLMObservationMedia.subject:FRLMSpecimen | ObservationMedia.specimen | Media.specimen |
| FRLMObservationMedia.note |  | Media.note |
| FRLMObservationMedia.header.performer[x] | ObservationMedia.performer | Media.operator |
| FRLMObservationMedia.header.participant[x] | ObservationMedia.participant |  |
| FRLMObservationMedia.header.author[x] | ObservationMedia.author |  |
| FRLMObservationMedia.header.informant[x] | ObservationMedia.informant |  |
| **FRLMMedicationAdministration** | **FRCDATraitement** | **FRMedicationAdministrationDocument** |
| FRLMMedicationAdministration.medication | SubstanceAdministration.consumable | MedicationAdministration.medication:FRMedicationDocument |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime[not(@operator='A')] | MedicationAdministration.effectivePeriod |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime[not(@operator='A')] | MedicationAdministration.extension:medicationAdministration-occurence-r5 |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime[@operator='A'] | MedicationAdministration.effectivePeriod |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime[@operator='A'] | MedicationAdministration.extension:medicationAdministration-occurence-r5 |
| FRLMMedicationAdministration.reason[x] | SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frReferenceInterne | MedicationAdministration.reasonCode |
| FRLMMedicationAdministration.reason[x] | SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frReferenceInterne | MedicationAdministration.reasonReference |
| FRLMMedicationAdministration.dosage.renderedDosageInstruction | SubstanceAdministration.text | MedicationAdministration.dosage.text |
| FRLMMedicationAdministration.dosage. dosageDetails.sequence |  | FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension |
| FRLMMedicationAdministration.dosage. dosageDetails.note | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationAdministration.dosage.dose |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationAdministration.dosage.rate[x] |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.numberOfTimes | SubstanceAdministration.effectiveTime.frequency |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.period | SubstanceAdministration.effectiveTime.period |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.dayOfWeek | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.timeOfDay | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.dateOfAdministration | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition |  |
| FRLMMedicationAdministration.dosage. dosageDetails.date[x] | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.duration | SubstanceAdministration.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationAdministration.dosage. dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationAdministration.dosage.site |
| FRLMMedicationAdministration.dosage. dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationAdministration.dosage.route |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerAdministration | SubstanceAdministration.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxLifetimeDose | SubstanceAdministration.maxDoseQuantity |  |
| FRLMMedicationAdministration.note | SubstanceAdministration.text | MedicationAdministration.note |
| **FRLMMedicationDispense** | **FRCDATraitementDispense** | **FRMedicationDispenseDocument** |
| FRLMMedicationDispense.header.identifier | Supply.id | MedicationDispense.identifier |
| FRLMMedicationDispense.header.author[x] |  | MedicationDispense.performer.actor |
| FRLMMedicationDispense.header.status | Supply.code | MedicationDispense.status |
| FRLMMedicationDispense.receiver[x] |  | MedicationDispense.receiver |
| FRLMMedicationDispense.relatedRequest | Supply.entryRelationship:frReferenceItemPrescription | MedicationDispense.authorizingPrescription |
| FRLMMedicationDispense.medicament | Supply.product | MedicationDispense.medication[x] |
| FRLMMedicationDispense.dispensedQuantity | Supply.quantity | MedicationDispense.quantity |
| FRLMMedicationDispense.timeOfDispensation |  | MedicationDispense.whenHandedOver |
| FRLMMedicationDispense.substitutionOccurred | Supply.entryRelationship:frActeSubstitution | MedicationDispense.substitution.wasSubstituted |
| FRLMMedicationDispense.dosageInstructions | Supply.entryRelationship:frTraitement | MedicationDispense.dosageInstruction |
| FRLMMedicationDispense.note | Supply.entryRelationship:frNotesDuDispensateur | MedicationDispense.note |
| FRLMDosageInstructions.renderedDosageInstruction | SubstanceAdministration.text | MedicationDispense.dosageInstruction.text |
| FRLMDosageInstructions.dosageDetails.sequence |  | MedicationDispense.dosageInstruction.sequence |
| FRLMDosageInstructions.dosageDetails.note | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationDispense.dosageInstruction.patientInstruction |
| FRLMDosageInstructions.dosageDetails. doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationDispense.dosageInstruction.doseAndRate.dose[x] |
| FRLMDosageInstructions.dosageDetails. doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationDispense.dosageInstruction.doseAndRate.rate[x] |
| FRLMDosageInstructions.dosageDetails.frequency | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails. frequency.numberOfTimes | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails. frequency.period | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails. frequency.dayOfWeek | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails. frequency.timeOfDay | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails. frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationDispense.dosageInstruction.additionalInstruction |
| FRLMDosageInstructions.dosageDetails.dateOfAdministration |  | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition | MedicationDispense.dosageInstruction.asNeeded[x] |
| FRLMDosageInstructions.dosageDetails.date[x] | SubstanceAdministration.effectiveTime:effectiveTimeDuree | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails.duration |  | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationDispense.dosageInstruction.timing |
| FRLMDosageInstructions.dosageDetails.eventEndSequence |  |  |
| FRLMDosageInstructions.dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationDispense.dosageInstruction.site |
| FRLMDosageInstructions.dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationDispense.dosageInstruction.route |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity.numerator | MedicationDispense.dosageInstruction.maxDosePerPeriod |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity.denominator | MedicationDispense.dosageInstruction.maxDosePerPeriod |
| FRLMDosageInstructions.dosageDetails.maxDosePerAdministration |  | MedicationDispense.dosageInstruction.maxDosePerAdministration |
| FRLMDosageInstructions.dosageDetails.maxLifetimeDose |  | MedicationDispense.dosageInstruction.maxDosePerLifetime |
| **FRLMMedication** | **FRCDAProduitDeSante** | **FRMedicationDocument** |
| FRLMMedication.identifyingCode[x] | ManufacturedProduct.manufacturedProduct. manufacturedMaterial.code | Medication.code |
| FRLMMedication.classification | ManufacturedProduct.pharm:asSpecializedKind | Medication.extension:classification |
| FRLMMedication.productName | ManufacturedProduct.manufacturedProduct. manufacturedMaterial.name | Medication.extension:productName |
| FRLMMedication.marketingAuthorisationHolder |  | Medication.manufacturer |
| FRLMMedication.item.doseForm | ManufacturedProduct.manufacturedProduct. manufacturedMaterial.pharm:formCode | Medication.form |
| FRLMMedication.item. ingredient.isActive |  | Medication.ingredient.isActive |
| FRLMMedication.item. ingredient.substance | ManufacturedProduct.pharm:ingredient. pharm:ingredient.pharm:code | Medication.ingredient.itemCodeableConcept |
| FRLMMedication.item. ingredient.strengthInfo.strength | ManufacturedProduct.pharm:ingredient.pharm:quantity | Medication.ingredient:substanceActive.strength |
| FRLMMedication.item. ingredient.strengthInfo.basisOfStrengthSubstance |  | Medication.ingredient.strength.extension:basisOfStrengthSubstance |
| FRLMMedication.item.unitOfPresentation | ManufacturedProduct.pharm:asContent | Medication.extension:unitOfPresentation |
| FRLMMedication.item.containedQuantity | ManufacturedProduct.pharm:asContent | Medication.extension:sizeOfItem |
| FRLMMedication.item.amount | ManufacturedProduct.pharm:asContent | Medication.amount |
| FRLMMedication.item.packageType | ManufacturedProduct.pharm:asContent.pharm:containerPackagedMedicine | Medication.extension:packageType |
| FRLMMedication.device |  | Medication.extension:device |
| FRLMMedication.characteristic |  | Medication.extension:conditionnement |
| FRLMMedication.batch.lotNumber | ManufacturedProduct.manufacturedProduct. manufacturedMaterial.lotNumberText | Medication.batch.lotNumber |
| FRLMMedication.batch.expirationDate | ManufacturedProduct.pharm:expirationTime | Medication.batch.expirationDate |
| **FRLMPrescriptionItem** | **FRCDATraitementPrescrit** | **FRMedicationRequestDocument** |
| FRLMPrescriptionItem.header.identifier | SubstanceAdministration.id | MedicationRequest.identifier |
| FRLMPrescriptionItem.header.status | SubstanceAdministration.statusCode | MedicationRequest.status |
| FRLMPrescriptionItem.header.author[x] | SubstanceAdministration.author | MedicationRequest.requester |
| FRLMPrescriptionItem.statusReason[x] |  | MedicationRequest.statusReason |
| FRLMPrescriptionItem.medication | SubstanceAdministration.consumable | MedicationRequest.medication[x] |
| FRLMPrescriptionItem.indication[x] | SubstanceAdministration.entryRelationship:frReferenceInterne | MedicationRequest.reasonReference |
| FRLMPrescriptionItem.intendedUseType |  |  |
| FRLMPrescriptionItem.periodOfUse | SubstanceAdministration.effectiveTime:effectiveTimeDuree |  |
| FRLMPrescriptionItem.quantityPrescribed | SubstanceAdministration.entryRelationship:frQuantiteDeProduit | MedicationRequest.dispenseRequest.quantity |
| FRLMPrescriptionItem.validityPeriod | SubstanceAdministration.entryRelationship:frPeriodeDeRenouvellement | MedicationRequest.dispenseRequest.validityPeriod |
| FRLMPrescriptionItem.substitution.allowed[x] | SubstanceAdministration.entryRelationship:frAutorisationSubstitution | MedicationRequest.substitution.allowed[x] |
| FRLMPrescriptionItem.substitution.reason[x] |  | MedicationRequest.substitution.reason |
| FRLMPrescriptionItem.numberOfRepeats | SubstanceAdministration.repeatNumber | MedicationRequest.dispenseRequest.numberOfRepeatsAllowed |
| FRLMPrescriptionItem.minimumDispenseInterval |  | MedicationRequest.dispenseRequest.dispenseInterval |
| FRLMPrescriptionItem.offLabel.isOffLabelUse | SubstanceAdministration.entryRelationship:frHorsAMM | MedicationRequest.extension:horsAMM |
| FRLMPrescriptionItem.offLabel.reason[x] |  |  |
| FRLMPrescriptionItem.note | SubstanceAdministration.entryRelationship:frInstructionsAuDispensateur | MedicationRequest.dispenseRequest.extension:dispenserInstructionR5 |
| FRLMPrescriptionItem.enRapportAvecALD | SubstanceAdministration.entryRelationship:frEnRapportAvecALD | MedicationRequest.reasonReference |
| FRLMPrescriptionItem.enRapportAvecAccidentTravail | SubstanceAdministration.entryRelationship:frEnRapportAvecAccidentTravail | MedicationRequest.reasonReference |
| FRLMPrescriptionItem.enRapportAvecPrevention | SubstanceAdministration.entryRelationship:frEnRapportAvecLaPrevention | MedicationRequest.reasonReference |
| FRLMPrescriptionItem.nonRemboursable | SubstanceAdministration.entryRelationship:frNonRemboursable | MedicationRequest.extension:notCovered |
| FRLMDosageInstructions.renderedDosageInstruction | SubstanceAdministration.text | MedicationRequest.dosageInstruction.text |
| FRLMDosageInstructions.dosageDetails.sequence |  | MedicationRequest.dosageInstruction.sequence |
| FRLMDosageInstructions.dosageDetails.note | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationRequest.dosageInstruction.patientInstruction |
| FRLMDosageInstructions.dosageDetails. doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationRequest.dosageInstruction.doseAndRate.dose[x] |
| FRLMDosageInstructions.dosageDetails. doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationRequest.dosageInstruction.doseAndRate.rate[x] |
| FRLMDosageInstructions.dosageDetails.frequency | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationRequest.dosageInstruction.timing.repeat |
| FRLMDosageInstructions.dosageDetails. frequency.numberOfTimes | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationRequest.dosageInstruction.timing.repeat.frequency |
| FRLMDosageInstructions.dosageDetails. frequency.period | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationRequest.dosageInstruction.timing.repeat.period |
| FRLMDosageInstructions.dosageDetails. frequency.dayOfWeek | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek |
| FRLMDosageInstructions.dosageDetails. frequency.timeOfDay | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationRequest.dosageInstruction.timing.repeat.timeOfDay |
| FRLMDosageInstructions.dosageDetails. frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationRequest.dosageInstruction.additionalInstruction |
| FRLMDosageInstructions.dosageDetails.dateOfAdministration |  | MedicationRequest.dosageInstruction.timing.event |
| FRLMDosageInstructions.dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition | MedicationRequest.dosageInstruction.asNeeded[x] |
| FRLMDosageInstructions.dosageDetails.date[x] | SubstanceAdministration.effectiveTime:effectiveTimeDuree | MedicationRequest.dosageInstruction.timing.repeat.bounds[x] |
| FRLMDosageInstructions.dosageDetails.duration |  | MedicationRequest.dosageInstruction.timing.repeat |
| FRLMDosageInstructions.dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationRequest.dosageInstruction.timing.repeat |
| FRLMDosageInstructions.dosageDetails.eventEndSequence |  |  |
| FRLMDosageInstructions.dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationRequest.dosageInstruction.site |
| FRLMDosageInstructions.dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationRequest.dosageInstruction.route |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity.numerator | MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity.denominator | MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator |
| FRLMDosageInstructions.dosageDetails.maxDosePerAdministration |  | MedicationRequest.dosageInstruction.maxDosePerAdministration |
| FRLMDosageInstructions.dosageDetails.maxLifetimeDose |  | MedicationRequest.dosageInstruction.maxDosePerLifetime |
| **FRLMMedicationUse** | **FRCDATraitement** | **FRMedicationStatementDocument** |
| FRLMMedicationUse.header.status | SubstanceAdministration.statusCode | MedicationStatement.status |
| FRLMMedicationUse.header.author[x] | SubstanceAdministration.author |  |
| FRLMMedicationUse.treatmentStatus |  | MedicationStatement.extension:adherence-code |
| FRLMMedicationUse.changeType |  |  |
| FRLMMedicationUse.medication | SubstanceAdministration.consumable | MedicationStatement.medication[x] |
| FRLMMedicationUse.reason[x] | SubstanceAdministration.entryRelationship:frReferenceInterne | MedicationStatement.reason[x] |
| FRLMMedicationUse.dosageInstructions.renderedDosageInstruction | SubstanceAdministration.text | MedicationStatement.dosage.text |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationStatement.dosage.doseAndRate.dose[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationStatement.dosage.doseAndRate.rate[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.numberOfTimes | SubstanceAdministration.effectiveTime.frequency | MedicationStatement.dosage.timing.repeat.frequency |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.period | SubstanceAdministration.effectiveTime.period | MedicationStatement.dosage.timing.repeat.period |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.dayOfWeek | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.repeat.dayOfWeek |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.timeOfDay | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.repeat.timeOfDay |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationStatement.dosage.additionalInstruction |
| FRLMMedicationUse.dosageInstructions. dosageDetails.dateOfAdministration | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.event |
| FRLMMedicationUse.dosageInstructions. dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition | MedicationStatement.dosage.asNeededCodeableConcept |
| FRLMMedicationUse.dosageInstructions. dosageDetails.date[x] | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.repeat.bounds[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.duration | SubstanceAdministration.effectiveTime | MedicationStatement.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationStatement.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationStatement.dosage.site |
| FRLMMedicationUse.dosageInstructions. dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationStatement.dosage.route |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity | MedicationStatement.dosage.maxDosePerPeriod.numerator |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity | MedicationStatement.dosage.maxDosePerPeriod.denominator |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerAdministration | SubstanceAdministration.maxDoseQuantity | MedicationStatement.dosage.maxDosePerAdministration |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxLifetimeDose | SubstanceAdministration.maxDoseQuantity | MedicationStatement.dosage.maxDosePerLifetime |
| FRLMMedicationUse.derivedFrom[x] | SubstanceAdministration.entryRelationship:frPrescription | MedicationStatement.derivedFrom[x] |
| FRLMMedicationUse.note | SubstanceAdministration.text | MedicationStatement.note |
| **FRLMObservationAssessment** | **FRCDAEvaluation** | **FRObservationAssessmentDocument** |
| FRLMObservationAssessment.header.identifier | Observation.id | Observation.identifier |
| FRLMObservationAssessment.header.status | Observation.statusCode | Observation.status.extension:statusReason |
| FRLMObservationAssessment.observationDate[x] | Observation.effectiveTime | Observation.effectiveDateTime |
| FRLMObservationAssessment.type | Observation.code | Observation.code |
| FRLMObservationAssessment.method |  | Observation.method |
| FRLMObservationAssessment.bodySite | FRLMObservationAssessment.targetSiteCode | Observation.bodySite |
| FRLMObservationAssessment.result | Observation.value | Observation.value[x] |
| FRLMObservationAssessment.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservationAssessment.note | Observation.text | Observation.note |
| FRLMObservationAssessment.component | Observation.entryRelationship:frEvaluationComposant | Observation.component |
| **FRLMObservation** | **FRCDASimpleObservation** |  |
| FRLMObservation.header.status | Observation.statusCode | Observation.status |
| FRLMObservation.header.directSubject[x] | Observation.subject | Observation.focus |
| FRLMObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservation.type | Observation.code | Observation.code |
| FRLMObservation.originalName | Observation.text | Observation.note |
| FRLMObservation.method | Observation.methodCode | Observation.method |
| FRLMObservation.specimen | Observation.specimen | Observation.specimen |
| FRLMObservation.order | Observation.inFulfillmentOf | Observation.basedOn |
| FRLMObservation.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservation.result | Observation.value | Observation.value[x] |
| FRLMObservation.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservation.note | Observation.text | Observation.note |
| FRLMObservation.component |  | Observation.component |
| FRLMObservation.derivedFrom[x] | Observation.entryRelationship |  |
| FRLMObservation.hasMember[x] | Observation.entryRelationship |  |
| **FRLMMicroOrganismSearch** | **FRCDARechercheDeMicroOrganismes** | **FRObservationMicroorganismDetectionDocument** |
| FRLMMicroOrganismSearch.header.identifier | Observation.id | Observation.identifier |
| FRLMMicroOrganismSearch.header.subject | Observation.subject | Observation.subject |
| FRLMMicroOrganismSearch.header.author[x] | Observation.author | Observation.extension:author |
| FRLMMicroOrganismSearch.header.performer[x] | Observation.performer | Observation.performer |
| FRLMMicroOrganismSearch.header.participant[x] | Observation.participant | Observation.extension:author |
| FRLMMicroOrganismSearch.header.informant | Observation.informant | Observation.extension:author |
| FRLMMicroOrganismSearch.header.date | Observation.author.time | Observation.issued |
| FRLMMicroOrganismSearch.header.status | Observation.statusCode | Observation.status |
| FRLMMicroOrganismSearch.header.language | Observation.languageCode | Observation.language |
| FRLMMicroOrganismSearch.header.source |  |  |
| FRLMMicroOrganismSearch.observationDate | Observation.effectiveTime |  |
| FRLMMicroOrganismSearch.type | Observation.code | Observation.code |
| FRLMMicroOrganismSearch.result | Observation.value | Observation.valueBoolean |
| **FRLMMultidrugResistantMicroorganismIdentification** | **FRCDAIdentificationMicroOrganismesMultiresistants** | **FRObservationMultidrugResistantMicroorganismIdentification** |
| FRLMMultidrugResistantMicroorganismIdentification.header.identifier | Observation.id | Observation.identifier |
| FRLMMultidrugResistantMicroorganismIdentification.header.subject | Observation.subject | Observation.subject |
| FRLMMultidrugResistantMicroorganismIdentification.header.author[x] | Observation.author | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.performer[x] | Observation.performer | Observation.performer |
| FRLMMultidrugResistantMicroorganismIdentification.header.participant[x] | Observation.participant | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.informant | Observation.informant | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.date | Observation.author.time | Observation.issued |
| FRLMMultidrugResistantMicroorganismIdentification.header.status | Observation.statusCode | Observation.status |
| FRLMMultidrugResistantMicroorganismIdentification.header.language | Observation.languageCode | Observation.language |
| FRLMMultidrugResistantMicroorganismIdentification.header.source |  |  |
| FRLMMultidrugResistantMicroorganismIdentification.observationDate | Observation.effectiveTime |  |
| FRLMMultidrugResistantMicroorganismIdentification.type | Observation.code | Observation.code |
| FRLMMultidrugResistantMicroorganismIdentification.result | Observation.value | Observation.valueString |
| **FRLMPregnancyObservation** | **FRCDAObservationSurLaGrossesse** | **FRObservationPregnancyDocument** |
| FRLMPregnancyObservation.header.status | Observation.statusCode |  |
| FRLMPregnancyObservation.directSubject[x] | Observation.subject | Observation.subject |
| FRLMPregnancyObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMPregnancyObservation.type | Observation.code | Observation.code |
| FRLMPregnancyObservation.method | Observation.methodCode | Observation.method |
| FRLMPregnancyObservation.result | Observation.value | Observation.value |
| FRLMPregnancyObservation.result.dataAbsentReason | Observation.nullFlavor | Observation.dataAbsentReason |
| FRLMPregnancyObservation.result.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMPregnancyObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMPregnancyObservation.note | Observation.text | Observation.note |
| FRLMPregnancyObservation.component |  | Observation.component |
| FRLMPregnancyObservation.derivedFrom[x] |  |  |
| FRLMPregnancyObservation.hasMember[x] |  |  |
| **FRLMObservation** | **FRCDAResultat** | **FRObservationResultDocument** |
| FRLMObservation.header.identifier | Observation.id | Observation.identifier |
| FRLMObservation.header.status | Observation.statusCode | Observation.status |
| FRLMObservation.directSubject[x] | Observation.subject | Observation.focus |
| FRLMObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservation.type | Observation.code | Observation.code |
| FRLMObservation.originalName | Observation.text | Observation.code.text |
| FRLMObservation.method | Observation.methodCode | Observation.method |
| FRLMObservation.specimen | Observation.specimen | Observation.specimen |
| FRLMObservation.order | Observation.inFulfillmentOf | Observation.basedOn:FRServiceRequestDocument |
| FRLMObservation.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservation.result | Observation.value | Observation.value[x] |
| FRLMObservation.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservation.note | Observation.entryRelationship:frCommentaireER | Observation.note |
| FRLMObservation.component |  | Observation.component |
| FRLMObservation.derivedFrom[x] |  | Observation.derivedFrom |
| FRLMObservation.hasMember[x] |  | Observation.hasMember |
| **FRLMObservationSocialHistory** | **FRCDAHabitusModeDeVie** | **FRObservationSocialHistoryDocument** |
| FRLMObservationSocialHistory.header.status | Observation.statusCode | Observation.status |
| FRLMObservationSocialHistory.observationDate[x] | Observation.effectiveTime | Observation.effectiveDateTime |
| FRLMObservationSocialHistory.type | Observation.code | Observation.code |
| FRLMObservationSocialHistory.result | Observation.value | Observation.valueCodeableConcept |
| FRLMObservationSocialHistory.note | Observation.text | Observation.note |
| **FRLMObservationVitalSign** | **FRCDASigneVitalObserve** | **FRObservationVitalSignsDocument** |
| FRLMObservationVitalSign.header.identifier | Observation.id | Observation.identifier |
| FRLMObservationVitalSign.observationDate[x] | Observation.effectiveTime | Observation.effectiveDateTime |
| FRLMObservationVitalSign.type | Observation.code | Observation.code |
| FRLMObservationVitalSign.header.status | Observation.statusCode | Observation.status |
| FRLMObservationVitalSign.method | Observation.methodCode | Observation.method |
| FRLMObservationVitalSign.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservationVitalSign.result | Observation.value | Observation.component.valueQuantity |
| FRLMObservationVitalSign.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservationVitalSign.note | Observation.text | Observation.note |
| FRLMObservationVitalSign.header.author | Observation.author | Observation.extension:author |
| **FRLMParticipant** | **FRCDAParticipant** | **FRActorExtension** |
| FRLMParticipant.identifier | Participant2.participantRole.id | Extension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier |
| FRLMParticipant.name | Participant2.participantRole. playingEntity.name | Extension.extension[actor].value[x]:FRPractitionerRoleDocument.name |
| FRLMParticipant.type | Participant2.code | Extension.extension[typeCode].value[x] |
| FRLMParticipant.role | Participant2.participantRole. playingEntity.code | Extension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification |
| FRLMParticipant.period | Participant2.time |  |
| FRLMParticipant.participant.participantProfessional | Participant2.participantRole.playingEntity | Extension.extension[actor].value[x]:FRPractitionerRoleDocument |
| FRLMParticipant.participant.participantDevice | Participant2.participantRole.playingDevice | Extension.extension[actor].value[x]:Device |
| FRLMParticipant.participant.participantOrganisation | Participant2.participantRole.scopingEntity | Extension.extension[actor].value[x]:FROrganizationRoleDocument |
| **FRLMPregnancyHistory** | **Organizer** | **Observation** |
| FRLMPregnancyHistory.header.identifier | Organizer.id | Observation.identifier |
| FRLMPregnancyHistory.header.status | Organizer.statusCode | Observation.status |
| FRLMPregnancyHistory.directSubject[x] | Organizer.subject | Observation.focus |
| FRLMPregnancyHistory.type | Organizer.code | Observation.code |
| FRLMPregnancyHistory.method |  | Observation.method |
| FRLMPregnancyHistory.observationDate[x] | Organizer.effectiveTime | Observation.effective[x] |
| FRLMPregnancyHistory.result | Organizer.component:frObservationSurLaGrossesse |  |
| FRLMPregnancyHistory.interpretation |  | Observation.interpretation |
| FRLMPregnancyHistory.note |  | Observation.note |
| FRLMPregnancyHistory.component | Organizer.component:frNaissance | Observation.component |
| FRLMPregnancyHistory.derivedFrom[x] |  | Observation.derivedFrom |
| FRLMPregnancyHistory.hasMember[x] |  | Observation.hasMember |
| **FRLMProcedure** | **FRCDAActe** | **FRProcedureDocument** |
| FRLMProcedure.code | Procedure.code | Procedure.code |
| FRLMProcedure.header.status | Procedure.statusCode | Procedure.status |
| FRLMProcedure.procedureDate[x] | Procedure.effectiveTime | Procedure.performed[x] |
| FRLMProcedure.priority | Procedure.priorityCode | Procedure.extension:priority |
| FRLMProcedure.bodySite | Procedure.targetSiteCode | Procedure.bodySite.TargetSiteCode |
| FRLMProcedure.approachSiteCode | Procedure.approachSiteCode | Procedure.bodySite.ApproachSiteCode |
| FRLMProcedure.difficulty | Procedure.entryRelationship:frSimpleObservationDifficulte | Procedure.extension:difficulte |
| FRLMProcedure.reason[x] | Procedure.entryRelationship:frReferenceInterneMotifActe | Procedure.reasonCode |
| FRLMProcedure.reason[x] | Procedure.entryRelationship:frReferenceInterneMotifActe | Procedure.reasonReference |
| FRLMProcedure.outcome |  | Procedure.outcome |
| FRLMProcedure.complication |  | Procedure.complication |
| FRLMProcedure.deviceUsed | Procedure.entryRelationship:frReferenceInterneDM | Procedure.usedReference |
| FRLMProcedure.focalDevice |  | Procedure.focalDevice.manipulated.device |
| FRLMProcedure.note | Procedure.text | Procedure.note |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:sectionAddendum |
| FRLMAddendum.codeSection | Section.code | Composition.section:sectionAddendum.code |
| FRLMAddendum.titleSection | Section.title | Composition.section:sectionAddendum.title |
| FRLMAddendum.description | Section.text | Composition.section:sectionAddendum.text |
| FRLMAddendum.author[x] | Section.author | Composition.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:sectionAdvanceDirectives |
| FRLMAdvanceDirectives.codeSection | Section.code | Composition.section:sectionAdvanceDirectives.code |
| FRLMAdvanceDirectives.titleSection | Section.title | Composition.section:sectionAdvanceDirectives.title |
| FRLMAdvanceDirectives.description | Section.text | Composition.section:sectionAdvanceDirectives.text |
| FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective | Section.entry:FRCDADirectiveAnticipee | Composition.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:sectionAlerts |
| FRLMAlerts.codeSection | Section.code | Composition.section:sectionAlerts.code |
| FRLMAlerts.titleSection | Section.title | Composition.section:sectionAlerts.title |
| FRLMAlerts.description | Section.text | Composition.section:sectionAlerts.text |
| FRLMAlerts.entry.alert |  | Composition.section:sectionAlerts.entry:Flag |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:sectionAllergiesAndIntolerances |
| FRLMAllergiesAndIntolerances.codeSection | Section.code | Composition.section:sectionAllergiesAndIntolerances.code |
| FRLMAllergiesAndIntolerances.titleSection | Section.title | Composition.section:sectionAllergiesAndIntolerances.title |
| FRLMAllergiesAndIntolerances.description | Section.text | Composition.section:sectionAllergiesAndIntolerances.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance | Section.entry:FRCDAListeDesAllergiesEtHypersensibilites | Composition.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:sectionAttachments |
| FRLMAttachments.codeSection | Section.code | Composition.section:sectionAttachments.code |
| FRLMAttachments.titleSection | Section.title | Composition.section:sectionAttachments.title |
| FRLMAttachments.description | Section.text | Composition.section:sectionAttachments.text |
| FRLMAttachments.entry.attachment:FRLMAttachment | Section.entry:frDocumentAttache |  |
| FRLMAttachments.entry.observation:FRLMObservation | Section.entry:frSimpleObservation |  |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:sectionPlanOfCare |
| FRLMCarePlans.codeSection | Section.code | Composition.section:sectionPlanOfCare.code |
| FRLMCarePlans.titleSection | Section.title | Composition.section:sectionPlanOfCare.title |
| FRLMCarePlans.description | Section.text | Composition.section:sectionPlanOfCare.text |
| FRLMCarePlans.entry.carePlans:FRLMCarePlan | Section.entry:FRCDAActe |  |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:sectionComparison |
| FRLMComparisonStudy.codeSection | Section.code | Composition.section:sectionComparison.code |
| FRLMComparisonStudy.titleSection | Section.title | Composition.section:sectionComparison.title |
| FRLMComparisonStudy.description | Section.text | Composition.section:sectionComparison.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMConclusion.codeSection | Section.code |  |
| FRLMConclusion.description | Section.text |  |
| FRLMConclusion.titleSection | Section.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | DiagnosticReport.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:sectionImagingStudy |
| FRLMDicomStudyMetadata.titleSection | Section.title | Composition.section:sectionImagingStudy.title |
| FRLMDicomStudyMetadata.codeSection | Section.code | Composition.section:sectionImagingStudy.code |
| FRLMDicomStudyMetadata.description | Section.text | Composition.section:sectionImagingStudy.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | Section.entry:FRCDADICOMExamenImagerie | Composition.section:sectionImagingStudy.entry:FRImagingStudyDocument |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | Section.code |  |
| FRLMExaminationReport.titleSection | Section.title |  |
| FRLMExaminationReport.description | Section.text |  |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry.frDICOMTechniqueImagerie | Composition.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry.frDICOMTechniqueImagerie | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry.frDICOMAdministrationProduitDeSante | Composition.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry.frDICOMAdministrationProduitDeSante | DiagnosticReport.extension:procedure.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.adverseReactions |  | Composition.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | Composition.section:Findings.entry:FRObservationResultDocument |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | Composition.section:Findings.text |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | DiagnosticReport.result |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:sectionExposureRadiation |
| FRLMExposureInformation.codeSection | Section.code | Composition.section:sectionExposureRadiation.code |
| FRLMExposureInformation.titleSection | Section.title | Composition.section:sectionExposureRadiation.title |
| FRLMExposureInformation.description | Section.text | Composition.section:sectionExposureRadiation.text |
| FRLMExposureInformation.subSection.quantityExposure | Section.entry:frDICOMQuantite | Composition.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExposureInformation.subSection.radiopharmaceuticalAdministration | Section.entry:frDICOMAdministrationRadiopharmaceutique | Composition.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMFamilyMedicalHistory** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:sectionFamilyMedicalHistory |
| FRLMFamilyMedicalHistory.codeSection | Organizer.code | Composition.section:sectionFamilyMedicalHistory.code |
| FRLMFamilyMedicalHistory.titleSection | Organizer.title | Composition.section:sectionFamilyMedicalHistory.title |
| FRLMFamilyMedicalHistory.description | Organizer.text | Composition.section:sectionFamilyMedicalHistory.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | Organizer.entry:FRCDAAntecedentsFamiliaux | Composition.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:sectionFunctionalStatus |
| FRLMFunctionalStatus.codeSection | Section.code | Composition.section:sectionFunctionalStatus.code |
| FRLMFunctionalStatus.titleSection | Section.title | Composition.section:sectionFunctionalStatus.title |
| FRLMFunctionalStatus.description | Section.text | Composition.section:sectionFunctionalStatus.text |
| FRLMFunctionalStatus.author | Section.author | Composition.author |
| FRLMFunctionalStatus.informant | Section.informant | Composition.extension:informant |
| FRLMFunctionalStatus.entry.assessment | Section.entry:FRCDAGroupDeQuestionnairesDEvaluation | Composition.section:sectionFunctionalStatus.entry:FRObservationAssessmentDocument |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors |
| FRLMHazardousWorkingConditions.codeSection | Section.code | Composition.section:sectionUncodedOccupationalRiskFactors.code |
| FRLMHazardousWorkingConditions.titleSection | Section.title | Composition.section:sectionUncodedOccupationalRiskFactors.title |
| FRLMHazardousWorkingConditions.description | Section.text | Composition.section:sectionUncodedOccupationalRiskFactors.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:sectionDischargeMedications |
| FRLMHospitalDischargeMedications.codeSection | Section.code | Composition.section:sectionDischargeMedications.code |
| FRLMHospitalDischargeMedications.titleSection | Section.title | Composition.section:sectionDischargeMedications.title |
| FRLMHospitalDischargeMedications.description | Section.text | Composition.section:sectionDischargeMedications.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration | Section.entry.FRCDATraitement |  |
| **FRLMImmunisations** | **FRCDAVaccinations** | FRCompositionDocument.section:sectionImmunizations |
| FRLMImmunisations.codeSection | Section.code | Composition.section:sectionImmunizations.code |
| FRLMImmunisations.titleSection | Section.title | Composition.section:sectionImmunizations.title |
| FRLMImmunisations.description | Section.text | Composition.section:sectionImmunizations.text |
| FRLMImmunisations.entry.immunisation | Section.entry.FRCDAVaccination | Composition.section:sectionImmunizations.entry:FRImmunizationDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** |  |
| FRLMCRBIOChapitre.code | Section.code |  |
| FRLMCRBIOChapitre.blocNarratif | Section.text |  |
| FRLMCRBIOChapitre.titreSection | Section.title |  |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | Section.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | Section.component.section:FRCDACRBIOSousChapitre |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | Section.code |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | Section.title |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | Section.text |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | Section.entry:FRCDASimpleObservation |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | Section.entry:FRCDADocumentAttache |  |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** |  |
| FRLMCRBIOSousChapitre.codeSection | Section.code |  |
| FRLMCRBIOSousChapitre.blocNarratif | Section.text |  |
| FRLMCRBIOSousChapitre.titreSection | Section.title |  |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | Section.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevicePrescription |
| FRLMMedicalDevicePrescriptions.author[x] | Section.author | Composition.section:sectionMedicalDevicePrescription.author |
| FRLMMedicalDevicePrescriptions.codeSection | Section.code | Composition.section:sectionMedicalDevicePrescription.code |
| FRLMMedicalDevicePrescriptions.titleSection | Section.title | Composition.section:sectionMedicalDevicePrescription.title |
| FRLMMedicalDevicePrescriptions.description | Section.text | Composition.section:sectionMedicalDevicePrescription.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse | Section.entry:FRCDADispositifMedical | Composition.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevices |
| FRLMMedicalDevicesAndImplants.codeSection | Section.code | Composition.section:sectionMedicalDevices.code |
| FRLMMedicalDevicesAndImplants.titleSection | Section.title | Composition.section:sectionMedicalDevices.title |
| FRLMMedicalDevicesAndImplants.description | Section.text | Composition.section:sectionMedicalDevices.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | Section.entry:FRCDADispositifMedical | Composition.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:sectionMedicalHistory |
| FRLMHistoryOfPastIllness.codeSection | Section.code | Composition.section:sectionMedicalHistory.code |
| FRLMHistoryOfPastIllness.titleSection | Section.title | Composition.section:sectionMedicalHistory.title |
| FRLMHistoryOfPastIllness.description | Section.text | Composition.section:sectionMedicalHistory.text |
| FRLMHistoryOfPastIllness.entry.problem:FRLMCondition | Section.entry. FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme | Composition.section:sectionMedicalHistory.entry:FRConditionDocument |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:sectionMedicationDispense |
| FRLMMedicationDispensations.codeSection | Section.code | Composition.section:sectionMedicationDispense.code |
| FRLMMedicationDispensations.description | Section.text | Composition.section:sectionMedicationDispense.text |
| FRLMMedicationDispensations.titleSection | Section.title | Composition.section:sectionMedicationDispense.title |
| FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense | Section.entry.FRCDATraitementDispense | Composition.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:sectionMedicationRequest |
| FRLMMedicationPrescription.author[x] | Section.author | Composition.section:sectionMedicationRequest.author |
| FRLMMedicationPrescription.codeSection | Section.code | Composition.section:sectionMedicationRequest.code |
| FRLMMedicationPrescription.titleSection | Section.title | Composition.section:sectionMedicationRequest.title |
| FRLMMedicationPrescription.description | Section.text | Composition.section:sectionMedicationRequest.text |
| FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem | Section.entry:FRCDATraitementPrescrit | Composition.section:sectionMedicationRequest.entry:FRMedicationRequestDocument |
| **FRLMMedicationSummary** | **FRCDATraitements** | FRCompositionDocument.section:sectionMedications |
| FRLMMedicationSummary.codeSection | Section.code | Composition.section:sectionMedications.code |
| FRLMMedicationSummary.titleSection | Section.title | Composition.section:sectionMedications.title |
| FRLMMedicationSummary.description | Section.text | Composition.section:sectionMedications.text |
| FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration | Section.entry:FRCDATraitement | Composition.section:sectionMedications.entry:FRMedicationAdministrationDocument |
| **FRLMNote** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:sectionNote |
| FRLMNote.codeSection | Section.code | Composition.section:sectionNote.code |
| FRLMNote.titleSection | Section.title | Composition.section:sectionNote.title |
| FRLMNote.description | Section.text | Composition.section:sectionNote.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:sectionOrder |
| FRLMOrderInformation.titleSection | Section.title | Composition.section:sectionOrder.title |
| FRLMOrderInformation.description | Section.text | Composition.section:sectionOrder.text |
| FRLMOrderInformation.codeSection | Section.code | Composition.section:sectionOrder.code |
| FRLMOrderInformation.entry.orderInformation |  | Composition.section:sectionOrder.entry:FRServiceRequestImagingDocument |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:sectionPatientEducation |
| FRLMPatientEducation.codeSection | Section.code | Composition.section:sectionPatientEducation.code |
| FRLMPatientEducation.titleSection | Section.title | Composition.section:sectionPatientEducation.title |
| FRLMPatientEducation.description | Section.text | Composition.section:sectionPatientEducation.text |
| FRLMPatientEducation.entry.procedure:FRLMProcedure | Section.entry:frActe | Composition.section:sectionPatientEducation.entry:FRProcedureDocument |
| FRLMPatientEducation.entry.observation:FRLMObservation | Section.entry:frSimpleObservation | Composition.section:sectionPatientEducation.entry:Observation |
| FRLMPatientEducation.entry.reference:FRLMAttachment | Section.entry:frReferencesExternes | Composition.section:sectionPatientEducation.entry:FRDocumentReferenceDocument |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction |
| FRLMPredictableAdverseDrugReaction.titreSection | Section.title |  |
| FRLMPredictableAdverseDrugReaction.description | Section.text | Composition.section:sectionPredictableAdverseDrugReaction.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction | Section.entry:FRCDAEffetIndesirable | Composition.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:sectionPregnancyHistory |
| FRLMSectionPregnancyHistory.codeSection | Section.code | Composition.section:sectionPregnancyHistory.code |
| FRLMSectionPregnancyHistory.titleSection | Section.title | Composition.section:sectionPregnancyHistory.title |
| FRLMSectionPregnancyHistory.description | Section.text | Composition.section:sectionPregnancyHistory.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus | Section.entry:FRCDAObservationSurLaGrossesse | Composition.section:sectionPregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory | Section.entry:FRCDAHistoriqueDeLaGrossesse | Composition.section:sectionPregnancyHistory.entry:FRPregnancyHistoryDocument |
| FRLMSectionPregnancyHistory.note |  | Composition.section:sectionPregnancyHistory.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:sectionPresentedForm |
| FRLMPresentedForm.codeSection | Section.code | Composition.section:sectionPresentedForm.code |
| FRLMPresentedForm.titleSection | Section.title | Composition.section:sectionPresentedForm.title |
| FRLMPresentedForm.description | Section.text | Composition.section:sectionPresentedForm.text |
| FRLMPresentedForm.entry.attachment:FRLMAttachment | Section.entry:FRCDADocumentAttache | Composition.section:sectionPresentedForm.entry:FRDocumentReferenceDocument |
| **FRLMProblems** | **FRCDAProblemesActifs** | FRCompositionDocument.section:sectionProblems |
| FRLMProblems.codeSection | Section.code | Composition.section:sectionProblems.code |
| FRLMProblems.titleSection | Section.title | Composition.section:sectionProblems.title |
| FRLMProblems.description | Section.text | Composition.section:sectionProblems.text |
| FRLMProblems.entry.problem:FRLMCondition | Section.entry:FRCDAListeDesProblemes | Composition.section:sectionProblems.entry:FRConditionDocument |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:sectionProceduresHx |
| FRLMProcedures.codeSection | Section.code | Composition.section:sectionProceduresHx.code |
| FRLMProcedures.titleSection | Section.title | Composition.section:sectionProceduresHx.title |
| FRLMProcedures.description | Section.text | Composition.section:sectionProceduresHx.text |
| FRLMProcedures.entry.procedure:FRLMProcedure | Section.entry:FRCDAActe | Composition.section:sectionProceduresHx.entry:FRProcedureDocument |
| **FRLMQRCode** | **FRCDACodeABarres** | FRCompositionDocument.section:sectionQrCode |
| FRLMQRCode.codeSection | Section.code | Composition.section:sectionQrCode.code |
| FRLMQRCode.titleSection | Section.title | Composition.section:sectionQrCode.title |
| FRLMQRCode.description | Section.text | Composition.section:sectionQrCode.text |
| FRLMQRCode.entry.observationMedia:FRLMObservationMedia | Section.entry.FRCDACodeABarres | Composition.section:sectionQrCode.entry:FRCDAMediaDocument |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:sectionReasonForReferral |
| FRLMReasonForReferral.codeSection | Section.code | Composition.section:sectionReasonForReferral.code |
| FRLMReasonForReferral.titleSection | Section.title | Composition.section:sectionReasonForReferral.title |
| FRLMReasonForReferral.description | Section.text | Composition.section:sectionReasonForReferral.text |
| FRLMReasonForReferral.entry.observation | Section.entry:FRCDASimpleObservation | Composition.section:sectionReasonForReferral.entry:Observation |
| FRLMReasonForReferral.entry.problemes | Section.entry:FRCDAProbleme | Composition.section:sectionReasonForReferral.entry:FRConditionDocument |
| **FRLMObservationResults** | **FRCDAResultats** | FRCompositionDocument.section:sectionResults |
| FRLMObservationResults.codeSection | Organizer.code | Composition.section:sectionResults.code |
| FRLMObservationResults.titleSection | Organizer.title | Composition.section:sectionResults.title |
| FRLMObservationResults.description | Organizer.text | Composition.section:sectionResults.text |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRDiagnosticReportDocument |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMObservationResults.entry.observationResult | Organizer.entry:FRCDAResultats | Composition.section:sectionResults.entry:FRObservationResultDocument |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:sectionSocialHistory |
| FRLMSocialHistory.codeSection | Section.code | Composition.section:sectionSocialHistory.code |
| FRLMSocialHistory.titleSection | Section.title | Composition.section:sectionSocialHistory.title |
| FRLMSocialHistory.description | Section.text | Composition.section:sectionSocialHistory.text |
| FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory | Section.entry:FRCDAHabitusModeDeVie | Composition.section:sectionSocialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:sectionHistory |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRDiagnosticReportImagingDocument.extension:historiqueMedical |
| FRLMSupportingInformation.codeSection | Section.code | Composition.section:sectionHistory.code |
| FRLMSupportingInformation.titleSection | Section.title | Composition.section:sectionHistory.title |
| FRLMSupportingInformation.description | Section.text | Composition.section:sectionHistory.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | Composition.section:sectionHistory.entry:FRObservationResultDocument |
| FRLMSupportingInformation.entry.previousResultsInformation |  | DiagnosticReport.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation:antecedentsMedicaux | Composition.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation:antecedentsMedicaux | DiagnosticReport.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation:antecedentsChirurgicaux | Composition.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation:antecedentsChirurgicaux | DiagnosticReport.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation:grossesse | Composition.section:sectionHistory.entry:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation:grossesse | DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation:contreIndications | Composition.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation:contreIndications | DiagnosticReport.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.condition |  | Composition.section:sectionHistory.entry:FRConditionDocument |
| FRLMSupportingInformation.entry.condition |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRConditionDocument |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | DiagnosticReport.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASignesVitaux** | FRCompositionDocument.section:sectionVitalSigns |
| FRLMVitalSigns.titleSection | Organizer.title | Composition.section:sectionVitalSigns.title |
| FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign | Organizer.entry:FRCDASignesVitauxEntry | Composition.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument |
| **FRLMServiceRequest** | **FRCDADemandeDExamenOuDeSuivi** | **FRServiceRequestDocument** |
| FRLMServiceRequest.header.status | Observation.statusCode | ServiceRequest.status |
| FRLMServiceRequest.code | Observation.code | ServiceRequest.code |
| FRLMServiceRequest.quantity |  | ServiceRequest.quantity |
| FRLMServiceRequest.bodySite | Observation.targetSiteCode | ServiceRequest.bodySite |
| FRLMServiceRequest.reason[x] |  | ServiceRequest.reasonCode |
| FRLMServiceRequest.priority | Observation.priorityCode | ServiceRequest.priority |
| FRLMServiceRequest.supportingInformation[x] | Observation.entryRelationship.observation | ServiceRequest.supportingInfo |
| FRLMServiceRequest.specimen | Observation.specimen | ServiceRequest.specimen |
| FRLMServiceRequest.encounter | Observation.entryRelationship.encounter | ServiceRequest.encounter |
| FRLMServiceRequest.occurrence[x] | Observation.effectiveTime | ServiceRequest.occurrence[x] |
| FRLMServiceRequest.patientInstructions | Observation.text | ServiceRequest.note |
| **FRLMSpecimen** | **FRCDAPrelevement** | **FRSpecimenDocument** |
| FRLMSpecimen.identifier | Procedure.id | Specimen.identifier |
| FRLMSpecimen.header.status | Procedure.statusCode | Specimen.status |
| FRLMSpecimen.type | Procedure.code | Specimen.type |
| FRLMSpecimen.specimenSource[x] | Procedure.participant |  |
| FRLMSpecimen.parentSpecimen | Procedure.participant:echantillonPreleve | Specimen.parent |
| FRLMSpecimen.request |  | Specimen.request |
| FRLMSpecimen.combined |  |  |
| FRLMSpecimen.collection.performer[x] | Procedure.performer | Specimen.collection.collector |
| FRLMSpecimen.collection.collected[x] | Procedure.effectiveTime | Specimen.collection.collected[x] |
| FRLMSpecimen.collection.quantity |  | Specimen.collection.quantity |
| FRLMSpecimen.collection.method |  | Specimen.collection.method |
| FRLMSpecimen.collection.device | Procedure.participant:dispositifUtilise |  |
| FRLMSpecimen.collection.additive[x] | Procedure.participant:produitUtilise | Specimen.processing.additive |
| FRLMSpecimen.collection.bodySite | Procedure.targetSiteCode | Specimen.collection.bodySite |
| FRLMSpecimen.receivedDate | Procedure.entryRelationship. act.effectiveTime | Specimen.receivedTime |
| FRLMSpecimen.container.specimenQuantity |  | Specimen.container.specimenQuantity |
| FRLMSpecimen.container.containerDevice |  | Specimen.container.extension:device |
| FRLMSpecimen.condition |  | Specimen.condition |
| FRLMSpecimen.note | Procedure.text | Specimen.note |

