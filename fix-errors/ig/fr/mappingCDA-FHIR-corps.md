# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping des sections entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:sectionAddendum |
| FRLMAddendum.codeSection | FRCDADicomAddendum.code | FRCompositionDocument.section:sectionAddendum.code |
| FRLMAddendum.titleSection | FRCDADicomAddendum.title | FRCompositionDocument.section:sectionAddendum.title |
| FRLMAddendum.description | FRCDADicomAddendum.text | FRCompositionDocument.section:sectionAddendum.text |
| FRLMAddendum.author[x] | FRCDADicomAddendum.author | FRCompositionDocument.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:sectionAdvanceDirectives |
| FRLMAdvanceDirectives.codeSection | FRCDADirectivesAnticipees.code | FRCompositionDocument.section:sectionAdvanceDirectives.code |
| FRLMAdvanceDirectives.titleSection | FRCDADirectivesAnticipees.title | FRCompositionDocument.section:sectionAdvanceDirectives.title |
| FRLMAdvanceDirectives.description | FRCDADirectivesAnticipees.text | FRCompositionDocument.section:sectionAdvanceDirectives.text |
| FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective | FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee | FRCompositionDocument.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:sectionAlerts |
| FRLMAlerts.codeSection | FRCDAPointsDeVigilancesNonCode.code | FRCompositionDocument.section:sectionAlerts.code |
| FRLMAlerts.titleSection | FRCDAPointsDeVigilancesNonCode.title | FRCompositionDocument.section:sectionAlerts.title |
| FRLMAlerts.description | FRCDAPointsDeVigilancesNonCode.text | FRCompositionDocument.section:sectionAlerts.text |
| FRLMAlerts.entry.alert |  | FRCompositionDocument.section:sectionAlerts.entry:Flag |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:sectionAllergiesAndIntolerances |
| FRLMAllergiesAndIntolerances.codeSection | FRCDAAllergiesEtHypersensibilites.code | FRCompositionDocument.section:sectionAllergiesAndIntolerances.code |
| FRLMAllergiesAndIntolerances.titleSection | FRCDAAllergiesEtHypersensibilites.title | FRCompositionDocument.section:sectionAllergiesAndIntolerances.title |
| FRLMAllergiesAndIntolerances.description | FRCDAAllergiesEtHypersensibilites.text | FRCompositionDocument.section:sectionAllergiesAndIntolerances.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance | FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites | FRCompositionDocument.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:sectionAttachments |
| FRLMAttachments.codeSection | FRCDADocumentsAjoutes.code | FRCompositionDocument.section:sectionAttachments.code |
| FRLMAttachments.titleSection | FRCDADocumentsAjoutes.title | FRCompositionDocument.section:sectionAttachments.title |
| FRLMAttachments.description | FRCDADocumentsAjoutes.text | FRCompositionDocument.section:sectionAttachments.text |
| FRLMAttachments.entry.attachment:FRLMAttachment | FRCDADocumentsAjoutes.entry:frDocumentAttache |  |
| FRLMAttachments.entry.observation:FRLMObservation | FRCDADocumentsAjoutes.entry:frSimpleObservation |  |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:sectionPlanOfCare |
| FRLMCarePlans.codeSection | FRCDAPlanDeSoins.code | FRCompositionDocument.section:sectionPlanOfCare.code |
| FRLMCarePlans.titleSection | FRCDAPlanDeSoins.title | FRCompositionDocument.section:sectionPlanOfCare.title |
| FRLMCarePlans.description | FRCDAPlanDeSoins.text | FRCompositionDocument.section:sectionPlanOfCare.text |
| FRLMCarePlans.entry.carePlans:FRLMCarePlan | FRCDAPlanDeSoins.entry:FRCDAActe |  |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:sectionComparison |
| FRLMComparisonStudy.codeSection | FRCDADICOMExamenComparatif.code | FRCompositionDocument.section:sectionComparison.code |
| FRLMComparisonStudy.titleSection | FRCDADICOMExamenComparatif.title | FRCompositionDocument.section:sectionComparison.title |
| FRLMComparisonStudy.description | FRCDADICOMExamenComparatif.text | FRCompositionDocument.section:sectionComparison.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMConclusion.codeSection | FRCDADICOMConclusion.code |  |
| FRLMConclusion.description | FRCDADICOMConclusion.text |  |
| FRLMConclusion.titleSection | FRCDADICOMConclusion.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | FRDiagnosticReportImagingDocument.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:sectionImagingStudy |
| FRLMDicomStudyMetadata.titleSection | FRCDADICOMObjectCatalog.title | FRCompositionDocument.section:sectionImagingStudy.title |
| FRLMDicomStudyMetadata.codeSection | FRCDADICOMObjectCatalog.code | FRCompositionDocument.section:sectionImagingStudy.code |
| FRLMDicomStudyMetadata.description | FRCDADICOMObjectCatalog.text | FRCompositionDocument.section:sectionImagingStudy.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie | FRCompositionDocument.section:sectionImagingStudy.entry:FRImagingStudyDocument |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | FRCDADICOMActeImagerie.code |  |
| FRLMExaminationReport.titleSection | FRCDADICOMActeImagerie.title |  |
| FRLMExaminationReport.description | FRCDADICOMActeImagerie.text |  |
| FRLMExaminationReport.entry.imagingProcedures | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie | FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument |
| FRLMExaminationReport.entry.imagingProcedures | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie | FRDiagnosticReportImagingDocument.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante | FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.medicationAdministrations | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante | FRDiagnosticReportImagingDocument.extension:procedure.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.adverseReactions |  | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings.entry:FRObservationResultDocument |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings.text |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRDiagnosticReportImagingDocument.result |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:sectionExposureRadiation |
| FRLMExposureInformation.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:sectionExposureRadiation.code |
| FRLMExposureInformation.titleSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:sectionExposureRadiation.title |
| FRLMExposureInformation.description | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:sectionExposureRadiation.text |
| FRLMExposureInformation.subSection.quantityExposure | FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite | FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExposureInformation.subSection.radiopharmaceuticalAdministration | FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMFamilyMedicalHistory** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:sectionFamilyMedicalHistory |
| FRLMFamilyMedicalHistory.codeSection | FRCDAAntecedentsFamiliaux.code | FRCompositionDocument.section:sectionFamilyMedicalHistory.code |
| FRLMFamilyMedicalHistory.titleSection | FRCDAAntecedentsFamiliaux.title | FRCompositionDocument.section:sectionFamilyMedicalHistory.title |
| FRLMFamilyMedicalHistory.description | FRCDAAntecedentsFamiliaux.text | FRCompositionDocument.section:sectionFamilyMedicalHistory.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux | FRCompositionDocument.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:sectionFunctionalStatus |
| FRLMFunctionalStatus.codeSection | FRCDAStatutFonctionnel.code | FRCompositionDocument.section:sectionFunctionalStatus.code |
| FRLMFunctionalStatus.titleSection | FRCDAStatutFonctionnel.title | FRCompositionDocument.section:sectionFunctionalStatus.title |
| FRLMFunctionalStatus.description | FRCDAStatutFonctionnel.text | FRCompositionDocument.section:sectionFunctionalStatus.text |
| FRLMFunctionalStatus.author | FRCDAStatutFonctionnel.author | FRCompositionDocument.author |
| FRLMFunctionalStatus.informant | FRCDAStatutFonctionnel.informant | FRCompositionDocument.extension:informant |
| FRLMFunctionalStatus.entry.assessment | FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:sectionFunctionalStatus.entry:FRObservationAssessmentDocument |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors |
| FRLMHazardousWorkingConditions.codeSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.code | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.code |
| FRLMHazardousWorkingConditions.titleSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.title | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.title |
| FRLMHazardousWorkingConditions.description | FRCDAFacteursDeRisqueProfessionnelsNonCode.text | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:sectionDischargeMedications |
| FRLMHospitalDischargeMedications.codeSection | FRCDATraitementsALaSortie.code | FRCompositionDocument.section:sectionDischargeMedications.code |
| FRLMHospitalDischargeMedications.titleSection | FRCDATraitementsALaSortie.title | FRCompositionDocument.section:sectionDischargeMedications.title |
| FRLMHospitalDischargeMedications.description | FRCDATraitementsALaSortie.text | FRCompositionDocument.section:sectionDischargeMedications.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration | FRCDATraitementsALaSortie.entry.FRCDATraitement |  |
| **FRLMImmunisations** | **FRCDAVaccinations** | FRCompositionDocument.section:sectionImmunizations |
| FRLMImmunisations.codeSection | FRCDAVaccinations.code | FRCompositionDocument.section:sectionImmunizations.code |
| FRLMImmunisations.titleSection | FRCDAVaccinations.title | FRCompositionDocument.section:sectionImmunizations.title |
| FRLMImmunisations.description | FRCDAVaccinations.text | FRCompositionDocument.section:sectionImmunizations.text |
| FRLMImmunisations.entry.immunisation | FRCDAVaccinations.entry.FRCDAVaccination | FRCompositionDocument.section:sectionImmunizations.entry:FRImmunizationDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** |  |
| FRLMCRBIOChapitre.code | FRCDACRBIOChapitre.code |  |
| FRLMCRBIOChapitre.blocNarratif | FRCDACRBIOChapitre.text |  |
| FRLMCRBIOChapitre.titreSection | FRCDACRBIOChapitre.title |  |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache |  |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** |  |
| FRLMCRBIOSousChapitre.codeSection | FRCDACRBIOSousChapitre.code |  |
| FRLMCRBIOSousChapitre.blocNarratif | FRCDACRBIOSousChapitre.text |  |
| FRLMCRBIOSousChapitre.titreSection | FRCDACRBIOSousChapitre.title |  |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevicePrescription |
| FRLMMedicalDevicePrescriptions.author[x] | FRCDAPrescriptionDispositifsMedicaux.author | FRCompositionDocument.section:sectionMedicalDevicePrescription.author |
| FRLMMedicalDevicePrescriptions.codeSection | FRCDAPrescriptionDispositifsMedicaux.code | FRCompositionDocument.section:sectionMedicalDevicePrescription.code |
| FRLMMedicalDevicePrescriptions.titleSection | FRCDAPrescriptionDispositifsMedicaux.title | FRCompositionDocument.section:sectionMedicalDevicePrescription.title |
| FRLMMedicalDevicePrescriptions.description | FRCDAPrescriptionDispositifsMedicaux.text | FRCompositionDocument.section:sectionMedicalDevicePrescription.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse | FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevices |
| FRLMMedicalDevicesAndImplants.codeSection | FRCDADispositifsMedicaux.code | FRCompositionDocument.section:sectionMedicalDevices.code |
| FRLMMedicalDevicesAndImplants.titleSection | FRCDADispositifsMedicaux.title | FRCompositionDocument.section:sectionMedicalDevices.title |
| FRLMMedicalDevicesAndImplants.description | FRCDADispositifsMedicaux.text | FRCompositionDocument.section:sectionMedicalDevices.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:sectionMedicalHistory |
| FRLMHistoryOfPastIllness.codeSection | FRCDAAntecedentsMedicaux.code | FRCompositionDocument.section:sectionMedicalHistory.code |
| FRLMHistoryOfPastIllness.titleSection | FRCDAAntecedentsMedicaux.title | FRCompositionDocument.section:sectionMedicalHistory.title |
| FRLMHistoryOfPastIllness.description | FRCDAAntecedentsMedicaux.text | FRCompositionDocument.section:sectionMedicalHistory.text |
| FRLMHistoryOfPastIllness.entry.problem:FRLMCondition | FRCDAAntecedentsMedicaux.entry. FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme | FRCompositionDocument.section:sectionMedicalHistory.entry:FRConditionDocument |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:sectionMedicationDispense |
| FRLMMedicationDispensations.codeSection | FRCDADispensationMedicaments.code | FRCompositionDocument.section:sectionMedicationDispense.code |
| FRLMMedicationDispensations.description | FRCDADispensationMedicaments.text | FRCompositionDocument.section:sectionMedicationDispense.text |
| FRLMMedicationDispensations.titleSection | FRCDADispensationMedicaments.title | FRCompositionDocument.section:sectionMedicationDispense.title |
| FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense | FRCDADispensationMedicaments.entry.FRCDATraitementDispense | FRCompositionDocument.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:sectionMedicationRequest |
| FRLMMedicationPrescription.author[x] | FRCDAPrescriptionMedicaments.author | FRCompositionDocument.section:sectionMedicationRequest.author |
| FRLMMedicationPrescription.codeSection | FRCDAPrescriptionMedicaments.code | FRCompositionDocument.section:sectionMedicationRequest.code |
| FRLMMedicationPrescription.titleSection | FRCDAPrescriptionMedicaments.title | FRCompositionDocument.section:sectionMedicationRequest.title |
| FRLMMedicationPrescription.description | FRCDAPrescriptionMedicaments.text | FRCompositionDocument.section:sectionMedicationRequest.text |
| FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem | FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit | FRCompositionDocument.section:sectionMedicationRequest.entry:FRMedicationRequestDocument |
| **FRLMMedicationSummary** | **FRCDATraitements** | FRCompositionDocument.section:sectionMedications |
| FRLMMedicationSummary.codeSection | FRCDATraitements.code | FRCompositionDocument.section:sectionMedications.code |
| FRLMMedicationSummary.titleSection | FRCDATraitements.title | FRCompositionDocument.section:sectionMedications.title |
| FRLMMedicationSummary.description | FRCDATraitements.text | FRCompositionDocument.section:sectionMedications.text |
| FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration | FRCDATraitements.entry:FRCDATraitement | FRCompositionDocument.section:sectionMedications.entry:FRMedicationAdministrationDocument |
| **FRLMNote** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:sectionNote |
| FRLMNote.codeSection | FRCDACommentaireNonCode.code | FRCompositionDocument.section:sectionNote.code |
| FRLMNote.titleSection | FRCDACommentaireNonCode.title | FRCompositionDocument.section:sectionNote.title |
| FRLMNote.description | FRCDACommentaireNonCode.text | FRCompositionDocument.section:sectionNote.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:sectionOrder |
| FRLMOrderInformation.titleSection | FRCDADICOMDemandeExamen.title | FRCompositionDocument.section:sectionOrder.title |
| FRLMOrderInformation.description | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:sectionOrder.text |
| FRLMOrderInformation.codeSection | FRCDADICOMDemandeExamen.code | FRCompositionDocument.section:sectionOrder.code |
| FRLMOrderInformation.entry.orderInformation |  | FRCompositionDocument.section:sectionOrder.entry:FRServiceRequestImagingDocument |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:sectionPatientEducation |
| FRLMPatientEducation.codeSection | FRCDAEducationDuPatient.code | FRCompositionDocument.section:sectionPatientEducation.code |
| FRLMPatientEducation.titleSection | FRCDAEducationDuPatient.title | FRCompositionDocument.section:sectionPatientEducation.title |
| FRLMPatientEducation.description | FRCDAEducationDuPatient.text | FRCompositionDocument.section:sectionPatientEducation.text |
| FRLMPatientEducation.entry.procedure:FRLMProcedure | FRCDAEducationDuPatient.entry:frActe | FRCompositionDocument.section:sectionPatientEducation.entry:FRProcedureDocument |
| FRLMPatientEducation.entry.observation:FRLMObservation | FRCDAEducationDuPatient.entry:frSimpleObservation | FRCompositionDocument.section:sectionPatientEducation.entry:Observation |
| FRLMPatientEducation.entry.reference:FRLMAttachment | FRCDAEducationDuPatient.entry:frReferencesExternes | FRCompositionDocument.section:sectionPatientEducation.entry:FRDocumentReferenceDocument |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction |
| FRLMPredictableAdverseDrugReaction.titreSection | FRCDAEffetsIndesirables.title |  |
| FRLMPredictableAdverseDrugReaction.description | FRCDAEffetsIndesirables.text | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction | FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:sectionPregnancyHistory |
| FRLMSectionPregnancyHistory.codeSection | FRCDAHistoriqueDesGrossesses.code | FRCompositionDocument.section:sectionPregnancyHistory.code |
| FRLMSectionPregnancyHistory.titleSection | FRCDAHistoriqueDesGrossesses.title | FRCompositionDocument.section:sectionPregnancyHistory.title |
| FRLMSectionPregnancyHistory.description | FRCDAHistoriqueDesGrossesses.text | FRCompositionDocument.section:sectionPregnancyHistory.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus | FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse | FRCompositionDocument.section:sectionPregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory | FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse | FRCompositionDocument.section:sectionPregnancyHistory.entry:FRPregnancyHistoryDocument |
| FRLMSectionPregnancyHistory.note |  | FRCompositionDocument.section:sectionPregnancyHistory.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:sectionPresentedForm |
| FRLMPresentedForm.codeSection | FRCDADocumentPDFCopie.code | FRCompositionDocument.section:sectionPresentedForm.code |
| FRLMPresentedForm.titleSection | FRCDADocumentPDFCopie.title | FRCompositionDocument.section:sectionPresentedForm.title |
| FRLMPresentedForm.description | FRCDADocumentPDFCopie.text | FRCompositionDocument.section:sectionPresentedForm.text |
| FRLMPresentedForm.entry.attachment:FRLMAttachment | FRCDADocumentPDFCopie.entry:FRCDADocumentAttache | FRCompositionDocument.section:sectionPresentedForm.entry:FRDocumentReferenceDocument |
| **FRLMProblems** | **FRCDAProblemesActifs** | FRCompositionDocument.section:sectionProblems |
| FRLMProblems.codeSection | FRCDAProblemesActifs.code | FRCompositionDocument.section:sectionProblems.code |
| FRLMProblems.titleSection | FRCDAProblemesActifs.title | FRCompositionDocument.section:sectionProblems.title |
| FRLMProblems.description | FRCDAProblemesActifs.text | FRCompositionDocument.section:sectionProblems.text |
| FRLMProblems.entry.problem:FRLMCondition | FRCDAProblemesActifs.entry:FRCDAListeDesProblemes | FRCompositionDocument.section:sectionProblems.entry:FRConditionDocument |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:sectionProceduresHx |
| FRLMProcedures.codeSection | FRCDAHistoriqueDesActes.code | FRCompositionDocument.section:sectionProceduresHx.code |
| FRLMProcedures.titleSection | FRCDAHistoriqueDesActes.title | FRCompositionDocument.section:sectionProceduresHx.title |
| FRLMProcedures.description | FRCDAHistoriqueDesActes.text | FRCompositionDocument.section:sectionProceduresHx.text |
| FRLMProcedures.entry.procedure:FRLMProcedure | FRCDAHistoriqueDesActes.entry:FRCDAActe | FRCompositionDocument.section:sectionProceduresHx.entry:FRProcedureDocument |
| **FRLMQRCode** | **FRCDACodeABarres** | FRCompositionDocument.section:sectionQrCode |
| FRLMQRCode.codeSection | FRCDACodeABarres.code | FRCompositionDocument.section:sectionQrCode.code |
| FRLMQRCode.titleSection | FRCDACodeABarres.title | FRCompositionDocument.section:sectionQrCode.title |
| FRLMQRCode.description | FRCDACodeABarres.text | FRCompositionDocument.section:sectionQrCode.text |
| FRLMQRCode.entry.observationMedia:FRLMObservationMedia | FRCDACodeABarres.entry.FRCDACodeABarres | FRCompositionDocument.section:sectionQrCode.entry:FRCDAMediaDocument |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:sectionReasonForReferral |
| FRLMReasonForReferral.codeSection | FRCDARaisonDeLaRecommandation.code | FRCompositionDocument.section:sectionReasonForReferral.code |
| FRLMReasonForReferral.titleSection | FRCDARaisonDeLaRecommandation.title | FRCompositionDocument.section:sectionReasonForReferral.title |
| FRLMReasonForReferral.description | FRCDARaisonDeLaRecommandation.text | FRCompositionDocument.section:sectionReasonForReferral.text |
| FRLMReasonForReferral.entry.observation | FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation | FRCompositionDocument.section:sectionReasonForReferral.entry:Observation |
| FRLMReasonForReferral.entry.problemes | FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme | FRCompositionDocument.section:sectionReasonForReferral.entry:FRConditionDocument |
| **FRLMObservationResults** | **FRCDAResultats** | FRCompositionDocument.section:sectionResults |
| FRLMObservationResults.codeSection | FRCDAResultats.code | FRCompositionDocument.section:sectionResults.code |
| FRLMObservationResults.titleSection | FRCDAResultats.title | FRCompositionDocument.section:sectionResults.title |
| FRLMObservationResults.description | FRCDAResultats.text | FRCompositionDocument.section:sectionResults.text |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRDiagnosticReportDocument |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRObservationResultDocument |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:sectionSocialHistory |
| FRLMSocialHistory.codeSection | FRCDAHabitusModeDeVieSection.code | FRCompositionDocument.section:sectionSocialHistory.code |
| FRLMSocialHistory.titleSection | FRCDAHabitusModeDeVieSection.title | FRCompositionDocument.section:sectionSocialHistory.title |
| FRLMSocialHistory.description | FRCDAHabitusModeDeVieSection.text | FRCompositionDocument.section:sectionSocialHistory.text |
| FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory | FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie | FRCompositionDocument.section:sectionSocialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:sectionHistory |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRDiagnosticReportImagingDocument.extension:historiqueMedical |
| FRLMSupportingInformation.codeSection | FRCDADICOMHistoriqueMedical.code | FRCompositionDocument.section:sectionHistory.code |
| FRLMSupportingInformation.titleSection | FRCDADICOMHistoriqueMedical.title | FRCompositionDocument.section:sectionHistory.title |
| FRLMSupportingInformation.description | FRCDADICOMHistoriqueMedical.text | FRCompositionDocument.section:sectionHistory.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | FRCompositionDocument.section:sectionHistory.entry:FRObservationResultDocument |
| FRLMSupportingInformation.entry.previousResultsInformation |  | FRDiagnosticReportImagingDocument.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRCompositionDocument.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastIllness | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRCompositionDocument.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.pregnancyStatus | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRCompositionDocument.section:sectionHistory.entry:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.pregnancyStatus | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.contraIndication | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRCompositionDocument.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.contraIndication | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.condition |  | FRCompositionDocument.section:sectionHistory.entry:FRConditionDocument |
| FRLMSupportingInformation.entry.condition |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRConditionDocument |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASignesVitaux** | FRCompositionDocument.section:sectionVitalSigns |
| FRLMVitalSigns.titleSection | FRCDASignesVitaux.title | FRCompositionDocument.section:sectionVitalSigns.title |
| FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign | FRCDASignesVitaux.entry:FRCDASignesVitauxEntry | FRCompositionDocument.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument |

