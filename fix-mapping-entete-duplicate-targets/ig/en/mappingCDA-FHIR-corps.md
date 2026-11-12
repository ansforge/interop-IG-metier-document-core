# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

 
There is no translation page available for the current page, so it has been rendered in the default language 

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping des sections entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAddendum** | **FRCDADicomAddendum** | **FRCompositionDocument.section:sectionAddendum** |
| FRLMAddendum.codeSection | Section.code | Composition.section.code |
| FRLMAddendum.titleSection | Section.title | Composition.section.title |
| FRLMAddendum.description | Section.text | Composition.section.text |
| FRLMAddendum.author[x] | Section.author | Composition.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | **FRCompositionDocument.section:sectionAdvanceDirectives** |
| FRLMAdvanceDirectives.codeSection | Section.code | Composition.section.code |
| FRLMAdvanceDirectives.titleSection | Section.title | Composition.section.title |
| FRLMAdvanceDirectives.description | Section.text | Composition.section.text |
| FRLMAdvanceDirectives.entry.advanceDirective | Section.entry (FRCDADirectiveAnticipee) | Composition.section.entry (FRAdvanceDirectiveDocument) |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | **FRCompositionDocument.section:sectionAlerts** |
| FRLMAlerts.codeSection | Section.code | Composition.section.code |
| FRLMAlerts.titleSection | Section.title | Composition.section.title |
| FRLMAlerts.description | Section.text | Composition.section.text |
| FRLMAlerts.entry.alert |  | Composition.section.entry (Flag) |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | **FRCompositionDocument.section:sectionAllergiesAndIntolerances** |
| FRLMAllergiesAndIntolerances.codeSection | Section.code | Composition.section.code |
| FRLMAllergiesAndIntolerances.titleSection | Section.title | Composition.section.title |
| FRLMAllergiesAndIntolerances.description | Section.text | Composition.section.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance | Section.entry (FRCDAAllergieOuHypersensibilite) | Composition.section.entry (FRAllergyIntoleranceDocument) |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | **FRCompositionDocument.section:sectionAttachments** |
| FRLMAttachments.codeSection | Section.code | Composition.section.code |
| FRLMAttachments.titleSection | Section.title | Composition.section.title |
| FRLMAttachments.description | Section.text | Composition.section.text |
| FRLMAttachments.entry.attachment | Section.entry:frDocumentAttache | Composition.section.entry (FRDocumentReferenceDocument) |
| FRLMAttachments.entry.observation | Section.entry:frSimpleObservation | Composition.section.entry (Observation) |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | **FRCompositionDocument.section:sectionPlanOfCare** |
| FRLMCarePlans.codeSection | Section.code | Composition.section.code |
| FRLMCarePlans.titleSection | Section.title | Composition.section.title |
| FRLMCarePlans.description | Section.text | Composition.section.text |
| FRLMCarePlans.entry.carePlans | Section.entry | Composition.section.entry |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | **FRCompositionDocument.section:sectionComparison** |
| FRLMComparisonStudy.codeSection | Section.code | Composition.section.code |
| FRLMComparisonStudy.titleSection | Section.title | Composition.section.title |
| FRLMComparisonStudy.description | Section.text | Composition.section.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | **FRDiagnosticReportImagingDocument.conclusion** |
| **FRLMConclusion** | **FRCDADICOMConclusion** | **FRCompositionDocument.section:sectionImpression** |
| FRLMConclusion.codeSection | Section.code |  |
| FRLMConclusion.description | Section.text |  |
| FRLMConclusion.titleSection | Section.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | DiagnosticReport.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | **FRCompositionDocument.section:sectionImagingStudy** |
| FRLMDicomStudyMetadata.titleSection | Section.title | Composition.section.title |
| FRLMDicomStudyMetadata.codeSection | Section.code | Composition.section.code |
| FRLMDicomStudyMetadata.description | Section.text | Composition.section.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | Section.entry (FRCDADICOMExamenImagerie) | Composition.section.entry (FRImagingStudyDocument) |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | Section.code |  |
| FRLMExaminationReport.titleSection | Section.title |  |
| FRLMExaminationReport.description | Section.text |  |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry:frDicomTechniqueImagerie.procedure | Composition.section.entry (FRProcedureImagingDocument) |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry:frDicomTechniqueImagerie.procedure | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration | Composition.section.entry (FRMedicationAdministrationDocument) |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.adverseReactions |  | Composition.section.entry (FRAllergyIntoleranceDocument) |
| **FRLMExaminationReport.subSection.conclusion** | **Section (FRCDASectionDICOMConclusion)** | **Composition.section (FRCompositionDocument.section:sectionImpression)** |
| **FRLMExaminationReport.subSection.conclusion** | **Section (FRCDASectionDICOMConclusion)** | **DiagnosticReport.conclusion (FRDiagnosticReportImagingDocument.conclusion)** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **Composition.section.entry (Observation)** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **Composition.section.text** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **DiagnosticReport.result** |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | **FRCompositionDocument.section:sectionExposureRadiation** |
| FRLMExposureInformation.codeSection | Section.code | Composition.section.code |
| FRLMExposureInformation.titleSection | Section.title | Composition.section.title |
| FRLMExposureInformation.description | Section.text | Composition.section.text |
| FRLMExposureInformation.entry.quantityExposure | Section.entry:frDicomQuantite.observation | Composition.section.entry (FRObservationRadiationExposureDocument) |
| FRLMExposureInformation.entry.radiopharmaceuticalAdministration | Section.entry:frDicomAdministrationRadiopharmaceutique.substanceAdministration | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMFamilyMedicalHistory** | **FRCDASectionAntecedentsFamiliaux** | **FRCompositionDocument.section:sectionFamilyMedicalHistory** |
| FRLMFamilyMedicalHistory.codeSection | Section.code | Composition.section.code |
| FRLMFamilyMedicalHistory.titleSection | Section.title | Composition.section.title |
| FRLMFamilyMedicalHistory.description | Section.text | Composition.section.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | Section.entry (FRCDAAntecedentsFamiliaux) | Composition.section.entry (FRFamilyMemberHistoryDocument) |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | **FRCompositionDocument.section:sectionFunctionalStatus** |
| FRLMFunctionalStatus.codeSection | Section.code | Composition.section.code |
| FRLMFunctionalStatus.titleSection | Section.title | Composition.section.title |
| FRLMFunctionalStatus.description | Section.text | Composition.section.text |
| FRLMFunctionalStatus.author[x] | Section.author | Composition.author |
| FRLMFunctionalStatus.informant | Section.informant | Composition.extension:informant |
| FRLMFunctionalStatus.entry.assessment | Section.entry (FRCDAEvaluation) | Composition.section.entry (FRObservationAssessmentDocument) |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | **FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors** |
| FRLMHazardousWorkingConditions.codeSection | Section.code | Composition.section.code |
| FRLMHazardousWorkingConditions.titleSection | Section.title | Composition.section.title |
| FRLMHazardousWorkingConditions.description | Section.text | Composition.section.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | **FRCompositionDocument.section:sectionDischargeMedications** |
| FRLMHospitalDischargeMedications.codeSection | Section.code | Composition.section.code |
| FRLMHospitalDischargeMedications.titleSection | Section.title | Composition.section.title |
| FRLMHospitalDischargeMedications.description | Section.text | Composition.section.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications | Section.entry (FRCDATraitement) | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMImmunisations** | **FRCDAVaccinations** | **FRCompositionDocument.section:sectionImmunizations** |
| FRLMImmunisations.codeSection | Section.code | Composition.section.code |
| FRLMImmunisations.titleSection | Section.title | Composition.section.title |
| FRLMImmunisations.description | Section.text | Composition.section.text |
| FRLMImmunisations.entry.immunisation | Section.entry (FRCDAVaccination) | Composition.section.entry (FRImmunizationDocument) |
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
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | **FRCompositionDocument.section:sectionMedicalDevicePrescription** |
| FRLMMedicalDevicePrescriptions.author[x] | Section.author | Composition.section.author |
| FRLMMedicalDevicePrescriptions.codeSection | Section.code | Composition.section.code |
| FRLMMedicalDevicePrescriptions.titleSection | Section.title | Composition.section.title |
| FRLMMedicalDevicePrescriptions.description | Section.text | Composition.section.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse | Section.entry (FRCDADispositifMedical) | Composition.section.entry (FRDeviceUseStatementDocument) |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | **FRCompositionDocument.section:sectionMedicalDevices** |
| FRLMMedicalDevicesAndImplants.codeSection | Section.code | Composition.section.code |
| FRLMMedicalDevicesAndImplants.titleSection | Section.title | Composition.section.title |
| FRLMMedicalDevicesAndImplants.description | Section.text | Composition.section.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | Section.entry (FRCDADispositifMedical) | Composition.section.entry (FRDeviceUseStatementDocument) |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | **FRCompositionDocument.section:sectionMedicalHistory** |
| FRLMHistoryOfPastIllness.codeSection | Section.code | Composition.section.code |
| FRLMHistoryOfPastIllness.titleSection | Section.title | Composition.section.title |
| FRLMHistoryOfPastIllness.description | Section.text | Composition.section.text |
| FRLMHistoryOfPastIllness.entry.problem | Section.entry (FRCDAProbleme) | Composition.section.entry (FRConditionDocument) |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | **FRCompositionDocument.section:sectionMedicationDispense** |
| FRLMMedicationDispensations.codeSection | Section.code | Composition.section.code |
| FRLMMedicationDispensations.description | Section.text | Composition.section.text |
| FRLMMedicationDispensations.titleSection | Section.title | Composition.section.title |
| FRLMMedicationDispensations.entry.medicationDispense | Section.entry (FRCDATraitementDispense) | Composition.section.entry (FRMedicationDispenseDocument) |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | **FRCompositionDocument.section:sectionMedicationRequest** |
| FRLMMedicationPrescription.author[x] | Section.author | Composition.section.author |
| FRLMMedicationPrescription.codeSection | Section.code | Composition.section.code |
| FRLMMedicationPrescription.titleSection | Section.title | Composition.section.title |
| FRLMMedicationPrescription.description | Section.text | Composition.section.text |
| FRLMMedicationPrescription.entry.prescriptionItem | Section.entry (FRCDATraitementPrescrit) | Composition.section.entry (FRMedicationRequestDocument) |
| **FRLMMedicationSummary** | **FRCDATraitements** | **FRCompositionDocument.section:sectionMedications** |
| FRLMMedicationSummary.codeSection | Section.code | Composition.section.code |
| FRLMMedicationSummary.titleSection | Section.title | Composition.section.title |
| FRLMMedicationSummary.description | Section.text | Composition.section.text |
| FRLMMedicationSummary.entry.medicationAdministration | Section.entry (FRCDATraitement) | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMNote** | **FRCDACommentaireNonCode** | **FRCompositionDocument.section:sectionNote** |
| FRLMNote.codeSection | Section.code | Composition.section.code |
| FRLMNote.titleSection | Section.title | Composition.section.title |
| FRLMNote.description | Section.text | Composition.section.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | **FRCompositionDocument.section:sectionOrder** |
| FRLMOrderInformation.titleSection | Section.title | Composition.section.title |
| FRLMOrderInformation.description | Section.text | Composition.section.text |
| FRLMOrderInformation.codeSection | Section.code | Composition.section.code |
| FRLMOrderInformation.entry.orderInformation |  | Composition.section.entry (FRServiceRequestDocument) |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | **FRCompositionDocument.section:sectionPatientEducation** |
| FRLMPatientEducation.codeSection | Section.code | Composition.section.code |
| FRLMPatientEducation.titleSection | Section.title | Composition.section.title |
| FRLMPatientEducation.description | Section.text | Composition.section.text |
| FRLMPatientEducation.entry.procedure | Section.entry:frActe.procedure | Composition.section.entry (FRProcedureDocument) |
| FRLMPatientEducation.entry.observation | Section.entry:frSimpleObservation.observation | Composition.section.entry (Observation) |
| FRLMPatientEducation.entry.reference | Section.entry:frReferencesExternes.act | Composition.section.entry (FRDocumentReferenceDocument) |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | **FRCompositionDocument.section:sectionPredictableAdverseDrugReaction** |
| FRLMPredictableAdverseDrugReaction.titleSection | Section.title | Composition.section.title |
| FRLMPredictableAdverseDrugReaction.description | Section.text | Composition.section.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent | Section.entry (FRCDAEffetIndesirable) | Composition.section.entry (FRAdverseEventDocument) |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | **FRCompositionDocument.section:sectionPregnancyHistory** |
| FRLMSectionPregnancyHistory.codeSection | Section.code | Composition.section.code |
| FRLMSectionPregnancyHistory.titleSection | Section.title | Composition.section.title |
| FRLMSectionPregnancyHistory.description | Section.text | Composition.section.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus | Section.entry:frObservationSurLaGrossesse.observation | Composition.section.entry (FRObservationPregnancyDocument) |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory | Section.entry:frHistoriqueDeLaGrossesse.organizer | Composition.section.entry (FRObservationPregnancyHistoryDocument) |
| FRLMSectionPregnancyHistory.note |  | Composition.section.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | **FRCompositionDocument.section:sectionPresentedForm** |
| FRLMPresentedForm.codeSection | Section.code | Composition.section.code |
| FRLMPresentedForm.titleSection | Section.title | Composition.section.title |
| FRLMPresentedForm.description | Section.text | Composition.section.text |
| FRLMPresentedForm.entry.attachment | Section.entry (FRCDADocumentAttache) | Composition.section.entry (FRDocumentReferenceDocument) |
| **FRLMProblems** | **FRCDAProblemesActifs** | **FRCompositionDocument.section:sectionProblems** |
| FRLMProblems.codeSection | Section.code | Composition.section.code |
| FRLMProblems.titleSection | Section.title | Composition.section.title |
| FRLMProblems.description | Section.text | Composition.section.text |
| FRLMProblems.entry.problem | Section.entry (FRCDAProbleme) | Composition.section.entry (FRConditionDocument) |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | **FRCompositionDocument.section:sectionProceduresHx** |
| FRLMProcedures.codeSection | Section.code | Composition.section.code |
| FRLMProcedures.titleSection | Section.title | Composition.section.title |
| FRLMProcedures.description | Section.text | Composition.section.text |
| FRLMProcedures.entry.procedure | Section.entry:frActe.procedure | Composition.section.entry (FRProcedureDocument) |
| **FRLMQRCode** | **FRCDACodeABarres** | **FRCompositionDocument.section:sectionQrCode** |
| FRLMQRCode.codeSection | Section.code | Composition.section.code |
| FRLMQRCode.titleSection | Section.title | Composition.section.title |
| FRLMQRCode.description | Section.text | Composition.section.text |
| FRLMQRCode.entry.observationMedia | Section.entry (FRCDAImageIllustrative) | Composition.section.entry (FRMediaDocument) |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | **FRCompositionDocument.section:sectionReasonForReferral** |
| FRLMReasonForReferral.codeSection | Section.code | Composition.section.code |
| FRLMReasonForReferral.titleSection | Section.title | Composition.section.title |
| FRLMReasonForReferral.description | Section.text | Composition.section.text |
| FRLMReasonForReferral.entry.observation | Section.entry:frSimpleObservation.observation | Composition.section.entry (Observation) |
| FRLMReasonForReferral.entry.problemes | Section.entry:frProbleme.observation | Composition.section.entry (FRConditionDocument) |
| **FRLMObservationResults** | **FRCDASectionResultats** | **FRCompositionDocument.section:sectionResults** |
| FRLMObservationResults.codeSection | Section.code | Composition.section.code |
| FRLMObservationResults.titleSection | Section.title | Composition.section.title |
| FRLMObservationResults.description | Section.text | Composition.section.text |
| FRLMObservationResults.entry.observationResult | Section.entry (FRCDAResultats) | Composition.section.entry (Observation) |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | **FRCompositionDocument.section:sectionSocialHistory** |
| FRLMSocialHistory.codeSection | Section.code | Composition.section.code |
| FRLMSocialHistory.titleSection | Section.title | Composition.section.title |
| FRLMSocialHistory.description | Section.text | Composition.section.text |
| FRLMSocialHistory.entry.observationSocialHistory | Section.entry (FRCDAHabitusModeDeVie) | Composition.section.entry (FRObservationSocialHistoryDocument) |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | **FRCompositionDocument.section:sectionHistory** |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | **FRDiagnosticReportImagingDocument.extension:historiqueMedical** |
| FRLMSupportingInformation.codeSection | Section.code | Composition.section.code |
| FRLMSupportingInformation.titleSection | Section.title | Composition.section.title |
| FRLMSupportingInformation.description | Section.text | Composition.section.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.previousResultsInformation |  | DiagnosticReport.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation (FRCDAObservationSurLaGrossesse) | Composition.section.entry (FRObservationPregnancyDocument) |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation (FRCDAObservationSurLaGrossesse) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (FRObservationContraIndicationsDocument) |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.condition |  | Composition.section.entry (FRConditionDocument) |
| FRLMSupportingInformation.entry.condition |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASectionSignesVitaux** | **FRCompositionDocument.section:sectionVitalSigns** |
| FRLMVitalSigns.titleSection | Section.title | Composition.section.title |
| FRLMVitalSigns.entry.observationVitalSign | Section.entry (FRCDASignesVitaux) | Composition.section.entry (FRObservationVitalSignsDocument) |

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
| FRLMAttachment.url | Observation.reference. externalDocument.text.reference | Consent.source[x]:sourceAttachment.url |
| FRLMAttachment.header.identifier | Observation.entryRelationship. observationMedia.id | Consent.source[x]:sourceAttachment.id |
| FRLMAttachment.data | Observation.entryRelationship. observationMedia.value | Consent.source[x]:sourceAttachment.data |
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
| FRLMAllergyIntolerance.period.onsetDate | Observation.effectiveTime | AllergyIntolerance.onset[x]:onsetPeriod.start |
| FRLMAllergyIntolerance.period.endDate | Observation.effectiveTime | AllergyIntolerance.onset[x]:onsetPeriod.end |
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
| **FRLMAttachment** | **FRCDADocumentAttache.component:frObservationMedia.observationMedia** | **FRDocumentReferenceDocument.content.attachment** |
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
| FRLMCarePlan.activity | SubstanceAdministration.entryRelationship | CarePlan.activity.reference |
| **FRLMCondition** | **FRCDAProbleme** | **FRConditionDocument** |
| FRLMCondition.header.identifier | Observation.id | Condition.identifier |
| FRLMCondition.type | Observation.code | Condition.category |
| FRLMCondition.problem | Observation.value | Condition.code |
| FRLMCondition.period | Observation.effectiveTime |  |
| FRLMCondition.period.onsetDate | Observation.effectiveTime | Condition.onset[x]:onsetDateTime |
| FRLMCondition.period.endDate | Observation.effectiveTime | Condition.abatement[x]:abatementDateTime |
| FRLMCondition.header.status | Observation.entryRelationship:frStatutDuProbleme | Condition.clinicalStatus |
| FRLMCondition.severity | Observation.entryRelationship:frSeverite | Condition.severity |
| FRLMCondition.diagnosisAssertionStatus | Observation.entryRelationship:frCertitude | Condition.verificationStatus |
| FRLMCondition.clinicalStatus | Observation.entryRelationship:frStatutCliniqueDuPatient | Condition.stage.summary |
| FRLMCondition.bodySite |  | Condition.bodySite |
| FRLMCondition.stage |  | Condition.stage.summary |
| FRLMCondition.reference | Observation.reference. externalDocument.text.reference | Condition.evidence.detail |
| FRLMCondition.note | Observation.entryRelationship:frCommentaireER | Condition.note |
| **FRLMDevice** | **FRCDADispositifMedical.participant.participantRole.playingDevice** | **Device** |
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
| FRLMDeviceUse.periodOfUse | Supply.effectiveTime | DeviceUseStatement.timing[x] |
| FRLMDeviceUse.periodOfUse.onsetDate | Supply.effectiveTime | DeviceUseStatement.timing[x] |
| FRLMDeviceUse.periodOfUse.endDate | Supply.effectiveTime | DeviceUseStatement.timing[x] |
| FRLMDeviceUse.periodOfUse.duration | Supply.expectedUseTime | DeviceUseStatement.timing[x] |
| FRLMDeviceUse.header.performer[x] | Supply.performer | DeviceUseStatement.extension:performer |
| FRLMDeviceUse.device | Supply.participant | DeviceUseStatement.device |
| FRLMDeviceUse.bodySite |  | DeviceUseStatement.bodySite |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecALD | DeviceUseStatement.reasonCode |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecALD | DeviceUseStatement.reasonReference (FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument) |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecAccidentTravail | DeviceUseStatement.reasonCode |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecAccidentTravail | DeviceUseStatement.reasonReference (FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument) |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecLaPrevention | DeviceUseStatement.reasonCode |
| FRLMDeviceUse.reason[x] | Supply.entryRelationship:frEnRapportAvecLaPrevention | DeviceUseStatement.reasonReference (FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument) |
| FRLMDeviceUse.reason[x] |  | DeviceUseStatement.reasonCode |
| FRLMDeviceUse.reason[x] |  | DeviceUseStatement.reasonReference (FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument) |
| FRLMDeviceUse.note | Supply.text | DeviceUseStatement.note |
| **FRLMEncounter** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMEncounter.header.identifier | Encounter.id | Encounter.identifier |
| FRLMEncounter.header.status | Encounter.statusCode | Encounter.status |
| FRLMEncounter.header.author[x] | Encounter.author | Encounter.participant.individual.extension:author |
| FRLMEncounter.participant | Encounter.participant | Encounter.participant |
| FRLMEncounter.type | Encounter.code | Encounter.class |
| FRLMEncounter.period | Encounter.effectiveTime | Encounter.period |
| FRLMEncounter.priority | Encounter.priorityCode | Encounter.priority |
| FRLMEncounter.participant | Encounter.participant:autresParticipants | Encounter.participant |
| FRLMEncounter.serviceProvider | Encounter.performer.assignedEntity | Encounter.serviceProvider |
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
| FRLMFamilyMemberHistory.relatedPerson | Organizer.subject | FamilyMemberHistory.relationship |
| FRLMFamilyMemberHistory.condition | Organizer.component.observation | FamilyMemberHistory.condition |
| FRLMFamilyMemberHistory.note | Organizer.sdtcText | FamilyMemberHistory.note |
| FRLMFamilyMemberHistory.condition.code | Observation.code | FamilyMemberHistory.condition.code |
| FRLMFamilyMemberHistory.condition.outcome | Observation.value | FamilyMemberHistory.condition.outcome |
| FRLMFamilyMemberHistory.condition.contributedToDeath | Observation.value | FamilyMemberHistory.condition.contributedToDeath |
| FRLMFamilyMemberHistory.condition.onset[x] | Observation.effectiveTime | FamilyMemberHistory.condition.onset[x] |
| FRLMFamilyMemberHistory.condition.bodySite | Observation.targetSiteCode | FamilyMemberHistory.condition.extension:bodySite |
| **FRLMProcedure** | **FRCDADICOMTechniqueImagerie** | **FRProcedureImagingDocument** |
| FRLMProcedure.header.identifier | Procedure.id | Procedure.identifier |
| FRLMProcedure.code | Procedure.code | Procedure.code |
| FRLMProcedure.header.status | Procedure.statusCode | Procedure.status |
| FRLMProcedure.procedureDate[x] | Procedure.effectiveTime | Procedure.performed[x] |
| FRLMProcedure.priority | Procedure.priorityCode | Procedure.extension:priority |
| FRLMProcedure.bodySite | Procedure.targetSiteCode | Procedure.bodySite |
| FRLMProcedure.bodySite | Procedure.targetSiteCode.qualifier | Procedure.bodySite |
| FRLMProcedure.approachSiteCode | Procedure.approachSiteCode | Procedure.extension:approachBodySite |
| FRLMProcedure.header.participant[x] | Procedure.participant | Procedure.extension:participant |
| **FRLMQuantityExposure** | **FRCDADICOMQuantite** | **FRObservationRadiationExposureDocument.component** |
| FRLMQuantityExposure.header. participant[x].participantProfessional |  | Observation.performer:professionnelAutorisantExposition |
| FRLMQuantityExposure.type | Observation.code | Observation.component.code |
| FRLMQuantityExposure.quantity | Observation.value | Observation.component.value[x] |
| FRLMQuantityExposure.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMQuantityExposure.bodySite | Observation.targetSiteCode | Observation.bodySite.extension:precisionTopographique |
| FRLMQuantityExposure.bodySite | Observation.targetSiteCode.qualifier | Observation.bodySite |
| FRLMQuantityExposure.bodySite | Observation.targetSiteCode.qualifier | Observation.bodySite.extension:precisionTopographique |
| **FRLMSeries** | **FRCDADICOMSerieImagerie** | **FRImagingStudyDocument** |
| FRLMSeries.seriesUid | Act.id | ImagingStudy.series.uid |
| FRLMSeries.number |  | ImagingStudy.series.number |
| FRLMSeries.seriesModality | Act.code.qualifier | ImagingStudy.series.modality |
| FRLMSeries.bodySite |  | ImagingStudy.series.bodySite |
| FRLMSeries.specimen |  | ImagingStudy.series.specimen |
| FRLMSeries.numberOfInstances |  | ImagingStudy.series.numberOfInstances |
| FRLMSeries.seriesEndpoint | Act.entryRelationship.observation | ImagingStudy.series.endpoint |
| FRLMSeries.started | Act.effectiveTime | ImagingStudy.series.started |
| FRLMSeries.instanceSOP | Act.entryRelationship.observation | ImagingStudy.series.instance |
| FRLMSOPInstance.header.identifier | Observation.id | ImagingStudy.series.instance.uid |
| FRLMSOPInstance.sopClass | Observation.code | ImagingStudy.series.instance.sopClass |
| FRLMSOPInstance.instanceNumber |  | ImagingStudy.series.instance.number |
| FRLMSOPInstance.numberOfFrames |  | ImagingStudy.series.instance.extension:number-of-frames |
| FRLMEndpoint.connectionType | Observation.text.reference |  |
| FRLMEndpoint.payloadType | Observation.text.mediaType |  |
| FRLMEndpoint.address | Observation.text.reference |  |
| **FRLMImagingStudy** | **FRCDADICOMExamenImagerie** | **FRImagingStudyDocument** |
| FRLMImagingStudy.header.identifier | Act.id | ImagingStudy.identifier |
| FRLMImagingStudy.modality | Act.code.qualifier | ImagingStudy.modality |
| FRLMImagingStudy.bodySite |  | ImagingStudy.series.bodySite |
| FRLMImagingStudy.encounter |  | ImagingStudy.encounter |
| FRLMImagingStudy.started | Act.effectiveTime | ImagingStudy.started |
| FRLMImagingStudy.basedOn |  | ImagingStudy.basedOn |
| FRLMImagingStudy.numberOfSeries |  | ImagingStudy.numberOfSeries |
| FRLMImagingStudy.numberOfInstances |  | ImagingStudy.numberOfInstances |
| FRLMImagingStudy.studyCustodian |  | ImagingStudy.series.performer.actor |
| FRLMImagingStudy.studyEndpoint |  | ImagingStudy.endpoint |
| FRLMImagingStudy.series |  | ImagingStudy.series |
| **FRLMImmunisation** | **FRCDAVaccination** | **FRImmunizationDocument** |
| FRLMImmunisation.header.identifier | SubstanceAdministration.id | Immunization.identifier |
| FRLMImmunisation.header.status | SubstanceAdministration.statusCode | Immunization.status |
| FRLMImmunisation.periodOfImmunisation | SubstanceAdministration.effectiveTime | Immunization.occurrence[x] |
| FRLMImmunisation.periodOfImmunisation.startDate | SubstanceAdministration.effectiveTime | Immunization.occurrence[x] |
| FRLMImmunisation.periodOfImmunisation.endDate | SubstanceAdministration.effectiveTime |  |
| FRLMImmunisation.diseaseOrAgentTargeted | SubstanceAdministration.entryRelationship:frProbleme | Immunization.protocolApplied.targetDisease |
| FRLMImmunisation.administeredProduct | SubstanceAdministration.consumable (FRCDAProduitDeSante) | Immunization.vaccineCode |
| FRLMImmunisation.route | SubstanceAdministration.routeCode | Immunization.route |
| FRLMImmunisation.site | SubstanceAdministration.approachSiteCode | Immunization.site |
| FRLMImmunisation.doseQuantity | SubstanceAdministration.doseQuantity | Immunization.doseQuantity |
| FRLMImmunisation.doseNumber | SubstanceAdministration.entryRelationship:frRangDeLaVaccination | Immunization.protocolApplied.doseNumber[x]:doseNumberPositiveInt |
| FRLMImmunisation.note | SubstanceAdministration.entryRelationship:frCommentaireER | Immunization.note |
| FRLMImmunisation.prescription | SubstanceAdministration.entryRelationship:frPrescription | Immunization.extension:basedOnRequestR5 |
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
| FRLMIsolatMicrobiologique.valideur | Organizer.participant (Authenticator (CDA participant) : participant/@typeCode='AUTHEN') |  |
| FRLMIsolatMicrobiologique.responsable | Organizer.participant (Responsible Party (CDA participant) : participant/@typeCode='RESP') |  |
| FRLMIsolatMicrobiologique.dispositifAutomatique | Organizer.participant (Device (CDA participant) : participant/@typeCode='DEV') |  |
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
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | Observation.participant (Authenticator (CDA participant) : participant/@typeCode='AUTHEN') |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | Observation.participant (Responsible Party (CDA participant) : participant/@typeCode='RESP') |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | Observation.participant (Device (CDA participant) : participant/@typeCode='DEV') |  |
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
| FRLMResultatsExamensBiologieMedicale.valideur | Act.participant (Authenticator (CDA participant) : participant/@typeCode='AUTHEN') |  |
| FRLMResultatsExamensBiologieMedicale.responsable | Act.participant (Responsible Party (CDA participant) : participant/@typeCode='RESP') |  |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | Act.participant (Device (CDA participant) : participant/@typeCode='DEV') |  |
| FRLMResultatsExamensBiologieMedicale.prelevement | Act.entryRelationship:frPrelevement |  |
| FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale | Act.entryRelationship:frBatterieExamensDeBiologieMedicale |  |
| FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique | Act.entryRelationship:frIsolatMicrobiologique |  |
| FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent | Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMResultatsExamensBiologieMedicale.imageIllustrative | Act.entryRelationship:frImageIllustrative |  |
| FRLMResultatsExamensBiologieMedicale.commentaire | Act.entryRelationship:frCommentaireER |  |
| **FRLMObservationMedia** | **FRCDAImageIllustrative** | **FRMediaDocument** |
| FRLMObservationMedia.header.identifier | ObservationMedia.id | Media.identifier |
| FRLMObservationMedia.content.data | ObservationMedia.value | Media.content.data |
| FRLMObservationMedia.content.contentType | ObservationMedia.value | Media.content.contentType |
| FRLMObservationMedia.subject | ObservationMedia.subject | Media.subject (FRPatientINSDocument / FRSpecimenDocument) |
| FRLMObservationMedia.subject | ObservationMedia.specimen | Media.subject (FRPatientINSDocument / FRSpecimenDocument) |
| FRLMObservationMedia.note |  | Media.note |
| FRLMObservationMedia.header.performer[x] | ObservationMedia.performer | Media.operator |
| FRLMObservationMedia.header.participant[x] | ObservationMedia.participant |  |
| FRLMObservationMedia.header.author[x] | ObservationMedia.author |  |
| FRLMObservationMedia.header.informant | ObservationMedia.informant |  |
| **FRLMMedicationAdministration** | **FRCDATraitement** | **FRMedicationAdministrationDocument** |
| FRLMMedicationAdministration.medication | SubstanceAdministration.consumable | MedicationAdministration.medication[x] |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime | MedicationAdministration.effective[x] |
| FRLMMedicationAdministration.occurrence[x] | SubstanceAdministration.effectiveTime | MedicationAdministration.extension:occurenceR5 |
| FRLMMedicationAdministration.reason[x] | SubstanceAdministration.entryRelationship:frReferenceInterne | MedicationAdministration.reasonCode |
| FRLMMedicationAdministration.reason[x] | SubstanceAdministration.entryRelationship:frReferenceInterne | MedicationAdministration.reasonReference |
| FRLMMedicationAdministration.dosage | SubstanceAdministration.text | MedicationAdministration.dosage |
| FRLMMedicationAdministration.note | SubstanceAdministration.text | MedicationAdministration.note |
| FRLMDosageInstructions.renderedDosageInstruction | SubstanceAdministration.text | MedicationAdministration.dosage.text |
| FRLMDosageInstructions.dosageDetails.sequence |  | MedicationAdministration.dosage.extension:sequence |
| FRLMDosageInstructions.dosageDetails.note | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMDosageInstructions.dosageDetails. doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationAdministration.dosage.dose |
| FRLMDosageInstructions.dosageDetails. doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationAdministration.dosage.rate[x] |
| FRLMDosageInstructions.dosageDetails.frequency | SubstanceAdministration.effectiveTime:effectiveTimeFrequence |  |
| FRLMDosageInstructions.dosageDetails. frequency.numberOfTimes | SubstanceAdministration.effectiveTime:effectiveTimeFrequence |  |
| FRLMDosageInstructions.dosageDetails. frequency.period | SubstanceAdministration.effectiveTime:effectiveTimeFrequence |  |
| FRLMDosageInstructions.dosageDetails. frequency.dayOfWeek | SubstanceAdministration.effectiveTime:effectiveTimeFrequence |  |
| FRLMDosageInstructions.dosageDetails. frequency.timeOfDay | SubstanceAdministration.effectiveTime:effectiveTimeFrequence |  |
| FRLMDosageInstructions.dosageDetails. frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMDosageInstructions.dosageDetails.dateOfAdministration |  |  |
| FRLMDosageInstructions.dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition |  |
| FRLMDosageInstructions.dosageDetails.date[x] | SubstanceAdministration.effectiveTime:effectiveTimeDuree |  |
| FRLMDosageInstructions.dosageDetails.duration |  |  |
| FRLMDosageInstructions.dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient |  |
| FRLMDosageInstructions.dosageDetails.eventEndSequence |  |  |
| FRLMDosageInstructions.dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationAdministration.dosage.site |
| FRLMDosageInstructions.dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationAdministration.dosage.route |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity.numerator |  |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity.denominator |  |
| FRLMDosageInstructions.dosageDetails.maxDosePerAdministration |  |  |
| FRLMDosageInstructions.dosageDetails.maxLifetimeDose |  |  |
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
| FRLMMedication.identifyingCode[x] | ManufacturedProduct.manufacturedMaterial.code | Medication.code |
| FRLMMedication.classification | ManufacturedProduct.manufacturedMaterial.asSpecializedKind | Medication.extension:classification |
| FRLMMedication.productName | ManufacturedProduct.manufacturedMaterial.name | Medication.extension:productName |
| FRLMMedication.marketingAuthorisationHolder |  | Medication.manufacturer |
| FRLMMedication.item.doseForm | ManufacturedProduct.manufacturedMaterial.formCode | Medication.form |
| FRLMMedication.item. ingredient.isActive |  | Medication.ingredient.isActive |
| FRLMMedication.item. ingredient.substance | ManufacturedProduct.manufacturedMaterial. ingredient.ingredient.code | Medication.ingredient.item[x]:itemCodeableConcept |
| FRLMMedication.item. ingredient.strengthInfo.strength | ManufacturedProduct.manufacturedMaterial. ingredient.quantity | Medication.ingredient.strength |
| FRLMMedication.item. ingredient.strengthInfo.basisOfStrengthSubstance |  | Medication.ingredient.strength.extension:basisOfStrengthSubstance |
| FRLMMedication.item.unitOfPresentation | ManufacturedProduct.manufacturedMaterial. asContent.containerPackagedMedicine.formCode | Medication.extension:unitOfPresentation |
| FRLMMedication.item.containedQuantity |  | Medication.extension:sizeOfItem |
| FRLMMedication.item.amount | ManufacturedProduct.manufacturedMaterial. asContent.containerPackagedMedicine.capacityQuantity | Medication.amount |
| FRLMMedication.item.packageType | ManufacturedProduct.manufacturedMaterial. asContent.containerPackagedMedicine |  |
| FRLMMedication.device |  |  |
| FRLMMedication.characteristic |  | Medication.extension:conditionnement |
| FRLMMedication.batch.lotNumber | ManufacturedProduct.manufacturedMaterial.lotNumberText | Medication.batch.lotNumber |
| FRLMMedication.batch.expirationDate | ManufacturedProduct.manufacturedMaterial.expirationTime | Medication.batch.expirationDate |
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
| FRLMMedicationUse.treatmentStatus |  | MedicationStatement.note.extension:adherence |
| FRLMMedicationUse.changeType |  |  |
| FRLMMedicationUse.medication | SubstanceAdministration.consumable | MedicationStatement.medication[x] |
| FRLMMedicationUse.reason[x] | SubstanceAdministration.entryRelationship:frReferenceInterne | MedicationStatement.reasonCode |
| FRLMMedicationUse.dosageInstructions | SubstanceAdministration.text | MedicationStatement.dosage |
| FRLMMedicationUse.derivedFrom[x] | SubstanceAdministration.entryRelationship:frPrescription | MedicationStatement.derivedFrom |
| FRLMMedicationUse.note | SubstanceAdministration.text | MedicationStatement.note |
| FRLMDosageInstructions.renderedDosageInstruction | SubstanceAdministration.text | MedicationStatement.dosage.text |
| FRLMDosageInstructions.dosageDetails. doseAndRate.dose[x] | SubstanceAdministration.doseQuantity | MedicationStatement.dosage.doseAndRate.dose[x] |
| FRLMDosageInstructions.dosageDetails. doseAndRate.rate[x] | SubstanceAdministration.rateQuantity | MedicationStatement.dosage.doseAndRate.rate[x] |
| FRLMDosageInstructions.dosageDetails.frequency | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails. frequency.numberOfTimes | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails. frequency.period | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails. frequency.dayOfWeek | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails. frequency.timeOfDay | SubstanceAdministration.effectiveTime:effectiveTimeFrequence | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails. frequency.additionalInstructions | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationStatement.dosage.additionalInstruction |
| FRLMDosageInstructions.dosageDetails.dateOfAdministration |  | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails.conditionOfAdministration | SubstanceAdministration.precondition | MedicationStatement.dosage.asNeeded[x] |
| FRLMDosageInstructions.dosageDetails.date[x] | SubstanceAdministration.effectiveTime:effectiveTimeDuree | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails.duration |  | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails.eventTime | SubstanceAdministration.entryRelationship:frInstructionsAuPatient | MedicationStatement.dosage.timing |
| FRLMDosageInstructions.dosageDetails.eventEndSequence |  |  |
| FRLMDosageInstructions.dosageDetails.bodySite | SubstanceAdministration.approachSiteCode | MedicationStatement.dosage.site |
| FRLMDosageInstructions.dosageDetails.routeOfAdministration | SubstanceAdministration.routeCode | MedicationStatement.dosage.route |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.quantity | SubstanceAdministration.maxDoseQuantity.numerator | MedicationStatement.dosage.maxDosePerPeriod |
| FRLMDosageInstructions.dosageDetails. maxDosePerPeriod.duration | SubstanceAdministration.maxDoseQuantity.denominator | MedicationStatement.dosage.maxDosePerPeriod |
| FRLMDosageInstructions.dosageDetails.maxDosePerAdministration |  | MedicationStatement.dosage.maxDosePerAdministration |
| FRLMDosageInstructions.dosageDetails.maxLifetimeDose |  | MedicationStatement.dosage.maxDosePerLifetime |
| **FRLMObservationAssessment** | **FRCDAEvaluation** | **FRObservationAssessmentDocument** |
| FRLMObservationAssessment.header.identifier | Observation.id | Observation.identifier |
| FRLMObservationAssessment.header.status | Observation.statusCode | Observation.status.extension:statusReason |
| FRLMObservationAssessment.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservationAssessment.type | Observation.code | Observation.code |
| FRLMObservationAssessment.method |  | Observation.method |
| FRLMObservationAssessment.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservationAssessment.result | Observation.value | Observation.value[x] |
| FRLMObservationAssessment.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservationAssessment.note | Observation.text | Observation.note |
| FRLMObservationAssessment.component | Observation.entryRelationship:frEvaluationComposant | Observation.component |
| **FRLMObservation** | **FRCDASimpleObservation** | **Observation** |
| FRLMObservation.header.status | Observation.statusCode | Observation.status |
| FRLMObservation.header.directSubject[x] | Observation.subject | Observation.focus |
| FRLMObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservation.type | Observation.code | Observation.code |
| FRLMObservation.originalName | Observation.text | Observation.note |
| FRLMObservation.method | Observation.methodCode | Observation.method |
| FRLMObservation.specimen | Observation.specimen | Observation.specimen |
| FRLMObservation.order | Observation.sdtcInFulfillmentOf1 | Observation.basedOn |
| FRLMObservation.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservation.result | Observation.value | Observation.value[x] |
| FRLMObservation.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservation.note | Observation.text | Observation.note |
| FRLMObservation.component |  | Observation.component |
| FRLMObservation.derivedFrom[x] | Observation.entryRelationship | Observation.derivedFrom:FRImagingStudyDocument |
| FRLMObservation.derivedFrom[x] | Observation.entryRelationship | Observation.derivedFrom:FRObservationLaboratoryReportResultsDocument |
| FRLMObservation.derivedFrom[x] | Observation.entryRelationship | Observation.derivedFrom:Observation |
| FRLMObservation.hasMember[x] | Observation.entryRelationship | Observation.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMObservation.hasMember[x] | Observation.entryRelationship | Observation.hasMember:Observation |
| **FRLMMicroOrganismSearch** | **FRCDARechercheDeMicroOrganismes** | **FRObservationMicroorganismDetectionDocument** |
| FRLMMicroOrganismSearch.header.identifier | Observation.id | Observation.identifier |
| FRLMMicroOrganismSearch.header.subject | Observation.subject | Observation.subject |
| FRLMMicroOrganismSearch.header.author[x] | Observation.author | Observation.extension:author |
| FRLMMicroOrganismSearch.header.performer[x] | Observation.performer | Observation.performer |
| FRLMMicroOrganismSearch.header.participant[x] | Observation.participant | Observation.extension:author |
| FRLMMicroOrganismSearch.header.informant | Observation.informant | Observation.extension:author |
| FRLMMicroOrganismSearch.header.date | Observation.effectiveTime | Observation.issued |
| FRLMMicroOrganismSearch.header.status | Observation.statusCode | Observation.status |
| FRLMMicroOrganismSearch.header.language | Observation.languageCode | Observation.language |
| FRLMMicroOrganismSearch.header.source |  |  |
| FRLMMicroOrganismSearch.header.date | Observation.effectiveTime | Observation.issued |
| FRLMMicroOrganismSearch.type | Observation.code | Observation.code |
| FRLMMicroOrganismSearch.result | Observation.value | Observation.value[x] |
| **FRLMMultidrugResistantMicroorganismIdentification** | **FRCDAIdentificationMicroOrganismesMultiresistants** | **FRObservationMultidrugResistantMicroorganismIdentification** |
| FRLMMultidrugResistantMicroorganismIdentification.header.identifier | Observation.id | Observation.identifier |
| FRLMMultidrugResistantMicroorganismIdentification.header.subject | Observation.subject | Observation.subject |
| FRLMMultidrugResistantMicroorganismIdentification.header.author[x] | Observation.author | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.performer[x] | Observation.performer | Observation.performer |
| FRLMMultidrugResistantMicroorganismIdentification.header.participant[x] | Observation.participant | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.informant | Observation.informant | Observation.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.date | Observation.effectiveTime | Observation.issued |
| FRLMMultidrugResistantMicroorganismIdentification.header.status | Observation.statusCode | Observation.status |
| FRLMMultidrugResistantMicroorganismIdentification.header.language | Observation.languageCode | Observation.language |
| FRLMMultidrugResistantMicroorganismIdentification.header.source |  |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.date | Observation.effectiveTime | Observation.issued |
| FRLMMultidrugResistantMicroorganismIdentification.type | Observation.code | Observation.code |
| FRLMMultidrugResistantMicroorganismIdentification.result | Observation.value | Observation.value[x] |
| **FRLMPregnancyObservation** | **FRCDAObservationSurLaGrossesse** | **FRObservationPregnancyDocument** |
| FRLMPregnancyObservation.header.status | Observation.statusCode |  |
| FRLMPregnancyObservation.directSubject[x] | Observation.subject | Observation.subject |
| FRLMPregnancyObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMPregnancyObservation.type | Observation.code | Observation.code |
| FRLMPregnancyObservation.method | Observation.methodCode | Observation.method |
| FRLMPregnancyObservation.result | Observation.value | Observation.value[x] |
| FRLMPregnancyObservation.result.dataAbsentReason | Observation.nullFlavor | Observation.dataAbsentReason |
| FRLMPregnancyObservation.result.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMPregnancyObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMPregnancyObservation.note | Observation.text | Observation.note |
| FRLMPregnancyObservation.component |  | Observation.component |
| FRLMPregnancyObservation.derivedFrom[x] |  | Observation.derivedFrom (Observation / FRObservationLaboratoryReportResultsDocument / FRImagingStudyDocument) |
| FRLMPregnancyObservation.hasMember[x] |  | Observation.hasMember (FRObservationLaboratoryReportResultsDocument / Observation) |
| **FRLMObservation** | **FRCDAResultat** | **FRObservationResultDocument** |
| FRLMObservation.header.identifier | Observation.id | Observation.identifier |
| FRLMObservation.header.status | Observation.statusCode | Observation.status |
| FRLMObservation.header.directSubject[x] | Observation.subject | Observation.focus |
| FRLMObservation.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservation.type | Observation.code | Observation.code |
| FRLMObservation.originalName | Observation.text | Observation.code |
| FRLMObservation.method | Observation.methodCode | Observation.method |
| FRLMObservation.specimen | Observation.specimen | Observation.specimen |
| FRLMObservation.order | Observation.sdtcInFulfillmentOf1 | Observation.basedOn:serviceRequestAccessionNumber |
| FRLMObservation.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservation.result | Observation.value | Observation.value[x] |
| FRLMObservation.referenceRange | Observation.referenceRange | Observation.referenceRange |
| FRLMObservation.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservation.note |  | Observation.note |
| FRLMObservation.component |  | Observation.component |
| FRLMObservation.derivedFrom[x] |  | Observation.derivedFrom |
| FRLMObservation.hasMember[x] |  | Observation.hasMember |
| **FRLMObservationSocialHistory** | **FRCDAHabitusModeDeVie** | **FRObservationSocialHistoryDocument** |
| FRLMObservationSocialHistory.header.status | Observation.statusCode | Observation.status |
| FRLMObservationSocialHistory.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservationSocialHistory.type | Observation.code | Observation.code |
| FRLMObservationSocialHistory.result | Observation.value | Observation.value[x] |
| FRLMObservationSocialHistory.note | Observation.text | Observation.note |
| **FRLMObservationVitalSign** | **FRCDASigneVitalObserve** | **FRObservationVitalSignsDocument** |
| FRLMObservationVitalSign.header.identifier | Observation.id | Observation.identifier |
| FRLMObservationVitalSign.observationDate[x] | Observation.effectiveTime | Observation.effective[x] |
| FRLMObservationVitalSign.type | Observation.code | Observation.code |
| FRLMObservationVitalSign.header.status | Observation.statusCode | Observation.status |
| FRLMObservationVitalSign.method | Observation.methodCode | Observation.method |
| FRLMObservationVitalSign.bodySite | Observation.targetSiteCode | Observation.bodySite |
| FRLMObservationVitalSign.result | Observation.value | Observation.component.value[x] |
| FRLMObservationVitalSign.interpretation | Observation.interpretationCode | Observation.interpretation |
| FRLMObservationVitalSign.note | Observation.text | Observation.note |
| FRLMObservationVitalSign.header.author[x] | Observation.author | Observation.extension:author |
| **FRLMParticipant** | **FRCDAParticipant** | **FRActorExtension** |
| FRLMParticipant.type | Participant2.typeCode | Extension.extension:typeCode.value[x] |
| FRLMParticipant.period | Participant2.time |  |
| FRLMParticipant.identifier | ParticipantRole.id | Extension.extension:actor.value[x] |
| FRLMParticipant.name | ParticipantRole.playingEntity | Extension.extension:actor.value[x] |
| FRLMParticipant.role | ParticipantRole.code | Extension.extension:actor.value[x] |
| FRLMParticipant.participant.participantProfessional | ParticipantRole.playingEntity | Extension.extension:actor.value[x] |
| FRLMParticipant.participant.participantDevice | ParticipantRole.playingDevice | Extension.extension:actor.value[x] |
| FRLMParticipant.participant.participantOrganisation | ParticipantRole.scopingEntity | Extension.extension:actor.value[x] |
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
| FRLMProcedure.bodySite | Procedure.targetSiteCode | Procedure.bodySite |
| FRLMProcedure.approachSiteCode | Procedure.approachSiteCode | Procedure.extension:approachBodySite |
| FRLMProcedure.difficulty | Procedure.entryRelationship:frSimpleObservationDifficulte | Procedure.extension:difficulte |
| FRLMProcedure.reason[x] | Procedure.entryRelationship:frReferenceInterneMotifActe | Procedure.reasonCode |
| FRLMProcedure.reason[x] | Procedure.entryRelationship:frReferenceInterneMotifActe | Procedure.reasonReference |
| FRLMProcedure.outcome |  | Procedure.outcome |
| FRLMProcedure.complication |  | Procedure.complication |
| FRLMProcedure.deviceUsed | Procedure.entryRelationship:frReferenceInterneDM | Procedure.usedReference |
| FRLMProcedure.focalDevice |  | Procedure.focalDevice.manipulated |
| FRLMProcedure.note | Procedure.text | Procedure.note |
| **FRLMAddendum** | **FRCDADicomAddendum** | **FRCompositionDocument.section:sectionAddendum** |
| FRLMAddendum.codeSection | Section.code | Composition.section.code |
| FRLMAddendum.titleSection | Section.title | Composition.section.title |
| FRLMAddendum.description | Section.text | Composition.section.text |
| FRLMAddendum.author[x] | Section.author | Composition.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | **FRCompositionDocument.section:sectionAdvanceDirectives** |
| FRLMAdvanceDirectives.codeSection | Section.code | Composition.section.code |
| FRLMAdvanceDirectives.titleSection | Section.title | Composition.section.title |
| FRLMAdvanceDirectives.description | Section.text | Composition.section.text |
| FRLMAdvanceDirectives.entry.advanceDirective | Section.entry (FRCDADirectiveAnticipee) | Composition.section.entry (FRAdvanceDirectiveDocument) |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | **FRCompositionDocument.section:sectionAlerts** |
| FRLMAlerts.codeSection | Section.code | Composition.section.code |
| FRLMAlerts.titleSection | Section.title | Composition.section.title |
| FRLMAlerts.description | Section.text | Composition.section.text |
| FRLMAlerts.entry.alert |  | Composition.section.entry (Flag) |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | **FRCompositionDocument.section:sectionAllergiesAndIntolerances** |
| FRLMAllergiesAndIntolerances.codeSection | Section.code | Composition.section.code |
| FRLMAllergiesAndIntolerances.titleSection | Section.title | Composition.section.title |
| FRLMAllergiesAndIntolerances.description | Section.text | Composition.section.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance | Section.entry (FRCDAAllergieOuHypersensibilite) | Composition.section.entry (FRAllergyIntoleranceDocument) |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | **FRCompositionDocument.section:sectionAttachments** |
| FRLMAttachments.codeSection | Section.code | Composition.section.code |
| FRLMAttachments.titleSection | Section.title | Composition.section.title |
| FRLMAttachments.description | Section.text | Composition.section.text |
| FRLMAttachments.entry.attachment | Section.entry:frDocumentAttache | Composition.section.entry (FRDocumentReferenceDocument) |
| FRLMAttachments.entry.observation | Section.entry:frSimpleObservation | Composition.section.entry (Observation) |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | **FRCompositionDocument.section:sectionPlanOfCare** |
| FRLMCarePlans.codeSection | Section.code | Composition.section.code |
| FRLMCarePlans.titleSection | Section.title | Composition.section.title |
| FRLMCarePlans.description | Section.text | Composition.section.text |
| FRLMCarePlans.entry.carePlans | Section.entry | Composition.section.entry |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | **FRCompositionDocument.section:sectionComparison** |
| FRLMComparisonStudy.codeSection | Section.code | Composition.section.code |
| FRLMComparisonStudy.titleSection | Section.title | Composition.section.title |
| FRLMComparisonStudy.description | Section.text | Composition.section.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | **FRDiagnosticReportImagingDocument.conclusion** |
| **FRLMConclusion** | **FRCDADICOMConclusion** | **FRCompositionDocument.section:sectionImpression** |
| FRLMConclusion.codeSection | Section.code |  |
| FRLMConclusion.description | Section.text |  |
| FRLMConclusion.titleSection | Section.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | DiagnosticReport.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | **FRCompositionDocument.section:sectionImagingStudy** |
| FRLMDicomStudyMetadata.titleSection | Section.title | Composition.section.title |
| FRLMDicomStudyMetadata.codeSection | Section.code | Composition.section.code |
| FRLMDicomStudyMetadata.description | Section.text | Composition.section.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | Section.entry (FRCDADICOMExamenImagerie) | Composition.section.entry (FRImagingStudyDocument) |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | Section.code |  |
| FRLMExaminationReport.titleSection | Section.title |  |
| FRLMExaminationReport.description | Section.text |  |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry:frDicomTechniqueImagerie.procedure | Composition.section.entry (FRProcedureImagingDocument) |
| FRLMExaminationReport.entry.imagingProcedures | Section.entry:frDicomTechniqueImagerie.procedure | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration | Composition.section.entry (FRMedicationAdministrationDocument) |
| FRLMExaminationReport.entry.medicationAdministrations | Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration | DiagnosticReport.extension:procedure |
| FRLMExaminationReport.entry.adverseReactions |  | Composition.section.entry (FRAllergyIntoleranceDocument) |
| **FRLMExaminationReport.subSection.conclusion** | **Section (FRCDASectionDICOMConclusion)** | **Composition.section (FRCompositionDocument.section:sectionImpression)** |
| **FRLMExaminationReport.subSection.conclusion** | **Section (FRCDASectionDICOMConclusion)** | **DiagnosticReport.conclusion (FRDiagnosticReportImagingDocument.conclusion)** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **Composition.section.entry (Observation)** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **Composition.section.text** |
| **FRLMExaminationReport.entry.results[x]** | **Section (FRCDADICOMResultats)** | **DiagnosticReport.result** |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | **FRCompositionDocument.section:sectionExposureRadiation** |
| FRLMExposureInformation.codeSection | Section.code | Composition.section.code |
| FRLMExposureInformation.titleSection | Section.title | Composition.section.title |
| FRLMExposureInformation.description | Section.text | Composition.section.text |
| FRLMExposureInformation.entry.quantityExposure | Section.entry:frDicomQuantite.observation | Composition.section.entry (FRObservationRadiationExposureDocument) |
| FRLMExposureInformation.entry.radiopharmaceuticalAdministration | Section.entry:frDicomAdministrationRadiopharmaceutique.substanceAdministration | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMFamilyMedicalHistory** | **FRCDASectionAntecedentsFamiliaux** | **FRCompositionDocument.section:sectionFamilyMedicalHistory** |
| FRLMFamilyMedicalHistory.codeSection | Section.code | Composition.section.code |
| FRLMFamilyMedicalHistory.titleSection | Section.title | Composition.section.title |
| FRLMFamilyMedicalHistory.description | Section.text | Composition.section.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | Section.entry (FRCDAAntecedentsFamiliaux) | Composition.section.entry (FRFamilyMemberHistoryDocument) |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | **FRCompositionDocument.section:sectionFunctionalStatus** |
| FRLMFunctionalStatus.codeSection | Section.code | Composition.section.code |
| FRLMFunctionalStatus.titleSection | Section.title | Composition.section.title |
| FRLMFunctionalStatus.description | Section.text | Composition.section.text |
| FRLMFunctionalStatus.author[x] | Section.author | Composition.author |
| FRLMFunctionalStatus.informant | Section.informant | Composition.extension:informant |
| FRLMFunctionalStatus.entry.assessment | Section.entry (FRCDAEvaluation) | Composition.section.entry (FRObservationAssessmentDocument) |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | **FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors** |
| FRLMHazardousWorkingConditions.codeSection | Section.code | Composition.section.code |
| FRLMHazardousWorkingConditions.titleSection | Section.title | Composition.section.title |
| FRLMHazardousWorkingConditions.description | Section.text | Composition.section.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | **FRCompositionDocument.section:sectionDischargeMedications** |
| FRLMHospitalDischargeMedications.codeSection | Section.code | Composition.section.code |
| FRLMHospitalDischargeMedications.titleSection | Section.title | Composition.section.title |
| FRLMHospitalDischargeMedications.description | Section.text | Composition.section.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications | Section.entry (FRCDATraitement) | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMImmunisations** | **FRCDAVaccinations** | **FRCompositionDocument.section:sectionImmunizations** |
| FRLMImmunisations.codeSection | Section.code | Composition.section.code |
| FRLMImmunisations.titleSection | Section.title | Composition.section.title |
| FRLMImmunisations.description | Section.text | Composition.section.text |
| FRLMImmunisations.entry.immunisation | Section.entry (FRCDAVaccination) | Composition.section.entry (FRImmunizationDocument) |
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
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | **FRCompositionDocument.section:sectionMedicalDevicePrescription** |
| FRLMMedicalDevicePrescriptions.author[x] | Section.author | Composition.section.author |
| FRLMMedicalDevicePrescriptions.codeSection | Section.code | Composition.section.code |
| FRLMMedicalDevicePrescriptions.titleSection | Section.title | Composition.section.title |
| FRLMMedicalDevicePrescriptions.description | Section.text | Composition.section.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse | Section.entry (FRCDADispositifMedical) | Composition.section.entry (FRDeviceUseStatementDocument) |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | **FRCompositionDocument.section:sectionMedicalDevices** |
| FRLMMedicalDevicesAndImplants.codeSection | Section.code | Composition.section.code |
| FRLMMedicalDevicesAndImplants.titleSection | Section.title | Composition.section.title |
| FRLMMedicalDevicesAndImplants.description | Section.text | Composition.section.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | Section.entry (FRCDADispositifMedical) | Composition.section.entry (FRDeviceUseStatementDocument) |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | **FRCompositionDocument.section:sectionMedicalHistory** |
| FRLMHistoryOfPastIllness.codeSection | Section.code | Composition.section.code |
| FRLMHistoryOfPastIllness.titleSection | Section.title | Composition.section.title |
| FRLMHistoryOfPastIllness.description | Section.text | Composition.section.text |
| FRLMHistoryOfPastIllness.entry.problem | Section.entry (FRCDAProbleme) | Composition.section.entry (FRConditionDocument) |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | **FRCompositionDocument.section:sectionMedicationDispense** |
| FRLMMedicationDispensations.codeSection | Section.code | Composition.section.code |
| FRLMMedicationDispensations.description | Section.text | Composition.section.text |
| FRLMMedicationDispensations.titleSection | Section.title | Composition.section.title |
| FRLMMedicationDispensations.entry.medicationDispense | Section.entry (FRCDATraitementDispense) | Composition.section.entry (FRMedicationDispenseDocument) |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | **FRCompositionDocument.section:sectionMedicationRequest** |
| FRLMMedicationPrescription.author[x] | Section.author | Composition.section.author |
| FRLMMedicationPrescription.codeSection | Section.code | Composition.section.code |
| FRLMMedicationPrescription.titleSection | Section.title | Composition.section.title |
| FRLMMedicationPrescription.description | Section.text | Composition.section.text |
| FRLMMedicationPrescription.entry.prescriptionItem | Section.entry (FRCDATraitementPrescrit) | Composition.section.entry (FRMedicationRequestDocument) |
| **FRLMMedicationSummary** | **FRCDATraitements** | **FRCompositionDocument.section:sectionMedications** |
| FRLMMedicationSummary.codeSection | Section.code | Composition.section.code |
| FRLMMedicationSummary.titleSection | Section.title | Composition.section.title |
| FRLMMedicationSummary.description | Section.text | Composition.section.text |
| FRLMMedicationSummary.entry.medicationAdministration | Section.entry (FRCDATraitement) | Composition.section.entry (FRMedicationAdministrationDocument) |
| **FRLMNote** | **FRCDACommentaireNonCode** | **FRCompositionDocument.section:sectionNote** |
| FRLMNote.codeSection | Section.code | Composition.section.code |
| FRLMNote.titleSection | Section.title | Composition.section.title |
| FRLMNote.description | Section.text | Composition.section.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | **FRCompositionDocument.section:sectionOrder** |
| FRLMOrderInformation.titleSection | Section.title | Composition.section.title |
| FRLMOrderInformation.description | Section.text | Composition.section.text |
| FRLMOrderInformation.codeSection | Section.code | Composition.section.code |
| FRLMOrderInformation.entry.orderInformation |  | Composition.section.entry (FRServiceRequestDocument) |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | **FRCompositionDocument.section:sectionPatientEducation** |
| FRLMPatientEducation.codeSection | Section.code | Composition.section.code |
| FRLMPatientEducation.titleSection | Section.title | Composition.section.title |
| FRLMPatientEducation.description | Section.text | Composition.section.text |
| FRLMPatientEducation.entry.procedure | Section.entry:frActe.procedure | Composition.section.entry (FRProcedureDocument) |
| FRLMPatientEducation.entry.observation | Section.entry:frSimpleObservation.observation | Composition.section.entry (Observation) |
| FRLMPatientEducation.entry.reference | Section.entry:frReferencesExternes.act | Composition.section.entry (FRDocumentReferenceDocument) |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | **FRCompositionDocument.section:sectionPredictableAdverseDrugReaction** |
| FRLMPredictableAdverseDrugReaction.titleSection | Section.title | Composition.section.title |
| FRLMPredictableAdverseDrugReaction.description | Section.text | Composition.section.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent | Section.entry (FRCDAEffetIndesirable) | Composition.section.entry (FRAdverseEventDocument) |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | **FRCompositionDocument.section:sectionPregnancyHistory** |
| FRLMSectionPregnancyHistory.codeSection | Section.code | Composition.section.code |
| FRLMSectionPregnancyHistory.titleSection | Section.title | Composition.section.title |
| FRLMSectionPregnancyHistory.description | Section.text | Composition.section.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus | Section.entry:frObservationSurLaGrossesse.observation | Composition.section.entry (FRObservationPregnancyDocument) |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory | Section.entry:frHistoriqueDeLaGrossesse.organizer | Composition.section.entry (FRObservationPregnancyHistoryDocument) |
| FRLMSectionPregnancyHistory.note |  | Composition.section.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | **FRCompositionDocument.section:sectionPresentedForm** |
| FRLMPresentedForm.codeSection | Section.code | Composition.section.code |
| FRLMPresentedForm.titleSection | Section.title | Composition.section.title |
| FRLMPresentedForm.description | Section.text | Composition.section.text |
| FRLMPresentedForm.entry.attachment | Section.entry (FRCDADocumentAttache) | Composition.section.entry (FRDocumentReferenceDocument) |
| **FRLMProblems** | **FRCDAProblemesActifs** | **FRCompositionDocument.section:sectionProblems** |
| FRLMProblems.codeSection | Section.code | Composition.section.code |
| FRLMProblems.titleSection | Section.title | Composition.section.title |
| FRLMProblems.description | Section.text | Composition.section.text |
| FRLMProblems.entry.problem | Section.entry (FRCDAProbleme) | Composition.section.entry (FRConditionDocument) |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | **FRCompositionDocument.section:sectionProceduresHx** |
| FRLMProcedures.codeSection | Section.code | Composition.section.code |
| FRLMProcedures.titleSection | Section.title | Composition.section.title |
| FRLMProcedures.description | Section.text | Composition.section.text |
| FRLMProcedures.entry.procedure | Section.entry:frActe.procedure | Composition.section.entry (FRProcedureDocument) |
| **FRLMQRCode** | **FRCDACodeABarres** | **FRCompositionDocument.section:sectionQrCode** |
| FRLMQRCode.codeSection | Section.code | Composition.section.code |
| FRLMQRCode.titleSection | Section.title | Composition.section.title |
| FRLMQRCode.description | Section.text | Composition.section.text |
| FRLMQRCode.entry.observationMedia | Section.entry (FRCDAImageIllustrative) | Composition.section.entry (FRMediaDocument) |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | **FRCompositionDocument.section:sectionReasonForReferral** |
| FRLMReasonForReferral.codeSection | Section.code | Composition.section.code |
| FRLMReasonForReferral.titleSection | Section.title | Composition.section.title |
| FRLMReasonForReferral.description | Section.text | Composition.section.text |
| FRLMReasonForReferral.entry.observation | Section.entry:frSimpleObservation.observation | Composition.section.entry (Observation) |
| FRLMReasonForReferral.entry.problemes | Section.entry:frProbleme.observation | Composition.section.entry (FRConditionDocument) |
| **FRLMObservationResults** | **FRCDASectionResultats** | **FRCompositionDocument.section:sectionResults** |
| FRLMObservationResults.codeSection | Section.code | Composition.section.code |
| FRLMObservationResults.titleSection | Section.title | Composition.section.title |
| FRLMObservationResults.description | Section.text | Composition.section.text |
| FRLMObservationResults.entry.observationResult | Section.entry (FRCDAResultats) | Composition.section.entry (Observation) |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | **FRCompositionDocument.section:sectionSocialHistory** |
| FRLMSocialHistory.codeSection | Section.code | Composition.section.code |
| FRLMSocialHistory.titleSection | Section.title | Composition.section.title |
| FRLMSocialHistory.description | Section.text | Composition.section.text |
| FRLMSocialHistory.entry.observationSocialHistory | Section.entry (FRCDAHabitusModeDeVie) | Composition.section.entry (FRObservationSocialHistoryDocument) |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | **FRCompositionDocument.section:sectionHistory** |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | **FRDiagnosticReportImagingDocument.extension:historiqueMedical** |
| FRLMSupportingInformation.codeSection | Section.code | Composition.section.code |
| FRLMSupportingInformation.titleSection | Section.title | Composition.section.title |
| FRLMSupportingInformation.description | Section.text | Composition.section.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.previousResultsInformation |  | DiagnosticReport.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.historyOfPastIllness | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (Observation) |
| FRLMSupportingInformation.entry.historyOfPastProcedures | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation (FRCDAObservationSurLaGrossesse) | Composition.section.entry (FRObservationPregnancyDocument) |
| FRLMSupportingInformation.entry.pregnancyStatus | Section.entry.observation (FRCDAObservationSurLaGrossesse) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation (FRCDASimpleObservation) | Composition.section.entry (FRObservationContraIndicationsDocument) |
| FRLMSupportingInformation.entry.contraIndication | Section.entry.observation (FRCDASimpleObservation) | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.condition |  | Composition.section.entry (FRConditionDocument) |
| FRLMSupportingInformation.entry.condition |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | DiagnosticReport.extension:historiqueMedical |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASectionSignesVitaux** | **FRCompositionDocument.section:sectionVitalSigns** |
| FRLMVitalSigns.titleSection | Section.title | Composition.section.title |
| FRLMVitalSigns.entry.observationVitalSign | Section.entry (FRCDASignesVitaux) | Composition.section.entry (FRObservationVitalSignsDocument) |
| **FRLMServiceRequest** | **FRCDADemandeDExamenOuDeSuivi** | **FRServiceRequestDocument** |
| FRLMServiceRequest.header.status | Observation.statusCode | ServiceRequest.status |
| FRLMServiceRequest.code | Observation.code | ServiceRequest.code |
| FRLMServiceRequest.quantity |  | ServiceRequest.quantity[x] |
| FRLMServiceRequest.bodySite | Observation.targetSiteCode | ServiceRequest.bodySite |
| FRLMServiceRequest.reason[x] |  | ServiceRequest.reasonCode |
| FRLMServiceRequest.priority | Observation.priorityCode | ServiceRequest.priority |
| FRLMServiceRequest.supportingInformation[x] | Observation.entryRelationship | ServiceRequest.supportingInfo |
| FRLMServiceRequest.specimen | Observation.specimen | ServiceRequest.specimen |
| FRLMServiceRequest.encounter | Observation.entryRelationship | ServiceRequest.encounter |
| FRLMServiceRequest.occurrence[x] | Observation.effectiveTime | ServiceRequest.occurrence[x] |
| FRLMServiceRequest.patientInstructions | Observation.text | ServiceRequest.note |
| **FRLMSpecimen** | **FRCDAPrelevement** | **FRSpecimenDocument** |
| FRLMSpecimen.identifier | Procedure.id | Specimen.identifier |
| FRLMSpecimen.status | Procedure.statusCode | Specimen.status |
| FRLMSpecimen.type | Procedure.code | Specimen.type |
| FRLMSpecimen.specimenSource[x] | Procedure.participant | Specimen.subject (FRPatientINSDocument / FRLocationDocument / Device) |
| FRLMSpecimen.parentSpecimen | Procedure.participant:EchantillonPreleve | Specimen.parent |
| FRLMSpecimen.request |  | Specimen.request |
| FRLMSpecimen.combined |  |  |
| FRLMSpecimen.collection.performer[x] | Procedure.performer | Specimen.collection.collector |
| FRLMSpecimen.collection.collected[x] | Procedure.effectiveTime | Specimen.collection.collected[x] |
| FRLMSpecimen.collection.quantity |  | Specimen.collection.quantity |
| FRLMSpecimen.collection.method |  | Specimen.collection.method |
| FRLMSpecimen.collection.device | Procedure.participant:DispositifUtilise |  |
| FRLMSpecimen.collection.additive[x] | Procedure.participant:ProduitUtilise | Specimen.processing.additive |
| FRLMSpecimen.collection.bodySite | Procedure.targetSiteCode | Specimen.collection.bodySite |
| FRLMSpecimen.receivedDate | Procedure.entryRelationship. act.effectiveTime | Specimen.receivedTime |
| FRLMSpecimen.container.specimenQuantity |  | Specimen.container.specimenQuantity |
| FRLMSpecimen.container.containerDevice |  | Specimen.container.type.extension:device |
| FRLMSpecimen.condition |  | Specimen.condition |
| FRLMSpecimen.note | Procedure.text | Specimen.note |