### Mapping des entrées entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMAdvanceDirective** | **FRCDADirectiveAnticipee** | **FRAdvanceDirectiveDocument** |
| FRLMAdvanceDirective.header.identifier | FRCDADirectiveAnticipee.id | FRAdvanceDirectiveDocument.identifier |
| FRLMAdvanceDirective.category | FRCDADirectiveAnticipee.code | FRAdvanceDirectiveDocument.provision.code |
| FRLMAdvanceDirective.header.status | FRCDADirectiveAnticipee.statusCode | FRAdvanceDirectiveDocument.status |
| FRLMAdvanceDirective.header.date | FRCDADirectiveAnticipee.effectiveTime |  |
| FRLMAdvanceDirective.value | FRCDADirectiveAnticipee.value | FRAdvanceDirectiveDocument.provision.type |
| FRLMAdvanceDirective.note | FRCDADirectiveAnticipee.text | FRAdvanceDirectiveDocument.provision.code.text |
| FRLMAdvanceDirective.attachment.url | FRCDADirectiveAnticipee.reference. externalDocument.text.reference | FRAdvanceDirectiveDocument.sourceReference |
| FRLMAdvanceDirective.attachment | FRCDADirectiveAnticipee.entryRelationship.observationMedia | FRAdvanceDirectiveDocument.sourceAttachment |
| FRLMAdvanceDirective.attachment. header.identifier | FRCDADirectiveAnticipee.entryRelationship. observationMedia.id | FRAdvanceDirectiveDocument.sourceAttachment.id |
| FRLMAdvanceDirective.attachment.data | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value | FRAdvanceDirectiveDocument.sourceAttachment.data |
| **FRLMAdverseDrugReaction** | **FRCDAEffetIndesirable** | **FRAdverseEventDocument** |
| FRLMAdverseDrugReaction.header.identifier | FRCDAEffetIndesirable.id | FRAdverseEventDocument.identifier |
| FRLMAdverseDrugReaction.header.status | FRCDAEffetIndesirable.statusCode |  |
| FRLMAdverseDrugReaction.adverseDrugReactionType | FRCDAEffetIndesirable.code | FRAdverseEventDocument.category |
| FRLMAdverseDrugReaction.header.date | FRCDAEffetIndesirable.effectiveTime | FRAdverseEventDocument.date |
| FRLMAdverseDrugReaction.detected |  | FRAdverseEventDocument.detected |
| FRLMAdverseDrugReaction.value | FRCDAEffetIndesirable.value |  |
| FRLMAdverseDrugReaction.medicationAdministration | FRCDAEffetIndesirable.entryRelationship:frTraitement | FRAdverseEventDocument.suspectEntity.instance |
| FRLMAdverseDrugReaction.reaction | FRCDAEffetIndesirable.entryRelationship:frProbleme | FRAdverseEventDocument.resultingCondition |
| FRLMAdverseDrugReaction.causalityAssessment | FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable | FRAdverseEventDocument.suspectEntity.causality |
| FRLMAdverseDrugReaction.severity | FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable | FRAdverseEventDocument.severity |
| FRLMAdverseDrugReaction.outcome | FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable | FRAdverseEventDocument.outcome |
| **FRLMAllergyIntolerance** | **FRCDAAllergieOuHypersensibilite** | **FRAllergyIntoleranceDocument** |
| FRLMAllergyIntolerance.header.identifier | FRCDAAllergieOuHypersensibilite.id | FRAllergyIntoleranceDocument.identifier |
| FRLMAllergyIntolerance.note | FRCDAAllergieOuHypersensibilite.text | FRAllergyIntoleranceDocument.note |
| FRLMAllergyIntolerance.type | FRCDAAllergieOuHypersensibilite.code | FRAllergyIntoleranceDocument.type |
| FRLMAllergyIntolerance.header.status | FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutDuProbleme | FRAllergyIntoleranceDocument.clinicalStatus |
| FRLMAllergyIntolerance.period | FRCDAAllergieOuHypersensibilite.effectiveTime | FRAllergyIntoleranceDocument.onsetPeriod |
| FRLMAllergyIntolerance.period.onsetDate | FRCDAAllergieOuHypersensibilite.effectiveTime.low | FRAllergyIntoleranceDocument.onsetPeriod.start |
| FRLMAllergyIntolerance.period.endDate | FRCDAAllergieOuHypersensibilite.effectiveTime.high | FRAllergyIntoleranceDocument.onsetPeriod.end |
| FRLMAllergyIntolerance.agentOrAllergen | FRCDAAllergieOuHypersensibilite.participant | FRAllergyIntoleranceDocument.code |
| FRLMAllergyIntolerance.reaction | FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme | FRAllergyIntoleranceDocument.reaction |
| FRLMAllergyIntolerance.reaction.agentOrAllergen |  | FRAllergyIntoleranceDocument.reaction.substance |
| FRLMAllergyIntolerance.reaction.manifestation |  | FRAllergyIntoleranceDocument.reaction.manifestation |
| FRLMAllergyIntolerance.reaction.severity |  | FRAllergyIntoleranceDocument.reaction.severity |
| FRLMAllergyIntolerance.reaction.period |  | FRAllergyIntoleranceDocument.reaction.onset |
| FRLMAllergyIntolerance.reaction. period.onsetDate |  | FRAllergyIntoleranceDocument.reaction.onset |
| FRLMAllergyIntolerance.reaction. period.endDate |  |  |
| FRLMAllergyIntolerance.certainty | FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude | FRAllergyIntoleranceDocument.verificationStatus |
| FRLMAllergyIntolerance.criticality | FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite | FRAllergyIntoleranceDocument.criticality |
| FRLMAllergyIntolerance.category |  | FRAllergyIntoleranceDocument.category |
| **FRLMAttachment** | FRCDADocumentAttache.component:frObservationMedia.observationMedia | FRDocumentReferenceDocument.content.attachment |
| FRLMAttachment.contentType | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value.mediaType | FRDocumentReferenceDocument.content.attachment.contentType |
| FRLMAttachment.language | FRCDADocumentAttache.component:frObservationMedia. observationMedia.languageCode | FRDocumentReferenceDocument.content.attachment.language |
| FRLMAttachment.data | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value | FRDocumentReferenceDocument.content.attachment.data |
| FRLMAttachment.url | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value.reference | FRDocumentReferenceDocument.content.attachment.url |
| FRLMAttachment.size |  | FRDocumentReferenceDocument.content.attachment.size |
| FRLMAttachment.title |  | FRDocumentReferenceDocument.content.attachment.title |
| **FRLMCarePlan** | **FRCDAReferenceItemPlanTraitement** | **FRCarePlanDocument** |
| FRLMCarePlan.header.identifier | FRCDAReferenceItemPlanTraitement.id | FRCarePlanDocument.identifier |
| FRLMCarePlan.header.status | FRCDAReferenceItemPlanTraitement.statusCode | FRCarePlanDocument.status |
| FRLMCarePlan.addresses |  | FRCarePlanDocument.addresses |
| FRLMCarePlan.goal |  | FRCarePlanDocument.goal |
| FRLMCarePlan.activity | FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |
| **FRLMCondition** | **FRCDAProbleme** | **FRConditionDocument** |
| FRLMCondition.header.identifier | FRCDAProbleme.id | FRConditionDocument.identifier |
| FRLMCondition.type | FRCDAProbleme.code | FRConditionDocument.category |
| FRLMCondition.problem | FRCDAProbleme.value | FRConditionDocument.code |
| FRLMCondition.period | FRCDAProbleme.effectiveTime |  |
| FRLMCondition.period.onsetDate | FRCDAProbleme.effectiveTime.low | FRConditionDocument.onsetDateTime |
| FRLMCondition.period.endDate | FRCDAProbleme.effectiveTime.high | FRConditionDocument.abatementDateTime |
| FRLMCondition.header.status | FRCDAProbleme.entryRelationship:frStatutDuProbleme | FRConditionDocument.clinicalStatus |
| FRLMCondition.severity | FRCDAProbleme.entryRelationship:frSeverite | FRConditionDocument.severity |
| FRLMCondition.diagnosisAssertionStatus | FRCDAProbleme.entryRelationship:frCertitude | FRConditionDocument.verificationStatus |
| FRLMCondition.clinicalStatus | FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient | FRConditionDocument.stage.summary |
| FRLMCondition.bodySite |  | FRConditionDocument.bodySite |
| FRLMCondition.stage |  | FRConditionDocument.stage.summary |
| FRLMCondition.reference | FRCDAProbleme.reference. externalDocument.text.reference | FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.content.attachment.url |
| FRLMCondition.note | FRCDAProbleme.entryRelationship:frCommentaireER | FRConditionDocument.note |
| **FRLMDevice** | FRCDADispositifMedical.participant. participantRole.playingDevice | **Device** |
| FRLMDevice.identifier | FRCDADispositifMedical.participant. participantRole.id | Device.identifier |
| FRLMDevice.udi | FRCDADispositifMedical.participant. participantRole.id | Device.udiCarrier.deviceIdentifier |
| FRLMDevice.manufacturer |  | Device.manufacturer |
| FRLMDevice.manufactureDate |  | Device.manufactureDate |
| FRLMDevice.expiryDate |  | Device.expirationDate |
| FRLMDevice.lotNumber |  | Device.lotNumber |
| FRLMDevice.serialNumber |  | Device.serialNumber |
| FRLMDevice.name | FRCDADispositifMedical.text | Device.deviceName |
| FRLMDevice.name.value | FRCDADispositifMedical.text | Device.deviceName.name |
| FRLMDevice.name.type |  | Device.deviceName.type |
| FRLMDevice.modelNumber |  | Device.modelNumber |
| FRLMDevice.version |  | Device.version.value |
| FRLMDevice.type | FRCDADispositifMedical.participant. participantRole.playingDevice.code | Device.type |
| FRLMDevice.note | FRCDADispositifMedical.text | Device.note |
| **FRLMDeviceUse** | **FRCDADispositifMedical** | **FRDeviceUseStatementDocument** |
| FRLMDeviceUse.header.identifier | FRCDADispositifMedical.id | FRDeviceUseStatementDocument.identifier |
| FRLMDeviceUse.header.status | FRCDADispositifMedical.statusCode | FRDeviceUseStatementDocument.status |
| FRLMDeviceUse.periodOfUse | FRCDADispositifMedical.effectiveTime | FRDeviceUseStatementDocument.timingPeriod |
| FRLMDeviceUse.periodOfUse.onsetDate | FRCDADispositifMedical.effectiveTime.low | FRDeviceUseStatementDocument.timingPeriod.start |
| FRLMDeviceUse.periodOfUse.endDate | FRCDADispositifMedical.effectiveTime.high | FRDeviceUseStatementDocument.timingPeriod.end |
| FRLMDeviceUse.periodOfUse.duration | FRCDADispositifMedical.expectedUseTime | FRDeviceUseStatementDocument.timing[x] |
| FRLMDeviceUse.header.performer[x] | FRCDADispositifMedical.performer | FRDeviceUseStatementDocument.extension:performer |
| FRLMDeviceUse.device | FRCDADispositifMedical.participant | FRDeviceUseStatementDocument.device |
| FRLMDeviceUse.bodySite |  | FRDeviceUseStatementDocument.bodySite |
| FRLMDeviceUse.reason[x]:FRLMCondition | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference:FRObservationALDDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference:FRObservationPreventionDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail | FRDeviceUseStatementDocument.reasonReference:FRObservationWorkRelatedAccidentDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference:FRObservationALDDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference:FRObservationPreventionDocument |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention | FRDeviceUseStatementDocument.reasonReference:FRObservationWorkRelatedAccidentDocument |
| FRLMDeviceUse.reason[x]:FRLMProcedure |  |  |
| FRLMDeviceUse.note | FRCDADispositifMedical.text | FRDeviceUseStatementDocument.note |
| **FRLMEncounter** | **FRCDARencontre** | **FREncounterDocument** |
| FRLMEncounter.header.identifier | FRCDARencontre.id | FREncounterDocument.identifier |
| FRLMEncounter.header.status | FRCDARencontre.statusCode | FREncounterDocument.status |
| FRLMEncounter.header.author[x] | FRCDARencontre.author | FREncounterDocument.author |
| FRLMEncounter.participant | FRCDARencontre.participant | FREncounterDocument.participant |
| FRLMEncounter.type | FRCDARencontre.code | FREncounterDocument.class |
| FRLMEncounter.period | FRCDARencontre.effectiveTime | FREncounterDocument.period |
| FRLMEncounter.priority | FRCDARencontre.priorityCode | FREncounterDocument.priority |
| FRLMEncounter.participant | FRCDARencontre.participant:autresParticipants | FREncounterDocument.participant |
| FRLMEncounter.serviceProvider | FRCDARencontre.performer. assignedEntity.representedOrganization | FREncounterDocument.serviceProvider |
| FRLMEncounter.referringProfessional | FRCDARencontre.performer | FREncounterDocument.participant.individual |
| FRLMEncounter.basedOn[x] |  | FREncounterDocument.basedOn |
| FRLMEncounter.reason[x] |  | FREncounterDocument.reasonCode |
| FRLMEncounter.admission |  | FREncounterDocument.hospitalization |
| FRLMEncounter.admission.admitter |  | FREncounterDocument.participant.individual |
| FRLMEncounter.admission.admitSource |  | FREncounterDocument.hospitalization.admitSource |
| FRLMEncounter.dischargeDiagnosis[x] |  | FREncounterDocument.diagnosis.condition |
| FRLMEncounter.dischargeDestination |  |  |
| FRLMEncounter.dischargeDestination.type |  | FREncounterDocument.hospitalization.dischargeDisposition |
| FRLMEncounter.dischargeDestination.location[x] |  | FREncounterDocument.hospitalization.destination |
| FRLMEncounter.serviceLocation | FRCDARencontre.participant:lieuExecution | FREncounterDocument.location |
| FRLMEncounter.serviceLocation.period |  | FREncounterDocument.location.period |
| FRLMEncounter.serviceLocation.organisationPart[x] | FRCDARencontre.participant:lieuExecution | FREncounterDocument.location.location |
| FRLMEncounter.subEncounter |  | FREncounterDocument.partOf |
| FRLMEncounter.note | FRCDARencontre.text |  |
| **FRLMFamilyMemberHistory** | **FRCDAAntecedentsFamiliaux** | **FRFamilyMemberHistoryDocument** |
| FRLMFamilyMemberHistory.header.status | FRCDAAntecedentsFamiliaux.statusCode | FRFamilyMemberHistoryDocument.status |
| FRLMFamilyMemberHistory.relatedPerson | FRCDAAntecedentsFamiliaux.subject.relatedSubject | FRFamilyMemberHistoryDocument.relationship |
| FRLMFamilyMemberHistory.condition | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve | FRFamilyMemberHistoryDocument.condition |
| FRLMFamilyMemberHistory.condition.code | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.code | FRFamilyMemberHistoryDocument.condition.code |
| FRLMFamilyMemberHistory.condition.outcome | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value | FRFamilyMemberHistoryDocument.condition.outcome |
| FRLMFamilyMemberHistory.condition.contributedToDeath | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value | FRFamilyMemberHistoryDocument.condition.contributedToDeath |
| FRLMFamilyMemberHistory.condition.onset[x] | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.effectiveTime | FRFamilyMemberHistoryDocument.condition.onset[x] |
| FRLMFamilyMemberHistory.condition.bodySite | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.targetSiteCode | FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension |
| FRLMFamilyMemberHistory.note | FRCDAAntecedentsFamiliaux.text | FRFamilyMemberHistoryDocument.note |
| **FRLMProcedure** | **FRCDADICOMTechniqueImagerie** | **FRProcedureImagingDocument** |
| FRLMProcedure.header.identifier | FRCDADICOMTechniqueImagerie.id | FRProcedureImagingDocument.identifier |
| FRLMProcedure.code | FRCDADICOMTechniqueImagerie.code | FRProcedureImagingDocument.code |
| FRLMProcedure.header.status | FRCDADICOMTechniqueImagerie.statusCode | FRProcedureImagingDocument.status |
| FRLMProcedure.procedureDate[x] | FRCDADICOMTechniqueImagerie.effectiveTime | FRProcedureImagingDocument.performed[x] |
| FRLMProcedure.procedureDateDateTime | FRCDADICOMTechniqueImagerie.effectiveTime.low |  |
| FRLMProcedure.procedureDatePeriod | FRCDADICOMTechniqueImagerie.effectiveTime.high |  |
| FRLMProcedure.priority | FRCDADICOMTechniqueImagerie.priorityCode | FRProcedureImagingDocument.extension:priority |
| FRLMProcedure.bodySite | FRCDADICOMTechniqueImagerie.targetSiteCode | FRProcedureImagingDocument.bodySite |
| FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier |  |
| FRLMProcedure.approachSiteCode | FRCDADICOMTechniqueImagerie.approachSiteCode | FRProcedureImagingDocument.extension:approachBodySite |
| FRLMProcedure.header.participant[x] | FRCDADICOMTechniqueImagerie.participant | FRProcedureImagingDocument.extension:participant |
| **FRLMQuantityExposure** | **FRCDADICOMQuantite** | FRObservationRadiationExposureDocument.component |
| FRLMQuantityExposure.header. participant[x].participantProfessional |  | FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |
| FRLMQuantityExposure.type | FRCDADICOMQuantite.code | FRObservationRadiationExposureDocument.component.code |
| FRLMQuantityExposure.quantity | FRCDADICOMQuantite.value | FRObservationRadiationExposureDocument.component.valueQuantity |
| FRLMQuantityExposure.bodySite | FRCDADICOMQuantite.targetSiteCode | FRObservationRadiationExposureDocument.bodySite |
| FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMQuantite.targetSiteCode.qualifier | FRObservationRadiationExposureDocument.bodySite.extension:precisionTopographique |
| **FRLMSeries** | **FRCDADICOMSerieImagerie** | **FRImagingStudyDocument** |
| FRLMSeries.seriesUid | FRCDADICOMSerieImagerie.id | FRImagingStudyDocument.series.uid |
| FRLMSeries.number |  | FRImagingStudyDocument.series.number |
| FRLMSeries.seriesModality | FRCDADICOMSerieImagerie.code.qualifier | FRImagingStudyDocument.series.modality |
| FRLMSeries.bodySite |  | FRImagingStudyDocument.series.bodySite |
| FRLMSeries.specimen |  | FRImagingStudyDocument.series.specimen |
| FRLMSeries.numberOfInstances |  | FRImagingStudyDocument.series.numberOfInstances |
| FRLMSeries.seriesEndpoint | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text | FRImagingStudyDocument.series.endpoint |
| FRLMSeries.started | FRCDADICOMSerieImagerie.effectiveTime | FRImagingStudyDocument.series.started |
| FRLMSeries.instanceSOP | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation | FRImagingStudyDocument.series.instance |
| FRLMSeries.instanceSOP. header.identifier | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.id | FRImagingStudyDocument.series.instance.uid |
| FRLMSeries.instanceSOP.sopClass | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.code | FRImagingStudyDocument.series.instance.sopClass |
| FRLMSeries.instanceSOP.instanceNumber |  | FRImagingStudyDocument.series.instance.number |
| FRLMSeries.instanceSOP.numberOfFrames |  | FRImagingStudyDocument.series.instance.extension:number-of-frames |
| FRLMSeries.seriesEndpoint.connectionType | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference | FRImagingStudyDocument.series.endpoint.connectionType |
| FRLMSeries.seriesEndpoint.payloadType | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.mediaType | FRImagingStudyDocument.series.endpoint.payloadType |
| FRLMSeries.seriesEndpoint.address | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference | FRImagingStudyDocument.series.endpoint.address |
| **FRLMImagingStudy** | **FRCDADICOMExamenImagerie** | **FRImagingStudyDocument** |
| FRLMImagingStudy.header.identifier | FRCDADICOMTechniqueImagerie.id | FRImagingStudyDocument.identifier |
| FRLMImagingStudy.modality | FRCDADICOMTechniqueImagerie.methodCode | FRImagingStudyDocument.modality |
| FRLMImagingStudy.bodySite | FRCDADICOMTechniqueImagerie.targetSiteCode | FRImagingStudyDocument.bodySite |
| FRLMImagingStudy.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier |  |
| FRLMImagingStudy.encounter |  | FRImagingStudyDocument.encounter |
| FRLMImagingStudy.started | FRCDADICOMTechniqueImagerie.effectiveTime | FRImagingStudyDocument.started |
| FRLMImagingStudy.basedOn |  | FRImagingStudyDocument.basedOn |
| FRLMImagingStudy.numberOfSeries |  | FRImagingStudyDocument.numberOfSeries |
| FRLMImagingStudy.numberOfInstances |  | FRImagingStudyDocument.numberOfInstances |
| FRLMImagingStudy.studyCustodian |  | FRImagingStudyDocument.series.performer.actor:Organization |
| FRLMImagingStudy.studyEndpoint |  | FRImagingStudyDocument.endpoint |
| FRLMImagingStudy.series |  | FRImagingStudyDocument.series |
| **FRLMImmunisation** | **FRCDAVaccination** | **FRImmunizationDocument** |
| FRLMImmunisation.identifiant | FRCDAVaccination.id | FRImmunizationDocument.identifier |
| FRLMImmunisation.header.status | FRCDAVaccination.statusCode | FRImmunizationDocument.status |
| FRLMImmunisation.periodOfImmunisation | FRCDAVaccination.effectiveTime | FRImmunizationDocument.occurrencePeriod |
| FRLMImmunisation.periodOfImmunisation.startDate | FRCDAVaccination.effectiveTime.low | FRImmunizationDocument.occurrencePeriod.start |
| FRLMImmunisation.periodOfImmunisation.endDate | FRCDAVaccination.effectiveTime.high | FRImmunizationDocument.occurrencePeriod.end |
| FRLMImmunisation.diseaseOrAgentTargeted | FRCDAVaccination.entryRelationship:frProbleme | FRImmunizationDocument.protocolApplied.targetDisease |
| FRLMImmunisation.administeredProduct | FRCDAVaccination.consumable:FRCDAProduitDeSante | FRImmunizationDocument.vaccineCode |
| FRLMImmunisation.route | FRCDAVaccination.routeCode | FRImmunizationDocument.route |
| FRLMImmunisation.site | FRCDAVaccination.approachSiteCode | FRImmunizationDocument.site |
| FRLMImmunisation.doseQuantity | FRCDAVaccination.doseQuantity | FRImmunizationDocument.doseQuantity |
| FRLMImmunisation.doseNumber | FRCDAVaccination.entryRelationship:frRangDeLaVaccination | FRImmunizationDocument.protocolApplied.doseNumber |
| FRLMImmunisation.note | FRCDAVaccination.entryRelationship:frCommentaireER | FRImmunizationDocument.note |
| FRLMImmunisation.prescription | FRCDAVaccination.entryRelationship:frPrescription | FRImmunizationDocument.basedOn |
| FRLMImmunisation.reaction | FRCDAVaccination.entryRelationship:frProbleme | FRImmunizationDocument.reaction |
| FRLMImmunisation.reasonCode |  | FRImmunizationDocument.reasonCode |
| **FRLMBatterieExamensBiologieMedicale** | **FRCDABatterieExamensDeBiologieMedicale** |  |
| FRLMBatterieExamensBiologieMedicale.identifiant | FRCDABatterieExamensDeBiologieMedicale.id |  |
| FRLMBatterieExamensBiologieMedicale.codeBatterieExamen | FRCDABatterieExamensDeBiologieMedicale.code |  |
| FRLMBatterieExamensBiologieMedicale.statut | FRCDABatterieExamensDeBiologieMedicale.statusCode |  |
| FRLMBatterieExamensBiologieMedicale.dateExamen | FRCDABatterieExamensDeBiologieMedicale.effectiveTime |  |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain | FRCDABatterieExamensDeBiologieMedicale.subject |  |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | FRCDABatterieExamensDeBiologieMedicale.subject |  |
| FRLMBatterieExamensBiologieMedicale.laboratoireExecutant | FRCDABatterieExamensDeBiologieMedicale.performer |  |
| FRLMBatterieExamensBiologieMedicale.auteur | FRCDABatterieExamensDeBiologieMedicale.author |  |
| FRLMBatterieExamensBiologieMedicale.participant | FRCDABatterieExamensDeBiologieMedicale.participant |  |
| FRLMBatterieExamensBiologieMedicale.prelevement | FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement |  |
| FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent | FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMBatterieExamensBiologieMedicale.imageIllustrative | FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative |  |
| FRLMBatterieExamensBiologieMedicale.commentaire | FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER |  |
| **FRLMIsolatMicrobiologique** | **FRCDAIsolatMicrobiologique** |  |
| FRLMIsolatMicrobiologique.identifiant | FRCDAIsolatMicrobiologique.id |  |
| FRLMIsolatMicrobiologique.codeIsolat | FRCDAIsolatMicrobiologique.code |  |
| FRLMIsolatMicrobiologique.statut | FRCDAIsolatMicrobiologique.statusCode |  |
| FRLMIsolatMicrobiologique.dateResultat | FRCDAIsolatMicrobiologique.effectiveTime |  |
| FRLMIsolatMicrobiologique.choice:SujetNonHumain | FRCDAIsolatMicrobiologique.subject |  |
| FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain | FRCDAIsolatMicrobiologique.subject |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique | FRCDAIsolatMicrobiologique.specimen |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat | FRCDAIsolatMicrobiologique.specimen.specimenRole |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.identifiant | FRCDAIsolatMicrobiologique.specimen. specimenRole.id |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent | FRCDAIsolatMicrobiologique.specimen. specimenRole.specimenPlayingEntity |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent.code | FRCDAIsolatMicrobiologique.specimen. specimenRole.specimenPlayingEntity.code |  |
| FRLMIsolatMicrobiologique.laboratoireExecutant | FRCDAIsolatMicrobiologique.performer |  |
| FRLMIsolatMicrobiologique.auteur | FRCDAIsolatMicrobiologique.author |  |
| FRLMIsolatMicrobiologique.valideur | FRCDAIsolatMicrobiologique.participant |  |
| FRLMIsolatMicrobiologique.responsable | FRCDAIsolatMicrobiologique.participant |  |
| FRLMIsolatMicrobiologique.dispositifAutomatique | FRCDAIsolatMicrobiologique.participant |  |
| FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale | FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale |  |
| FRLMIsolatMicrobiologique.resultatElementCliniquePertinent | FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMIsolatMicrobiologique.imageIllustrative | FRCDAIsolatMicrobiologique.component:frImageIllustrative |  |
| FRLMIsolatMicrobiologique.commentaire | FRCDAIsolatMicrobiologique.component:frCommentaireER |  |
| **FRLMResultatExamensBiologieElementCliniquePertinent** | **FRCDAResultatExamensDeBiologieElementCliniquePertinent** |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.identifiant | FRCDAResultatExamensDeBiologieElementCliniquePertinent.id |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation | FRCDAResultatExamensDeBiologieElementCliniquePertinent.code |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat | FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat | FRCDAResultatExamensDeBiologieElementCliniquePertinent.value |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.interpretation | FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode.code |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.methode | FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain | FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain | FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant | FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.auteur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.author |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.commentaire | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.prelevement | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference | FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange |  |
| **FRLMResultatsExamensBiologieMedicale** | **FRCDAResultatExamensDeBiologie** |  |
| FRLMResultatsExamensBiologieMedicale.code | FRCDAResultatExamensDeBiologie.code |  |
| FRLMResultatsExamensBiologieMedicale.statut | FRCDAResultatExamensDeBiologie.statusCode |  |
| FRLMResultatsExamensBiologieMedicale.dateResultat | FRCDAResultatExamensDeBiologie.effectiveTime |  |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain | FRCDAResultatExamensDeBiologie.subject |  |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | FRCDAResultatExamensDeBiologie.subject |  |
| FRLMResultatsExamensBiologieMedicale.laboratoireExecutant | FRCDAResultatExamensDeBiologie.performer |  |
| FRLMResultatsExamensBiologieMedicale.auteur | FRCDAResultatExamensDeBiologie.author |  |
| FRLMResultatsExamensBiologieMedicale.valideur | FRCDAResultatExamensDeBiologie.participant |  |
| FRLMResultatsExamensBiologieMedicale.responsable | FRCDAResultatExamensDeBiologie.participant |  |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | FRCDAResultatExamensDeBiologie.participant |  |
| FRLMResultatsExamensBiologieMedicale.prelevement | FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement |  |
| FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale | FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale |  |
| FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique | FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique |  |
| FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent | FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent |  |
| FRLMResultatsExamensBiologieMedicale.imageIllustrative | FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative |  |
| FRLMResultatsExamensBiologieMedicale.commentaire | FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER |  |
| **FRLMObservationMedia** | **FRCDAImageIllustrative** | **FRMediaDocument** |
| FRLMObservationMedia.identifiant | FRCDAImageIllustrative.id | FRMediaDocument.identifier |
| FRLMObservationMedia.content.data | FRCDAImageIllustrative.value | FRMediaDocument.content.data |
| FRLMObservationMedia.content.contentType | FRCDAImageIllustrative.value.mediaType | FRMediaDocument.content.contentType |
| FRLMObservationMedia.subject:FRLMPatient | FRCDAImageIllustrative.subject | FRMediaDocument.subject |
| FRLMObservationMedia.subject:FRLMSpecimen | FRCDAImageIllustrative.specimen | FRMediaDocument.specimen |
| FRLMObservationMedia.note |  | FRMediaDocument.note |
| FRLMObservationMedia.header.performer[x] | FRCDAImageIllustrative.performer | FRMediaDocument.operator |
| FRLMObservationMedia.header.participant[x] | FRCDAImageIllustrative.participant |  |
| FRLMObservationMedia.header.author[x] | FRCDAImageIllustrative.author |  |
| FRLMObservationMedia.header.informant[x] | FRCDAImageIllustrative.informant |  |
| **FRLMMedicationAdministration** | **FRCDATraitement** | **FRMedicationAdministrationDocument** |
| FRLMMedicationAdministration.medication | FRCDATraitement.consumable | FRMedicationAdministrationDocument.medication:FRMedicationDocument |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[not(@operator='A')] | FRMedicationAdministrationDocument.effectivePeriod |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[not(@operator='A')] | FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5 |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[@operator='A'] | FRMedicationAdministrationDocument.effectivePeriod |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[@operator='A'] | FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5 |
| FRLMMedicationAdministration.reason[x] | FRCDATraitement.entryRelationship:frTraitement.entryRelationship:frReferenceInterne | FRMedicationAdministrationDocument.reasonCode |
| FRLMMedicationAdministration.reason[x] | FRCDATraitement.entryRelationship:frTraitement.entryRelationship:frReferenceInterne | FRMedicationAdministrationDocument.reasonReference |
| FRLMMedicationAdministration.dosage.renderedDosageInstruction | FRCDATraitement.text | FRMedicationAdministrationDocument.dosage.text |
| FRLMMedicationAdministration.dosage. dosageDetails.sequence |  | FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension |
| FRLMMedicationAdministration.dosage. dosageDetails.note | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.dose[x] | FRCDATraitement.doseQuantity | FRMedicationAdministrationDocument.dosage.dose |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.rate[x] | FRCDATraitement.rateQuantity | FRMedicationAdministrationDocument.dosage.rate[x] |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.numberOfTimes | FRCDATraitement.effectiveTime.frequency |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.period | FRCDATraitement.effectiveTime.period |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.dayOfWeek | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.timeOfDay | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.frequency.additionalInstructions | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.dateOfAdministration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.conditionOfAdministration | FRCDATraitement.precondition |  |
| FRLMMedicationAdministration.dosage. dosageDetails.date[x] | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.duration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosage. dosageDetails.eventTime | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosage. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationAdministration.dosage. dosageDetails.bodySite | FRCDATraitement.approachSiteCode | FRMedicationAdministrationDocument.dosage.site |
| FRLMMedicationAdministration.dosage. dosageDetails.routeOfAdministration | FRCDATraitement.routeCode | FRMedicationAdministrationDocument.dosage.route |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerPeriod.duration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxDosePerAdministration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosage. dosageDetails.maxLifetimeDose | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.note | FRCDATraitement.text | FRMedicationAdministrationDocument.note |
| **FRLMMedicationDispense** | FRCDATraitementDispense.entryRelationship:frTraitement | **FRMedicationDispenseDocument** |
| FRLMMedicationDispense.header.identifier | FRCDATraitementDispense.entryRelationship:frTraitement.id | FRMedicationDispenseDocument.identifier |
| FRLMMedicationDispense.header.author[x] |  | FRMedicationDispenseDocument.performer.actor |
| FRLMMedicationDispense.header.status | FRCDATraitementDispense.entryRelationship:frTraitement.statusCode | FRMedicationDispenseDocument.status |
| FRLMMedicationDispense.receiver[x] |  | FRMedicationDispenseDocument.receiver |
| FRLMMedicationDispense.relatedRequest | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frReferenceItemPrescription | FRMedicationDispenseDocument.authorizingPrescription |
| FRLMMedicationDispense.medicament | FRCDATraitementDispense.entryRelationship:frTraitement.product:frProduitDeSante | FRMedicationDispenseDocument.medication[x] |
| FRLMMedicationDispense.dispensedQuantity | FRCDATraitementDispense.entryRelationship:frTraitement.quantity | FRMedicationDispenseDocument.quantity |
| FRLMMedicationDispense.timeOfDispensation |  | FRMedicationDispenseDocument.whenHandedOver |
| FRLMMedicationDispense.substitutionOccurred | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frActeSubstitution | FRMedicationDispenseDocument.substitution.wasSubstituted |
| FRLMMedicationDispense.dosageInstructions | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement | FRMedicationDispenseDocument.dosageInstruction |
| FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.text | FRMedicationDispenseDocument.dosageInstruction.text |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.sequence |  | FRMedicationDispenseDocument.dosageInstruction.sequence |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.note | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationDispenseDocument.dosageInstruction.patientInstruction |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.doseQuantity | FRMedicationDispenseDocument.dosageInstruction.doseAndRate.dose[x] |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.rateQuantity | FRMedicationDispenseDocument.dosageInstruction.doseAndRate.rate[x] |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.repeat |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.frequency | FRMedicationDispenseDocument.dosageInstruction.timing.repeat.frequency |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.period | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.period | FRMedicationDispenseDocument.dosageInstruction.timing.repeat.period |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.repeat.dayOfWeek |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.repeat.timeOfDay |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationDispenseDocument.dosageInstruction.additionalInstruction |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.event |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.precondition | FRMedicationDispenseDocument.dosageInstruction.asNeededCodeableConcept |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.date[x] | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.repeat.bounds[x] |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime | FRMedicationDispenseDocument.dosageInstruction.timing.repeat |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventTime | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationDispenseDocument.dosageInstruction.timing.repeat |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.bodySite | FRCDATraitementDispense.entryRelationship:frTraitement.approachSiteCode | FRMedicationDispenseDocument.dosageInstruction.site |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.routeCode | FRMedicationDispenseDocument.dosageInstruction.route |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationDispenseDocument.dosageInstruction.maxDosePerPeriod.numerator |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationDispenseDocument.dosageInstruction.maxDosePerPeriod.denominator |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationDispenseDocument.dosageInstruction.maxDosePerAdministration |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationDispenseDocument.dosageInstruction.maxDosePerLifetime |
| FRLMMedicationDispense.note | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frNotesDuDispensateur | FRMedicationDispenseDocument.note |
| **FRLMMedication** | **FRCDAProduitDeSante** | **FRMedicationDocument** |
| FRLMMedication.identifyingCode[x] | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.code | FRMedicationDocument.code |
| FRLMMedication.classification | FRCDAProduitDeSante.pharm:asSpecializedKind | FRMedicationDocument.extension:classification |
| FRLMMedication.productName | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.name | FRMedicationDocument.extension:productName |
| FRLMMedication.marketingAuthorisationHolder |  | FRMedicationDocument.manufacturer |
| FRLMMedication.item.doseForm | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.pharm:formCode | FRMedicationDocument.form |
| FRLMMedication.item. ingredient.isActive |  | FRMedicationDocument.ingredient.isActive |
| FRLMMedication.item. ingredient.substance | FRCDAProduitDeSante.pharm:ingredient. pharm:ingredient.pharm:code | FRMedicationDocument.ingredient.itemCodeableConcept |
| FRLMMedication.item. ingredient.strengthInfo.strength | FRCDAProduitDeSante.pharm:ingredient.pharm:quantity | FRMedicationDocument.ingredient:substanceActive.strength |
| FRLMMedication.item. ingredient.strengthInfo.basisOfStrengthSubstance |  | FRMedicationDocument.ingredient.strength.extension:basisOfStrengthSubstance |
| FRLMMedication.item.unitOfPresentation | FRCDAProduitDeSante.pharm:asContent | FRMedicationDocument.extension:unitOfPresentation |
| FRLMMedication.item.containedQuantity | FRCDAProduitDeSante.pharm:asContent | FRMedicationDocument.extension:sizeOfItem |
| FRLMMedication.item.amount | FRCDAProduitDeSante.pharm:asContent | FRMedicationDocument.amount |
| FRLMMedication.item.packageType | FRCDAProduitDeSante.pharm:asContent.pharm:containerPackagedMedicine | FRMedicationDocument.extension:packageType |
| FRLMMedication.device |  | FRMedicationDocument.extension:device |
| FRLMMedication.characteristic |  | FRMedicationDocument.extension:conditionnement |
| FRLMMedication.batch.lotNumber | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.lotNumberText | FRMedicationDocument.batch.lotNumber |
| FRLMMedication.batch.expirationDate | FRCDAProduitDeSante.pharm:expirationTime | FRMedicationDocument.batch.expirationDate |
| **FRLMPrescriptionItem** | **FRCDATraitementPrescrit** | **FRMedicationRequestDocument** |
| FRLMPrescriptionItem.header.identifier | FRCDATraitementPrescrit.id | FRMedicationRequestDocument.identifier |
| FRLMPrescriptionItem.header.status | FRCDATraitementPrescrit.statusCode | FRMedicationRequestDocument.status |
| FRLMPrescriptionItem.header.author[x] | FRCDATraitementPrescrit.author | FRMedicationRequestDocument.extension:FRActorExtension |
| FRLMPrescriptionItem.header.author[x] | FRCDATraitementPrescrit.author | FRMedicationRequestDocument.requester |
| FRLMPrescriptionItem.statusReason[x] |  | FRMedicationRequestDocument.statusReason |
| FRLMPrescriptionItem.medication | FRCDATraitementPrescrit.consumable | FRMedicationRequestDocument.medication:FRMedicationDocument |
| FRLMPrescriptionItem.indication[x] | FRCDATraitementPrescrit.entryRelationship:frReferenceInterne | FRMedicationRequestDocument.reasonReference |
| FRLMPrescriptionItem.intendedUseType |  |  |
| FRLMPrescriptionItem.periodOfUse | FRCDATraitementPrescrit.effectiveTime[not(@operator='A')] |  |
| FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction | FRCDATraitementPrescrit.entryRelationship:frTraitement.text | FRMedicationRequestDocument.dosageInstruction.text |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.sequence |  | FRMedicationRequestDocument.dosageInstruction.sequence |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.note | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationRequestDocument.dosageInstruction.patientInstruction |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.doseQuantity | FRMedicationRequestDocument.dosageInstruction.doseAndRate.dose[x] |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.rateQuantity | FRMedicationRequestDocument.dosageInstruction.doseAndRate.rate[x] |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.repeat |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitementPrescrit.entryRelationship:frTraitement. effectiveTime.frequency | FRMedicationRequestDocument.dosageInstruction.timing.repeat.frequency |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.period | FRCDATraitementPrescrit.entryRelationship:frTraitement. effectiveTime.period | FRMedicationRequestDocument.dosageInstruction.timing.repeat.period |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.repeat.dayOfWeek |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.repeat.timeOfDay |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationRequestDocument.dosageInstruction.additionalInstruction |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.event |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.precondition | FRMedicationRequestDocument.dosageInstruction.asNeededCodeableConcept |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.date[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.repeat.bounds[x] |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime | FRMedicationRequestDocument.dosageInstruction.timing.repeat |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient | FRMedicationRequestDocument.dosageInstruction.timing.repeat |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.bodySite | FRCDATraitementPrescrit.entryRelationship:frTraitement.approachSiteCode | FRMedicationRequestDocument.dosageInstruction.site |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.routeCode | FRMedicationRequestDocument.dosageInstruction.route |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod.numerator |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod.denominator |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationRequestDocument.dosageInstruction.maxDosePerAdministration |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity | FRMedicationRequestDocument.dosageInstruction.maxDosePerLifetime |
| FRLMPrescriptionItem.quantityPrescribed | FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit | FRMedicationRequestDocument.dispenseRequest.quantity |
| FRLMPrescriptionItem.validityPeriod | FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement | FRMedicationRequestDocument.dispenseRequest.validityPeriod |
| FRLMPrescriptionItem.substitution.allowed[x] | FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution | FRMedicationRequestDocument.substitution.allowedCodeableConcept |
| FRLMPrescriptionItem.substitution.reason[x] |  | FRMedicationRequestDocument.substitution.reason |
| FRLMPrescriptionItem.numberOfRepeats | FRCDATraitementPrescrit.repeatNumber | FRMedicationRequestDocument.dispenseRequest.numberOfRepeatsAllowed |
| FRLMPrescriptionItem.minimumDispenseInterval |  | FRMedicationRequestDocument.dispenseRequest.dispenseInterval |
| FRLMPrescriptionItem.offLabel.isOffLabelUse | FRCDATraitementPrescrit.entryRelationship:frHorsAMM | FRMedicationRequestDocument.extension:offLabelUse |
| FRLMPrescriptionItem.offLabel.reason[x] |  |  |
| FRLMPrescriptionItem.note | FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur | FRMedicationRequestDocument.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5 |
| FRLMPrescriptionItem.enRapportAvecALD | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD | FRMedicationRequestDocument.reasonReference:FRObservationALDDocument |
| FRLMPrescriptionItem.enRapportAvecAccidentTravail | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail | FRMedicationRequestDocument.reasonReference:FRObservationWorkRelatedAccidentDocument |
| FRLMPrescriptionItem.enRapportAvecPrevention | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention | FRMedicationRequestDocument.reasonReference:FRObservationPreventionDocument |
| FRLMPrescriptionItem.nonRemboursable | FRCDATraitementPrescrit.entryRelationship:frNonRemboursable | FRMedicationRequestDocument.extension:FRNotCoveredExtension |
| **FRLMMedicationUse** | **FRCDATraitement** | **FRMedicationStatementDocument** |
| FRLMMedicationUse.header.status | FRCDATraitement.statusCode | FRMedicationStatementDocument.status |
| FRLMMedicationUse.header.author[x] | FRCDATraitement.author |  |
| FRLMMedicationUse.treatmentStatus |  | FRMedicationStatementDocument.extension:adherence-code |
| FRLMMedicationUse.changeType |  |  |
| FRLMMedicationUse.medication | FRCDATraitement.consumable | FRMedicationStatementDocument.medication[x] |
| FRLMMedicationUse.reason[x] | FRCDATraitement.entryRelationship:frReferenceInterne | FRMedicationStatementDocument.reason[x] |
| FRLMMedicationUse.dosageInstructions.renderedDosageInstruction | FRCDATraitement.text | FRMedicationStatementDocument.dosage.text |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitement.doseQuantity | FRMedicationStatementDocument.dosage.doseAndRate.dose[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitement.rateQuantity | FRMedicationStatementDocument.dosage.doseAndRate.rate[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitement.effectiveTime.frequency | FRMedicationStatementDocument.dosage.timing.repeat.frequency |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.period | FRCDATraitement.effectiveTime.period | FRMedicationStatementDocument.dosage.timing.repeat.period |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.repeat.dayOfWeek |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.repeat.timeOfDay |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitement.entryRelationship:frInstructionsAuPatient | FRMedicationStatementDocument.dosage.additionalInstruction |
| FRLMMedicationUse.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.event |
| FRLMMedicationUse.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitement.precondition | FRMedicationStatementDocument.dosage.asNeededCodeableConcept |
| FRLMMedicationUse.dosageInstructions. dosageDetails.date[x] | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.repeat.bounds[x] |
| FRLMMedicationUse.dosageInstructions. dosageDetails.duration | FRCDATraitement.effectiveTime | FRMedicationStatementDocument.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventTime | FRCDATraitement.entryRelationship:frInstructionsAuPatient | FRMedicationStatementDocument.dosage.timing.repeat |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.bodySite | FRCDATraitement.approachSiteCode | FRMedicationStatementDocument.dosage.site |
| FRLMMedicationUse.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitement.routeCode | FRMedicationStatementDocument.dosage.route |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitement.maxDoseQuantity | FRMedicationStatementDocument.dosage.maxDosePerPeriod.numerator |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitement.maxDoseQuantity | FRMedicationStatementDocument.dosage.maxDosePerPeriod.denominator |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitement.maxDoseQuantity | FRMedicationStatementDocument.dosage.maxDosePerAdministration |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitement.maxDoseQuantity | FRMedicationStatementDocument.dosage.maxDosePerLifetime |
| FRLMMedicationUse.derivedFrom[x] | FRCDATraitement.entryRelationship:frPrescription | FRMedicationStatementDocument.derivedFrom[x] |
| FRLMMedicationUse.note | FRCDATraitement.text | FRMedicationStatementDocument.note |
| **FRLMObservationAssessment** | **FRCDAEvaluation** | **FRObservationAssessmentDocument** |
| FRLMObservationAssessment.header.identifier | FRCDAEvaluation.id | FRObservationAssessmentDocument.identifier |
| FRLMObservationAssessment.header.status | FRCDAEvaluation.statusCode | FRObservationAssessmentDocument.status.extension:statusReason |
| FRLMObservationAssessment.observationDate[x] | FRCDAEvaluation.effectiveTime | FRObservationAssessmentDocument.effectiveDateTime |
| FRLMObservationAssessment.type | FRCDAEvaluation.code | FRObservationAssessmentDocument.code |
| FRLMObservationAssessment.method |  | FRObservationAssessmentDocument.method |
| FRLMObservationAssessment.bodySite | FRLMObservationAssessment.targetSiteCode | FRObservationAssessmentDocument.bodySite |
| FRLMObservationAssessment.result | FRCDAEvaluation.value | FRObservationAssessmentDocument.value[x] |
| FRLMObservationAssessment.interpretation | FRCDAEvaluation.interpretationCode | FRObservationAssessmentDocument.interpretation |
| FRLMObservationAssessment.note | FRCDAEvaluation.text | FRObservationAssessmentDocument.note |
| FRLMObservationAssessment.component | FRCDAEvaluation.entryRelationship:frEvaluationComposant | FRObservationAssessmentDocument.component |
| **FRLMObservation** | **FRCDASimpleObservation** |  |
| FRLMObservation.header.status | FRCDASimpleObservation.statusCode | Observation.status |
| FRLMObservation.header.directSubject[x] | FRCDASimpleObservation.subject | Observation.focus |
| FRLMObservation.observationDate[x] | FRCDASimpleObservation.effectiveTime | Observation.effective[x] |
| FRLMObservation.type | FRCDASimpleObservation.code | Observation.code |
| FRLMObservation.originalName | FRCDASimpleObservation.text | Observation.note |
| FRLMObservation.method | FRCDASimpleObservation.methodCode | Observation.method |
| FRLMObservation.specimen | FRCDASimpleObservation.specimen | Observation.specimen |
| FRLMObservation.order | FRCDASimpleObservation.inFulfillmentOf | Observation.basedOn |
| FRLMObservation.bodySite | FRCDASimpleObservation.targetSiteCode | Observation.bodySite |
| FRLMObservation.result | FRCDASimpleObservation.value | Observation.value[x] |
| FRLMObservation.referenceRange | FRCDASimpleObservation.referenceRange | Observation.referenceRange |
| FRLMObservation.interpretation | FRCDASimpleObservation.interpretationCode | Observation.interpretation |
| FRLMObservation.note | FRCDASimpleObservation.text | Observation.note |
| FRLMObservation.component |  | Observation.component |
| FRLMObservation.derivedFrom[x] | FRCDASimpleObservation.entryRelationship |  |
| FRLMObservation.hasMember[x] | FRCDASimpleObservation.entryRelationship |  |
| **FRLMMicroOrganismSearch** | **FRCDARechercheDeMicroOrganismes** | **FRObservationMicroorganismDetectionDocument** |
| FRLMMicroOrganismSearch.header.identifier | FRCDARechercheDeMicroOrganismes.id | FRObservationMicroorganismDetectionDocument.identifier |
| FRLMMicroOrganismSearch.header.subject | FRCDARechercheDeMicroOrganismes.subject | FRObservationMicroorganismDetectionDocument.subject |
| FRLMMicroOrganismSearch.header.author[x] | FRCDARechercheDeMicroOrganismes.author | FRObservationMicroorganismDetectionDocument.extension:author |
| FRLMMicroOrganismSearch.header.performer[x] | FRCDARechercheDeMicroOrganismes.performer | FRObservationMicroorganismDetectionDocument.performer |
| FRLMMicroOrganismSearch.header.participant[x] | FRCDARechercheDeMicroOrganismes.participant | FRObservationMicroorganismDetectionDocument.extension:author |
| FRLMMicroOrganismSearch.header.informant | FRCDARechercheDeMicroOrganismes.informant | FRObservationMicroorganismDetectionDocument.extension:author |
| FRLMMicroOrganismSearch.header.date | FRCDARechercheDeMicroOrganismes.author.time | FRObservationMicroorganismDetectionDocument.issued |
| FRLMMicroOrganismSearch.header.status | FRCDARechercheDeMicroOrganismes.statusCode | FRObservationMicroorganismDetectionDocument.status |
| FRLMMicroOrganismSearch.header.language | FRCDARechercheDeMicroOrganismes.languageCode | FRObservationMicroorganismDetectionDocument.language |
| FRLMMicroOrganismSearch.header.source |  |  |
| FRLMMicroOrganismSearch.observationDate | FRCDARechercheDeMicroOrganismes.effectiveTime |  |
| FRLMMicroOrganismSearch.type | FRCDARechercheDeMicroOrganismes.code | FRObservationMicroorganismDetectionDocument.code |
| FRLMMicroOrganismSearch.result | FRCDARechercheDeMicroOrganismes.value | FRObservationMicroorganismDetectionDocument.valueBoolean |
| **FRLMMultidrugResistantMicroorganismIdentification** | **FRCDAIdentificationMicroOrganismesMultiresistants** | **FRObservationMultidrugResistantMicroorganismIdentification** |
| FRLMMultidrugResistantMicroorganismIdentification.header.identifier | FRCDAIdentificationMicroOrganismesMultiresistants.id | FRObservationMultidrugResistantMicroorganismIdentification.identifier |
| FRLMMultidrugResistantMicroorganismIdentification.header.subject | FRCDAIdentificationMicroOrganismesMultiresistants.subject | FRObservationMultidrugResistantMicroorganismIdentification.subject |
| FRLMMultidrugResistantMicroorganismIdentification.header.author[x] | FRCDAIdentificationMicroOrganismesMultiresistants.author | FRObservationMultidrugResistantMicroorganismIdentification.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.performer[x] | FRCDAIdentificationMicroOrganismesMultiresistants.performer | FRObservationMultidrugResistantMicroorganismIdentification.performer |
| FRLMMultidrugResistantMicroorganismIdentification.header.participant[x] | FRCDAIdentificationMicroOrganismesMultiresistants.participant | FRObservationMultidrugResistantMicroorganismIdentification.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.informant | FRCDAIdentificationMicroOrganismesMultiresistants.informant | FRObservationMultidrugResistantMicroorganismIdentification.extension:author |
| FRLMMultidrugResistantMicroorganismIdentification.header.date | FRCDAIdentificationMicroOrganismesMultiresistants.author.time | FRObservationMultidrugResistantMicroorganismIdentification.issued |
| FRLMMultidrugResistantMicroorganismIdentification.header.status | FRCDAIdentificationMicroOrganismesMultiresistants.statusCode | FRObservationMultidrugResistantMicroorganismIdentification.status |
| FRLMMultidrugResistantMicroorganismIdentification.header.language | FRCDAIdentificationMicroOrganismesMultiresistants.languageCode | FRObservationMultidrugResistantMicroorganismIdentification.language |
| FRLMMultidrugResistantMicroorganismIdentification.header.source |  |  |
| FRLMMultidrugResistantMicroorganismIdentification.observationDate | FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime |  |
| FRLMMultidrugResistantMicroorganismIdentification.type | FRCDAIdentificationMicroOrganismesMultiresistants.code | FRObservationMultidrugResistantMicroorganismIdentification.code |
| FRLMMultidrugResistantMicroorganismIdentification.result | FRCDAIdentificationMicroOrganismesMultiresistants.value | FRObservationMultidrugResistantMicroorganismIdentification.valueString |
| **FRLMPregnancyObservation** | **FRCDAObservationSurLaGrossesse** | **FRObservationPregnancyDocument** |
| FRLMPregnancyObservation.header.status | FRCDAObservationSurLaGrossesse.statusCode |  |
| FRLMPregnancyObservation.directSubject[x] | FRCDAObservationSurLaGrossesse.subject | FRObservationPregnancyDocument.subject |
| FRLMPregnancyObservation.observationDate[x] | FRCDAObservationSurLaGrossesse.effectiveTime | FRObservationPregnancyDocument.effective[x] |
| FRLMPregnancyObservation.type | FRCDAObservationSurLaGrossesse.code | FRObservationPregnancyDocument.code |
| FRLMPregnancyObservation.method | FRCDAObservationSurLaGrossesse.methodCode | FRObservationPregnancyDocument.method |
| FRLMPregnancyObservation.result | FRCDAObservationSurLaGrossesse.value | FRObservationPregnancyDocument.value |
| FRLMPregnancyObservation.result.dataAbsentReason | FRCDAObservationSurLaGrossesse.nullFlavor | FRObservationPregnancyDocument.dataAbsentReason |
| FRLMPregnancyObservation.result.referenceRange | FRCDAObservationSurLaGrossesse.referenceRange | FRObservationPregnancyDocument.referenceRange |
| FRLMPregnancyObservation.interpretation | FRCDAObservationSurLaGrossesse.interpretationCode | FRObservationPregnancyDocument.interpretation |
| FRLMPregnancyObservation.note | FRCDAObservationSurLaGrossesse.text | FRObservationPregnancyDocument.note |
| FRLMPregnancyObservation.component |  | FRObservationPregnancyDocument.component |
| FRLMPregnancyObservation.derivedFrom[x] |  |  |
| FRLMPregnancyObservation.hasMember[x] |  |  |
| **FRLMObservation** | **FRCDAResultat** | **FRObservationResultDocument** |
| FRLMObservation.header.identifier | FRCDAResultat.id | FRObservationResultDocument.identifier |
| FRLMObservation.header.status | FRCDAResultat.statusCode | FRObservationResultDocument.status |
| FRLMObservation.directSubject[x] | FRCDAResultat.subject | FRObservationResultDocument.focus |
| FRLMObservation.observationDate[x] | FRCDAResultat.effectiveTime | FRObservationResultDocument.effective[x] |
| FRLMObservation.type | FRCDAResultat.code | FRObservationResultDocument.code |
| FRLMObservation.originalName | FRCDAResultat.text | FRObservationResultDocument.code.text |
| FRLMObservation.method | FRCDAResultat.methodCode | FRObservationResultDocument.method |
| FRLMObservation.specimen | FRCDAResultat.specimen | FRObservationResultDocument.specimen |
| FRLMObservation.order | FRCDAResultat.inFulfillmentOf | FRObservationResultDocument.basedOn:FRServiceRequestDocument |
| FRLMObservation.bodySite | FRCDAResultat.targetSiteCode | FRObservationResultDocument.bodySite |
| FRLMObservation.result | FRCDAResultat.value | FRObservationResultDocument.value[x] |
| FRLMObservation.referenceRange | FRCDAResultat.referenceRange | FRObservationResultDocument.referenceRange |
| FRLMObservation.interpretation | FRCDAResultat.interpretationCode | FRObservationResultDocument.interpretation |
| FRLMObservation.note | FRCDAResultat.entryRelationship:frCommentaireER | FRObservationResultDocument.note |
| FRLMObservation.component |  | FRObservationResultDocument.component |
| FRLMObservation.derivedFrom[x] |  | FRObservationResultDocument.derivedFrom |
| FRLMObservation.hasMember[x] |  | FRObservationResultDocument.hasMember |
| **FRLMObservationSocialHistory** | **FRCDAHabitusModeDeVie** | **FRObservationSocialHistoryDocument** |
| FRLMObservationSocialHistory.header.status | FRCDAHabitusModeDeVie.statusCode | FRObservationSocialHistoryDocument.status |
| FRLMObservationSocialHistory.observationDate[x] | FRCDAHabitusModeDeVie.effectiveTime | FRObservationSocialHistoryDocument.effectiveDateTime |
| FRLMObservationSocialHistory.type | FRCDAHabitusModeDeVie.code | FRObservationSocialHistoryDocument.code |
| FRLMObservationSocialHistory.result | FRCDAHabitusModeDeVie.value | FRObservationSocialHistoryDocument.valueCodeableConcept |
| FRLMObservationSocialHistory.note | FRCDAHabitusModeDeVie.text | FRObservationSocialHistoryDocument.note |
| **FRLMObservationVitalSign** | **FRCDASigneVitalObserve** | **FRObservationVitalSignsDocument** |
| FRLMObservationVitalSign.header.identifier | FRCDASigneVitalObserve.id | FRObservationVitalSignsDocument.identifier |
| FRLMObservationVitalSign.observationDate[x] | FRCDASigneVitalObserve.effectiveTime | FRObservationVitalSignsDocument.effectiveDateTime |
| FRLMObservationVitalSign.type | FRCDASigneVitalObserve.code | FRObservationVitalSignsDocument.code |
| FRLMObservationVitalSign.header.status | FRCDASigneVitalObserve.statusCode | FRObservationVitalSignsDocument.status |
| FRLMObservationVitalSign.method | FRCDASigneVitalObserve.methodCode | FRObservationVitalSignsDocument.method |
| FRLMObservationVitalSign.bodySite | FRCDASigneVitalObserve.targetSiteCode | FRObservationVitalSignsDocument.bodySite |
| FRLMObservationVitalSign.result | FRCDASigneVitalObserve.value | FRObservationVitalSignsDocument.component.valueQuantity |
| FRLMObservationVitalSign.interpretation | FRCDASigneVitalObserve.interpretationCode | FRObservationVitalSignsDocument.interpretation |
| FRLMObservationVitalSign.note | FRCDASigneVitalObserve.text | FRObservationVitalSignsDocument.note |
| FRLMObservationVitalSign.header.author | FRCDASigneVitalObserve.author | FRObservationVitalSignsDocument.extension:author |
| **FRLMParticipant** | **FRCDAParticipant** | **FRActorExtension** |
| FRLMParticipant.identifier | FRCDAParticipant.participantRole.id | FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier |
| FRLMParticipant.name | FRCDAParticipant.participantRole. playingEntity.name | FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.name |
| FRLMParticipant.type | FRCDAParticipant.code | FRActorExtension.extension[typeCode].value[x] |
| FRLMParticipant.role | FRCDAParticipant.participantRole. playingEntity.code | FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification |
| FRLMParticipant.period | FRCDAParticipant.time |  |
| FRLMParticipant.participant.participantProfessional | FRCDAParticipant.participantRole.playingEntity | FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument |
| FRLMParticipant.participant.participantDevice | FRCDAParticipant.participantRole.playingDevice | FRActorExtension.extension[actor].value[x]:Device |
| FRLMParticipant.participant.participantOrganisation | FRCDAParticipant.participantRole.scopingEntity | FRActorExtension.extension[actor].value[x]:FROrganizationRoleDocument |
| **FRLMPregnancyHistory** | **FRCDAHistoriqueDeLaGrossesse** | **FRObservationPregnancyHistoryDocument** |
| FRLMPregnancyHistory.header.identifier | FRCDAHistoriqueDeLaGrossesse.id | FRObservationPregnancyHistoryDocument.identifier |
| FRLMPregnancyHistory.header.status | FRCDAHistoriqueDeLaGrossesse.statusCode | FRObservationPregnancyHistoryDocument.status |
| FRLMPregnancyHistory.directSubject[x] | FRCDAHistoriqueDeLaGrossesse.subject | FRObservationPregnancyHistoryDocument.focus |
| FRLMPregnancyHistory.type | FRCDAHistoriqueDeLaGrossesse.code | FRObservationPregnancyHistoryDocument.code |
| FRLMPregnancyHistory.method |  | FRObservationPregnancyHistoryDocument.method |
| FRLMPregnancyHistory.observationDate[x] | FRCDAHistoriqueDeLaGrossesse.effectiveTime | FRObservationPregnancyHistoryDocument.effective[x] |
| FRLMPregnancyHistory.result | FRCDAHistoriqueDeLaGrossesse.component:frObservationSurLaGrossesse |  |
| FRLMPregnancyHistory.interpretation |  | FRObservationPregnancyHistoryDocument.interpretation |
| FRLMPregnancyHistory.note |  | FRObservationPregnancyHistoryDocument.note |
| FRLMPregnancyHistory.component | FRCDAHistoriqueDeLaGrossesse.component:frNaissance | FRObservationPregnancyHistoryDocument.component |
| FRLMPregnancyHistory.derivedFrom[x] |  | FRObservationPregnancyHistoryDocument.derivedFrom |
| FRLMPregnancyHistory.hasMember[x] |  | FRObservationPregnancyHistoryDocument.hasMember |
| **FRLMProcedure** | **FRCDAActe** | **FRProcedureDocument** |
| FRLMProcedure.code | FRCDAActe.code | FRProcedureDocument.code |
| FRLMProcedure.header.status | FRCDAActe.statusCode | FRProcedureDocument.status |
| FRLMProcedure.procedureDate[x] | FRCDAActe.effectiveTime | FRProcedureDocument.performed[x] |
| FRLMProcedure.priority | FRCDAActe.priorityCode | FRProcedureDocument.extension:priority |
| FRLMProcedure.bodySite | FRCDAActe.targetSiteCode | FRProcedureDocument.bodySite.TargetSiteCode |
| FRLMProcedure.approachSiteCode | FRCDAActe.approachSiteCode | FRProcedureDocument.bodySite.ApproachSiteCode |
| FRLMProcedure.difficulty | FRCDAActe.entryRelationship:frSimpleObservationDifficulte | FRProcedureDocument.extension:difficulte |
| FRLMProcedure.reason[x] | FRCDAActe.entryRelationship:frReferenceInterneMotifActe | FRProcedureDocument.reasonCode |
| FRLMProcedure.reason[x] | FRCDAActe.entryRelationship:frReferenceInterneMotifActe | FRProcedureDocument.reasonReference |
| FRLMProcedure.outcome |  | FRProcedureDocument.outcome |
| FRLMProcedure.complication |  | FRProcedureDocument.complication |
| FRLMProcedure.deviceUsed | FRCDAActe.entryRelationship:frReferenceInterneDM | FRProcedureDocument.usedReference |
| FRLMProcedure.focalDevice |  | FRProcedureDocument.focalDevice.manipulated.device |
| FRLMProcedure.note | FRCDAActe.text | FRProcedureDocument.note |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:sectionAddendum |
| FRLMAddendum.codeSection | FRCDADicomAddendum.code | FRCompositionDocument.section:sectionAddendum.code |
| FRLMAddendum.titleSection | FRCDADicomAddendum.title | FRCompositionDocument.section:sectionAddendum.title |
| FRLMAddendum.description | FRCDADicomAddendum.text | FRCompositionDocument.section:sectionAddendum.text |
| FRLMAddendum.author[x] | FRCDADicomAddendum.author | FRCompositionDocument.author |
| **FRLMAdvanceDirectives** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:sectionAdvanceDirectives |
| FRLMAdvanceDirectives.codeSection | FRCDADirectivesAnticipees.code | FRCompositionDocument.section:sectionAdvanceDirectives.code |
| FRLMAdvanceDirectives.titleSection | FRCDADirectivesAnticipees.title | FRCompositionDocument.section:sectionAdvanceDirectives.title |
| FRLMAdvanceDirectives.description | FRCDADirectivesAnticipees.text | FRCompositionDocument.section:sectionAdvanceDirectives.text |
| FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective | FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee | FRCompositionDocument.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument |
| **FRLMAlerts** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:sectionAlerts |
| FRLMAlerts.codeSection | FRCDAPointsDeVigilancesNonCode.code | FRCompositionDocument.section:sectionAlerts.code |
| FRLMAlerts.titleSection | FRCDAPointsDeVigilancesNonCode.title | FRCompositionDocument.section:sectionAlerts.title |
| FRLMAlerts.description | FRCDAPointsDeVigilancesNonCode.text | FRCompositionDocument.section:sectionAlerts.text |
| FRLMAlerts.entry.alert |  | FRCompositionDocument.section:sectionAlerts.entry:Flag |
| **FRLMAllergiesAndIntolerances** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:sectionAllergiesAndIntolerances |
| FRLMAllergiesAndIntolerances.codeSection | FRCDAAllergiesEtHypersensibilites.code | FRCompositionDocument.section:sectionAllergiesAndIntolerances.code |
| FRLMAllergiesAndIntolerances.titleSection | FRCDAAllergiesEtHypersensibilites.title | FRCompositionDocument.section:sectionAllergiesAndIntolerances.title |
| FRLMAllergiesAndIntolerances.description | FRCDAAllergiesEtHypersensibilites.text | FRCompositionDocument.section:sectionAllergiesAndIntolerances.text |
| FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance | FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites | FRCompositionDocument.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument |
| **FRLMAttachments** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:sectionAttachments |
| FRLMAttachments.codeSection | FRCDADocumentsAjoutes.code | FRCompositionDocument.section:sectionAttachments.code |
| FRLMAttachments.titleSection | FRCDADocumentsAjoutes.title | FRCompositionDocument.section:sectionAttachments.title |
| FRLMAttachments.description | FRCDADocumentsAjoutes.text | FRCompositionDocument.section:sectionAttachments.text |
| FRLMAttachments.entry.attachment:FRLMAttachment | FRCDADocumentsAjoutes.entry:frDocumentAttache |  |
| FRLMAttachments.entry.observation:FRLMObservation | FRCDADocumentsAjoutes.entry:frSimpleObservation |  |
| **FRLMCarePlans** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:sectionPlanOfCare |
| FRLMCarePlans.codeSection | FRCDAPlanDeSoins.code | FRCompositionDocument.section:sectionPlanOfCare.code |
| FRLMCarePlans.titleSection | FRCDAPlanDeSoins.title | FRCompositionDocument.section:sectionPlanOfCare.title |
| FRLMCarePlans.description | FRCDAPlanDeSoins.text | FRCompositionDocument.section:sectionPlanOfCare.text |
| FRLMCarePlans.entry.carePlans:FRLMCarePlan | FRCDAPlanDeSoins.entry:FRCDAActe |  |
| **FRLMComparisonStudy** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:sectionComparison |
| FRLMComparisonStudy.codeSection | FRCDADICOMExamenComparatif.code | FRCompositionDocument.section:sectionComparison.code |
| FRLMComparisonStudy.titleSection | FRCDADICOMExamenComparatif.title | FRCompositionDocument.section:sectionComparison.title |
| FRLMComparisonStudy.description | FRCDADICOMExamenComparatif.text | FRCompositionDocument.section:sectionComparison.text |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| **FRLMConclusion** | **FRCDADICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMConclusion.codeSection | FRCDADICOMConclusion.code |  |
| FRLMConclusion.description | FRCDADICOMConclusion.text |  |
| FRLMConclusion.titleSection | FRCDADICOMConclusion.title |  |
| FRLMConclusion.entry.conditionOrFinding[x] |  | FRDiagnosticReportImagingDocument.result |
| **FRLMDicomStudyMetadata** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:sectionImagingStudy |
| FRLMDicomStudyMetadata.titleSection | FRCDADICOMObjectCatalog.title | FRCompositionDocument.section:sectionImagingStudy.title |
| FRLMDicomStudyMetadata.codeSection | FRCDADICOMObjectCatalog.code | FRCompositionDocument.section:sectionImagingStudy.code |
| FRLMDicomStudyMetadata.description | FRCDADICOMObjectCatalog.text | FRCompositionDocument.section:sectionImagingStudy.text |
| FRLMDicomStudyMetadata.entry.imagingStudy | FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie | FRCompositionDocument.section:sectionImagingStudy.entry:FRImagingStudyDocument |
| **FRLMExaminationReport** | **FRCDADICOMActeImagerie** |  |
| FRLMExaminationReport.codeSection | FRCDADICOMActeImagerie.code |  |
| FRLMExaminationReport.titleSection | FRCDADICOMActeImagerie.title |  |
| FRLMExaminationReport.description | FRCDADICOMActeImagerie.text |  |
| FRLMExaminationReport.entry.imagingProcedures | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie | FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument |
| FRLMExaminationReport.entry.imagingProcedures | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie | FRDiagnosticReportImagingDocument.extension:procedure |
| FRLMExaminationReport.entry.medicationAdministrations | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante | FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.medicationAdministrations | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante | FRDiagnosticReportImagingDocument.extension:procedure.partOf:FRMedicationAdministrationDocument |
| FRLMExaminationReport.entry.adverseReactions |  | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRCompositionDocument.section:sectionImpression |
| FRLMExaminationReport.subSection.conclusion | **FRCDASectionDICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings.entry:FRObservationResultDocument |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings.text |
| FRLMExaminationReport.entry.results[x] | **FRCDADICOMResultats** | FRDiagnosticReportImagingDocument.result |
| **FRLMExposureInformation** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:sectionExposureRadiation |
| FRLMExposureInformation.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:sectionExposureRadiation.code |
| FRLMExposureInformation.titleSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:sectionExposureRadiation.title |
| FRLMExposureInformation.description | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:sectionExposureRadiation.text |
| FRLMExposureInformation.subSection.quantityExposure | FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite | FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExposureInformation.subSection.radiopharmaceuticalAdministration | FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMFamilyMedicalHistory** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:sectionFamilyMedicalHistory |
| FRLMFamilyMedicalHistory.codeSection | FRCDAAntecedentsFamiliaux.code | FRCompositionDocument.section:sectionFamilyMedicalHistory.code |
| FRLMFamilyMedicalHistory.titleSection | FRCDAAntecedentsFamiliaux.title | FRCompositionDocument.section:sectionFamilyMedicalHistory.title |
| FRLMFamilyMedicalHistory.description | FRCDAAntecedentsFamiliaux.text | FRCompositionDocument.section:sectionFamilyMedicalHistory.text |
| FRLMFamilyMedicalHistory.entry.familyMemberHistory | FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux | FRCompositionDocument.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMFunctionalStatus** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:sectionFunctionalStatus |
| FRLMFunctionalStatus.codeSection | FRCDAStatutFonctionnel.code | FRCompositionDocument.section:sectionFunctionalStatus.code |
| FRLMFunctionalStatus.titleSection | FRCDAStatutFonctionnel.title | FRCompositionDocument.section:sectionFunctionalStatus.title |
| FRLMFunctionalStatus.description | FRCDAStatutFonctionnel.text | FRCompositionDocument.section:sectionFunctionalStatus.text |
| FRLMFunctionalStatus.author | FRCDAStatutFonctionnel.author | FRCompositionDocument.author |
| FRLMFunctionalStatus.informant | FRCDAStatutFonctionnel.informant | FRCompositionDocument.extension:informant |
| FRLMFunctionalStatus.entry.assessment | FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:sectionFunctionalStatus.entry:FRObservationAssessmentDocument |
| **FRLMHazardousWorkingConditions** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors |
| FRLMHazardousWorkingConditions.codeSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.code | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.code |
| FRLMHazardousWorkingConditions.titleSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.title | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.title |
| FRLMHazardousWorkingConditions.description | FRCDAFacteursDeRisqueProfessionnelsNonCode.text | FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.text |
| **FRLMHospitalDischargeMedications** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:sectionDischargeMedications |
| FRLMHospitalDischargeMedications.codeSection | FRCDATraitementsALaSortie.code | FRCompositionDocument.section:sectionDischargeMedications.code |
| FRLMHospitalDischargeMedications.titleSection | FRCDATraitementsALaSortie.title | FRCompositionDocument.section:sectionDischargeMedications.title |
| FRLMHospitalDischargeMedications.description | FRCDATraitementsALaSortie.text | FRCompositionDocument.section:sectionDischargeMedications.text |
| FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration | FRCDATraitementsALaSortie.entry.FRCDATraitement |  |
| **FRLMImmunisations** | **FRCDAVaccinations** | FRCompositionDocument.section:sectionImmunizations |
| FRLMImmunisations.codeSection | FRCDAVaccinations.code | FRCompositionDocument.section:sectionImmunizations.code |
| FRLMImmunisations.titleSection | FRCDAVaccinations.title | FRCompositionDocument.section:sectionImmunizations.title |
| FRLMImmunisations.description | FRCDAVaccinations.text | FRCompositionDocument.section:sectionImmunizations.text |
| FRLMImmunisations.entry.immunisation | FRCDAVaccinations.entry.FRCDAVaccination | FRCompositionDocument.section:sectionImmunizations.entry:FRImmunizationDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** |  |
| FRLMCRBIOChapitre.code | FRCDACRBIOChapitre.code |  |
| FRLMCRBIOChapitre.blocNarratif | FRCDACRBIOChapitre.text |  |
| FRLMCRBIOChapitre.titreSection | FRCDACRBIOChapitre.title |  |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation |  |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache |  |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** |  |
| FRLMCRBIOSousChapitre.codeSection | FRCDACRBIOSousChapitre.code |  |
| FRLMCRBIOSousChapitre.blocNarratif | FRCDACRBIOSousChapitre.text |  |
| FRLMCRBIOSousChapitre.titreSection | FRCDACRBIOSousChapitre.title |  |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale |  |
| **FRLMMedicalDevicePrescriptions** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevicePrescription |
| FRLMMedicalDevicePrescriptions.author[x] | FRCDAPrescriptionDispositifsMedicaux.author | FRCompositionDocument.section:sectionMedicalDevicePrescription.author |
| FRLMMedicalDevicePrescriptions.codeSection | FRCDAPrescriptionDispositifsMedicaux.code | FRCompositionDocument.section:sectionMedicalDevicePrescription.code |
| FRLMMedicalDevicePrescriptions.titleSection | FRCDAPrescriptionDispositifsMedicaux.title | FRCompositionDocument.section:sectionMedicalDevicePrescription.title |
| FRLMMedicalDevicePrescriptions.description | FRCDAPrescriptionDispositifsMedicaux.text | FRCompositionDocument.section:sectionMedicalDevicePrescription.text |
| FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse | FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMMedicalDevicesAndImplants** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:sectionMedicalDevices |
| FRLMMedicalDevicesAndImplants.codeSection | FRCDADispositifsMedicaux.code | FRCompositionDocument.section:sectionMedicalDevices.code |
| FRLMMedicalDevicesAndImplants.titleSection | FRCDADispositifsMedicaux.title | FRCompositionDocument.section:sectionMedicalDevices.title |
| FRLMMedicalDevicesAndImplants.description | FRCDADispositifsMedicaux.text | FRCompositionDocument.section:sectionMedicalDevices.text |
| FRLMMedicalDevicesAndImplants.entry.deviceUse | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument |
| **FRLMHistoryOfPastIllness** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:sectionMedicalHistory |
| FRLMHistoryOfPastIllness.codeSection | FRCDAAntecedentsMedicaux.code | FRCompositionDocument.section:sectionMedicalHistory.code |
| FRLMHistoryOfPastIllness.titleSection | FRCDAAntecedentsMedicaux.title | FRCompositionDocument.section:sectionMedicalHistory.title |
| FRLMHistoryOfPastIllness.description | FRCDAAntecedentsMedicaux.text | FRCompositionDocument.section:sectionMedicalHistory.text |
| FRLMHistoryOfPastIllness.entry.problem:FRLMCondition | FRCDAAntecedentsMedicaux.entry. FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme | FRCompositionDocument.section:sectionMedicalHistory.entry:FRConditionDocument |
| **FRLMMedicationDispensations** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:sectionMedicationDispense |
| FRLMMedicationDispensations.codeSection | FRCDADispensationMedicaments.code | FRCompositionDocument.section:sectionMedicationDispense.code |
| FRLMMedicationDispensations.description | FRCDADispensationMedicaments.text | FRCompositionDocument.section:sectionMedicationDispense.text |
| FRLMMedicationDispensations.titleSection | FRCDADispensationMedicaments.title | FRCompositionDocument.section:sectionMedicationDispense.title |
| FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense | FRCDADispensationMedicaments.entry.FRCDATraitementDispense | FRCompositionDocument.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument |
| **FRLMMedicationPrescription** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:sectionMedicationRequest |
| FRLMMedicationPrescription.author[x] | FRCDAPrescriptionMedicaments.author | FRCompositionDocument.section:sectionMedicationRequest.author |
| FRLMMedicationPrescription.codeSection | FRCDAPrescriptionMedicaments.code | FRCompositionDocument.section:sectionMedicationRequest.code |
| FRLMMedicationPrescription.titleSection | FRCDAPrescriptionMedicaments.title | FRCompositionDocument.section:sectionMedicationRequest.title |
| FRLMMedicationPrescription.description | FRCDAPrescriptionMedicaments.text | FRCompositionDocument.section:sectionMedicationRequest.text |
| FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem | FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit | FRCompositionDocument.section:sectionMedicationRequest.entry:FRMedicationRequestDocument |
| **FRLMMedicationSummary** | **FRCDATraitements** | FRCompositionDocument.section:sectionMedications |
| FRLMMedicationSummary.codeSection | FRCDATraitements.code | FRCompositionDocument.section:sectionMedications.code |
| FRLMMedicationSummary.titleSection | FRCDATraitements.title | FRCompositionDocument.section:sectionMedications.title |
| FRLMMedicationSummary.description | FRCDATraitements.text | FRCompositionDocument.section:sectionMedications.text |
| FRLMMedicationSummary.entry.medicationAdministration:FRLMMedicationAdministration | FRCDATraitements.entry:FRCDATraitement | FRCompositionDocument.section:sectionMedications.entry:FRMedicationAdministrationDocument |
| **FRLMNote** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:sectionNote |
| FRLMNote.codeSection | FRCDACommentaireNonCode.code | FRCompositionDocument.section:sectionNote.code |
| FRLMNote.titleSection | FRCDACommentaireNonCode.title | FRCompositionDocument.section:sectionNote.title |
| FRLMNote.description | FRCDACommentaireNonCode.text | FRCompositionDocument.section:sectionNote.extension:section-note |
| **FRLMOrderInformation** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:sectionOrder |
| FRLMOrderInformation.titleSection | FRCDADICOMDemandeExamen.title | FRCompositionDocument.section:sectionOrder.title |
| FRLMOrderInformation.description | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:sectionOrder.text |
| FRLMOrderInformation.codeSection | FRCDADICOMDemandeExamen.code | FRCompositionDocument.section:sectionOrder.code |
| FRLMOrderInformation.entry.orderInformation |  | FRCompositionDocument.section:sectionOrder.entry:FRServiceRequestImagingDocument |
| **FRLMPatientEducation** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:sectionPatientEducation |
| FRLMPatientEducation.codeSection | FRCDAEducationDuPatient.code | FRCompositionDocument.section:sectionPatientEducation.code |
| FRLMPatientEducation.titleSection | FRCDAEducationDuPatient.title | FRCompositionDocument.section:sectionPatientEducation.title |
| FRLMPatientEducation.description | FRCDAEducationDuPatient.text | FRCompositionDocument.section:sectionPatientEducation.text |
| FRLMPatientEducation.entry.procedure:FRLMProcedure | FRCDAEducationDuPatient.entry:frActe | FRCompositionDocument.section:sectionPatientEducation.entry:FRProcedureDocument |
| FRLMPatientEducation.entry.observation:FRLMObservation | FRCDAEducationDuPatient.entry:frSimpleObservation | FRCompositionDocument.section:sectionPatientEducation.entry:Observation |
| FRLMPatientEducation.entry.reference:FRLMAttachment | FRCDAEducationDuPatient.entry:frReferencesExternes | FRCompositionDocument.section:sectionPatientEducation.entry:FRDocumentReferenceDocument |
| **FRLMPredictableAdverseDrugReaction** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction |
| FRLMPredictableAdverseDrugReaction.titreSection | FRCDAEffetsIndesirables.title |  |
| FRLMPredictableAdverseDrugReaction.description | FRCDAEffetsIndesirables.text | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.text |
| FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction | FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable | FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument |
| **FRLMSectionPregnancyHistory** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:sectionPregnancyHistory |
| FRLMSectionPregnancyHistory.codeSection | FRCDAHistoriqueDesGrossesses.code | FRCompositionDocument.section:sectionPregnancyHistory.code |
| FRLMSectionPregnancyHistory.titleSection | FRCDAHistoriqueDesGrossesses.title | FRCompositionDocument.section:sectionPregnancyHistory.title |
| FRLMSectionPregnancyHistory.description | FRCDAHistoriqueDesGrossesses.text | FRCompositionDocument.section:sectionPregnancyHistory.text |
| FRLMSectionPregnancyHistory.entry.pregnancyStatus:FRLMPregnancyStatus | FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse | FRCompositionDocument.section:sectionPregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMSectionPregnancyHistory.entry.pregnancyHistory:FRLMPregnancyHistory | FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse | FRCompositionDocument.section:sectionPregnancyHistory.entry:FRPregnancyHistoryDocument |
| FRLMSectionPregnancyHistory.note |  | FRCompositionDocument.section:sectionPregnancyHistory.extension:section-note |
| **FRLMPresentedForm** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:sectionPresentedForm |
| FRLMPresentedForm.codeSection | FRCDADocumentPDFCopie.code | FRCompositionDocument.section:sectionPresentedForm.code |
| FRLMPresentedForm.titleSection | FRCDADocumentPDFCopie.title | FRCompositionDocument.section:sectionPresentedForm.title |
| FRLMPresentedForm.description | FRCDADocumentPDFCopie.text | FRCompositionDocument.section:sectionPresentedForm.text |
| FRLMPresentedForm.entry.attachment:FRLMAttachment | FRCDADocumentPDFCopie.entry:FRCDADocumentAttache | FRCompositionDocument.section:sectionPresentedForm.entry:FRDocumentReferenceDocument |
| **FRLMProblems** | **FRCDAProblemesActifs** | FRCompositionDocument.section:sectionProblems |
| FRLMProblems.codeSection | FRCDAProblemesActifs.code | FRCompositionDocument.section:sectionProblems.code |
| FRLMProblems.titleSection | FRCDAProblemesActifs.title | FRCompositionDocument.section:sectionProblems.title |
| FRLMProblems.description | FRCDAProblemesActifs.text | FRCompositionDocument.section:sectionProblems.text |
| FRLMProblems.entry.problem:FRLMCondition | FRCDAProblemesActifs.entry:FRCDAListeDesProblemes | FRCompositionDocument.section:sectionProblems.entry:FRConditionDocument |
| **FRLMProcedures** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:sectionProceduresHx |
| FRLMProcedures.codeSection | FRCDAHistoriqueDesActes.code | FRCompositionDocument.section:sectionProceduresHx.code |
| FRLMProcedures.titleSection | FRCDAHistoriqueDesActes.title | FRCompositionDocument.section:sectionProceduresHx.title |
| FRLMProcedures.description | FRCDAHistoriqueDesActes.text | FRCompositionDocument.section:sectionProceduresHx.text |
| FRLMProcedures.entry.procedure:FRLMProcedure | FRCDAHistoriqueDesActes.entry:FRCDAActe | FRCompositionDocument.section:sectionProceduresHx.entry:FRProcedureDocument |
| **FRLMQRCode** | **FRCDACodeABarres** | FRCompositionDocument.section:sectionQrCode |
| FRLMQRCode.codeSection | FRCDACodeABarres.code | FRCompositionDocument.section:sectionQrCode.code |
| FRLMQRCode.titleSection | FRCDACodeABarres.title | FRCompositionDocument.section:sectionQrCode.title |
| FRLMQRCode.description | FRCDACodeABarres.text | FRCompositionDocument.section:sectionQrCode.text |
| FRLMQRCode.entry.observationMedia:FRLMObservationMedia | FRCDACodeABarres.entry.FRCDACodeABarres | FRCompositionDocument.section:sectionQrCode.entry:FRCDAMediaDocument |
| **FRLMReasonForReferral** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:sectionReasonForReferral |
| FRLMReasonForReferral.codeSection | FRCDARaisonDeLaRecommandation.code | FRCompositionDocument.section:sectionReasonForReferral.code |
| FRLMReasonForReferral.titleSection | FRCDARaisonDeLaRecommandation.title | FRCompositionDocument.section:sectionReasonForReferral.title |
| FRLMReasonForReferral.description | FRCDARaisonDeLaRecommandation.text | FRCompositionDocument.section:sectionReasonForReferral.text |
| FRLMReasonForReferral.entry.observation | FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation | FRCompositionDocument.section:sectionReasonForReferral.entry:Observation |
| FRLMReasonForReferral.entry.problemes | FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme | FRCompositionDocument.section:sectionReasonForReferral.entry:FRConditionDocument |
| **FRLMObservationResults** | **FRCDAResultats** | FRCompositionDocument.section:sectionResults |
| FRLMObservationResults.codeSection | FRCDAResultats.code | FRCompositionDocument.section:sectionResults.code |
| FRLMObservationResults.titleSection | FRCDAResultats.title | FRCompositionDocument.section:sectionResults.title |
| FRLMObservationResults.description | FRCDAResultats.text | FRCompositionDocument.section:sectionResults.text |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRDiagnosticReportDocument |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMObservationResults.entry.observationResult | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:sectionResults.entry:FRObservationResultDocument |
| **FRLMSocialHistory** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:sectionSocialHistory |
| FRLMSocialHistory.codeSection | FRCDAHabitusModeDeVieSection.code | FRCompositionDocument.section:sectionSocialHistory.code |
| FRLMSocialHistory.titleSection | FRCDAHabitusModeDeVieSection.title | FRCompositionDocument.section:sectionSocialHistory.title |
| FRLMSocialHistory.description | FRCDAHabitusModeDeVieSection.text | FRCompositionDocument.section:sectionSocialHistory.text |
| FRLMSocialHistory.entry.observationSocialHistory:FRLMObservationSocialHistory | FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie | FRCompositionDocument.section:sectionSocialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:sectionHistory |
| **FRLMSupportingInformation** | **FRCDADICOMHistoriqueMedical** | FRDiagnosticReportImagingDocument.extension:historiqueMedical |
| FRLMSupportingInformation.codeSection | FRCDADICOMHistoriqueMedical.code | FRCompositionDocument.section:sectionHistory.code |
| FRLMSupportingInformation.titleSection | FRCDADICOMHistoriqueMedical.title | FRCompositionDocument.section:sectionHistory.title |
| FRLMSupportingInformation.description | FRCDADICOMHistoriqueMedical.text | FRCompositionDocument.section:sectionHistory.text |
| FRLMSupportingInformation.entry.previousResultsInformation |  | FRCompositionDocument.section:sectionHistory.entry:FRObservationResultDocument |
| FRLMSupportingInformation.entry.previousResultsInformation |  | FRDiagnosticReportImagingDocument.result:resultatAnterieur |
| FRLMSupportingInformation.entry.historyOfPastIllness | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRCompositionDocument.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastIllness | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRCompositionDocument.section:sectionHistory.entry:Observation |
| FRLMSupportingInformation.entry.historyOfPastProcedures | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation |
| FRLMSupportingInformation.entry.pregnancyStatus | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRCompositionDocument.section:sectionHistory.entry:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.pregnancyStatus | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument |
| FRLMSupportingInformation.entry.contraIndication | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRCompositionDocument.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.contraIndication | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument |
| FRLMSupportingInformation.entry.condition |  | FRCompositionDocument.section:sectionHistory.entry:FRConditionDocument |
| FRLMSupportingInformation.entry.condition |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRConditionDocument |
| FRLMSupportingInformation.entry.device |  |  |
| FRLMSupportingInformation.entry.device |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  |  |
| FRLMSupportingInformation.entry.priorMedicationAdministration |  | FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| FRLMSupportingInformation.entry.sexForClinicalUse |  |  |
| **FRLMVitalSigns** | **FRCDASignesVitaux** | FRCompositionDocument.section:sectionVitalSigns |
| FRLMVitalSigns.titleSection | FRCDASignesVitaux.title | FRCompositionDocument.section:sectionVitalSigns.title |
| FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign | FRCDASignesVitaux.entry:FRCDASignesVitauxEntry | FRCompositionDocument.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument |
| **FRLMServiceRequest** | **FRCDADemandeDExamenOuDeSuivi** | **FRServiceRequestDocument** |
| FRLMServiceRequest.header.status | FRCDADemandeDExamenOuDeSuivi.statusCode | FRServiceRequestDocument.status |
| FRLMServiceRequest.code | FRCDADemandeDExamenOuDeSuivi.code | FRServiceRequestDocument.code |
| FRLMServiceRequest.quantity |  | FRServiceRequestDocument.quantity |
| FRLMServiceRequest.bodySite | FRCDADemandeDExamenOuDeSuivi.targetSiteCode | FRServiceRequestDocument.bodySite |
| FRLMServiceRequest.reason[x] |  | FRServiceRequestDocument.reasonCode |
| FRLMServiceRequest.priority | FRCDADemandeDExamenOuDeSuivi.priorityCode | FRServiceRequestDocument.priority |
| FRLMServiceRequest.supportingInformation[x] | FRCDADemandeDExamenOuDeSuivi.entryRelationship.observation | FRServiceRequestDocument.supportingInfo |
| FRLMServiceRequest.specimen | FRCDADemandeDExamenOuDeSuivi.specimen | FRServiceRequestDocument.specimen |
| FRLMServiceRequest.encounter | FRCDADemandeDExamenOuDeSuivi.entryRelationship.encounter | FRServiceRequestDocument.encounter |
| FRLMServiceRequest.occurrence[x] | FRCDADemandeDExamenOuDeSuivi.effectiveTime | FRServiceRequestDocument.occurrence[x] |
| FRLMServiceRequest.patientInstructions | FRCDADemandeDExamenOuDeSuivi.text | FRServiceRequestDocument.note |
| **FRLMSpecimen** | **FRCDAPrelevement** | **FRSpecimenDocument** |
| FRLMSpecimen.identifier | FRCDAPrelevement.id | FRSpecimenDocument.identifier |
| FRLMSpecimen.header.status | FRCDAPrelevement.statusCode | FRSpecimenDocument.status |
| FRLMSpecimen.type | FRCDAPrelevement.code | FRSpecimenDocument.type |
| FRLMSpecimen.specimenSource[x] | FRCDAPrelevement.participant |  |
| FRLMSpecimen.parentSpecimen | FRCDAPrelevement.participant:echantillonPreleve | FRSpecimenDocument.parent |
| FRLMSpecimen.request |  | FRSpecimenDocument.request |
| FRLMSpecimen.combined |  |  |
| FRLMSpecimen.collection.performer[x] | FRCDAPrelevement.performer | FRSpecimenDocument.collection.collector |
| FRLMSpecimen.collection.collected[x] | FRCDAPrelevement.effectiveTime | FRSpecimenDocument.collection.collected[x] |
| FRLMSpecimen.collection.quantity |  | FRSpecimenDocument.collection.quantity |
| FRLMSpecimen.collection.method |  | FRSpecimenDocument.collection.method |
| FRLMSpecimen.collection.device | FRCDAPrelevement.participant:dispositifUtilise |  |
| FRLMSpecimen.collection.additive[x] | FRCDAPrelevement.participant:produitUtilise | FRSpecimenDocument.processing.additive |
| FRLMSpecimen.collection.bodySite | FRCDAPrelevement.targetSiteCode | FRSpecimenDocument.collection.bodySite |
| FRLMSpecimen.receivedDate | FRCDAPrelevement.entryRelationship. act.effectiveTime | FRSpecimenDocument.receivedTime |
| FRLMSpecimen.container.specimenQuantity |  | FRSpecimenDocument.container.specimenQuantity |
| FRLMSpecimen.container.containerDevice |  | FRSpecimenDocument.container.extension:device |
| FRLMSpecimen.condition |  | FRSpecimenDocument.condition |
| FRLMSpecimen.note | FRCDAPrelevement.text | FRSpecimenDocument.note |

