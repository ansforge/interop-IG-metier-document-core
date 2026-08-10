# Mapping Métier/CDA/FHIR - FR Document Core (Modèle métier) v0.1.0

## Mapping Métier/CDA/FHIR

Liste des ConceptMap détaillant le mapping entre les éléments du modèle métier, du CDA et de FHIR.

### Mapping des sections entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMActeImagerie** | **FRCDADICOMActeImagerie** | FRCompositionDocument.section:ImagingStudy |
| FRLMActeImagerie.codeSection | FRCDADICOMActeImagerie.code | FRCompositionDocument.section:ImagingStudy.code |
| FRLMActeImagerie.titreSection | FRCDADICOMActeImagerie.title | FRCompositionDocument.section:ImagingStudy.title |
| FRLMActeImagerie.blocNarratif | FRCDADICOMActeImagerie.text | FRCompositionDocument.section:ImagingStudy.text |
| FRLMActeImagerie.sousSection.complicationsActe | FRCDADICOMActeImagerie.component:frDICOMComplications | FRCompositionDocument.section:ImagingStudy.section:Complications |
| FRLMActeImagerie.sousSection.expositionsRadiations | FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations |  |
| FRLMActeImagerie.sousSection.catalogueObjects | FRCDADICOMActeImagerie.component:frDICOMObjectCatalog |  |
| FRLMActeImagerie.entree.techniqueImagerie | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie |  |
| FRLMActeImagerie.entree.administrationProduits | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante |  |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:Addendum |
| FRLMAddendum.codeSection | FRCDADicomAddendum.code | FRCompositionDocument.section:Addendum.code |
| FRLMAddendum.titreSection | FRCDADicomAddendum.title | FRCompositionDocument.section:Addendum.title |
| FRLMAddendum.blocNarratif | FRCDADicomAddendum.text | FRCompositionDocument.section:Addendum.text |
| FRLMAddendum.auteur | FRCDADicomAddendum.author | FRCompositionDocument.section:Addendum.author |
| **FRLMAllergiesEtHypersensibilites** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:AllergyIntolerance |
| FRLMAllergiesEtHypersensibilites.codeSection | FRCDAAllergiesEtHypersensibilites.code | FRCompositionDocument.section:AllergyIntolerance.code |
| FRLMAllergiesEtHypersensibilites.titreSection | FRCDAAllergiesEtHypersensibilites.title | FRCompositionDocument.section:AllergyIntolerance.title |
| FRLMAllergiesEtHypersensibilites.blocNarratif | FRCDAAllergiesEtHypersensibilites.text | FRCompositionDocument.section:AllergyIntolerance.text |
| FRLMAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite | FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites | FRCompositionDocument.section:AllergyIntolerance.entry:FRAllergyIntoleranceDocument |
| **FRLMAntecedentsFamiliaux** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:FamilyHistory |
| FRLMAntecedentsFamiliaux.codeSection | FRCDAAntecedentsFamiliaux.code | FRCompositionDocument.section:FamilyHistory.code |
| FRLMAntecedentsFamiliaux.titreSection | FRCDAAntecedentsFamiliaux.title | FRCompositionDocument.section:FamilyHistory.title |
| FRLMAntecedentsFamiliaux.blocNarratif | FRCDAAntecedentsFamiliaux.text | FRCompositionDocument.section:FamilyHistory.text |
| FRLMAntecedentsFamiliaux.entree.antecedentsFamiliaux | FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux | FRCompositionDocument.section:FamilyHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMAntecedentsMedicaux** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:MedicalHistory |
| FRLMAntecedentsMedicaux.codeSection | FRCDAAntecedentsMedicaux.code | FRCompositionDocument.section:MedicalHistory.code |
| FRLMAntecedentsMedicaux.titreSection | FRCDAAntecedentsMedicaux.title | FRCompositionDocument.section:MedicalHistory.title |
| FRLMAntecedentsMedicaux.blocNarratif | FRCDAAntecedentsMedicaux.text | FRCompositionDocument.section:MedicalHistory.text |
| FRLMAntecedentsMedicaux.entree.problemes | FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes | FRCompositionDocument.section:MedicalHistory.entry:FRConditionDocument |
| **FRLMObjectCatalog** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:imagingStudy |
| FRLMObjectCatalog.titreSection | FRCDADICOMObjectCatalog.title | FRCompositionDocument.section:imagingStudy.title |
| FRLMObjectCatalog.codeSection | FRCDADICOMObjectCatalog.code | FRCompositionDocument.section:imagingStudy.code |
| FRLMObjectCatalog.blocNarratif | FRCDADICOMObjectCatalog.text | FRCompositionDocument.section:imagingStudy.text |
| FRLMObjectCatalog.entree.examenImagerie | FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie | FRCompositionDocument.section:imagingStudy.entry:FRImagingStudyDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** | FRCompositionDocument.section |
| FRLMCRBIOChapitre.code | FRCDACRBIOChapitre.code | FRCompositionDocument.section.code |
| FRLMCRBIOChapitre.blocNarratif | FRCDACRBIOChapitre.text | FRCompositionDocument.section.text |
| FRLMCRBIOChapitre.titreSection | FRCDACRBIOChapitre.title | FRCompositionDocument.section.title |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale | FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre | FRCompositionDocument.section:avec-sous-sections.section |
| **FRLMCodesAbarres** | **FRCDACodeABarres** | FRCompositionDocument.section:barCodes |
| FRLMCodesAbarres.codeSection | FRCDACodeABarres.code | FRCompositionDocument.section:barCodes.code |
| FRLMCodesAbarres.titreSection | FRCDACodeABarres.title | FRCompositionDocument.section:barCodes.title |
| FRLMCodesAbarres.blocNarratif | FRCDACodeABarres.text | FRCompositionDocument.section:barCodes.text |
| FRLMCodesAbarres.entree.imageIllustrative | FRCDACodeABarres.entry.FRCDACodeABarres | FRCompositionDocument.section:barCodes.entry:FRCDAMediaDocument |
| **FRLMCommentaireNonCode** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:note |
| FRLMCommentaireNonCode.codeSection | FRCDACommentaireNonCode.code | FRCompositionDocument.section:note.code |
| FRLMCommentaireNonCode.titreSection | FRCDACommentaireNonCode.title | FRCompositionDocument.section:note.title |
| FRLMCommentaireNonCode.blocNarratif | FRCDACommentaireNonCode.text | FRCompositionDocument.section:note.text |
| **FRLMComparaisonExamensImagerie** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:Comparison |
| FRLMComparaisonExamensImagerie.codeSection | FRCDADICOMExamenComparatif.code | FRCompositionDocument.section:Comparison.code |
| FRLMComparaisonExamensImagerie.titreSection | FRCDADICOMExamenComparatif.title | FRCompositionDocument.section:Comparison.title |
| FRLMComparaisonExamensImagerie.blocNarratif | FRCDADICOMExamenComparatif.text | FRCompositionDocument.section:Comparison.text |
| **FRLMComplicationsActe** | **FRCDADICOMComplications** | FRProcedureImagingDocument.complication.text |
| FRLMComplicationsActe.codeSection | FRCDADICOMComplications.code |  |
| FRLMComplicationsActe.blocNarratif | FRCDADICOMComplications.text |  |
| FRLMComplicationsActe.titreSection | FRCDADICOMComplications.title |  |
| **FRLMConclusionExamenImagerie** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMConclusionExamenImagerie.codeSection | FRCDADICOMConclusion.code |  |
| FRLMConclusionExamenImagerie.blocNarratif | FRCDADICOMConclusion.text |  |
| FRLMConclusionExamenImagerie.titreSection | FRCDADICOMConclusion.title |  |
| **FRLMDirectivesAnticipees** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:advanceDirective |
| FRLMDirectivesAnticipees.codeSection | FRCDADirectivesAnticipees.code | FRCompositionDocument.section:advanceDirective.code |
| FRLMDirectivesAnticipees.titreSection | FRCDADirectivesAnticipees.title | FRCompositionDocument.section:advanceDirective.title |
| FRLMDirectivesAnticipees.blocNarratif | FRCDADirectivesAnticipees.text | FRCompositionDocument.section:advanceDirective.text |
| FRLMDirectivesAnticipees.entree | FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee | FRCompositionDocument.section:advanceDirective.entry:FRAdvanceDirectiveDocument |
| **FRLMDispensationMedicaments** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:medication-dispense |
| FRLMDispensationMedicaments.codeSection | FRCDADispensationMedicaments.code | FRCompositionDocument.section:medication-dispense.code |
| FRLMDispensationMedicaments.blocNarratif | FRCDADispensationMedicaments.text | FRCompositionDocument.section:medication-dispense.text |
| FRLMDispensationMedicaments.titreSection | FRCDADispensationMedicaments.title | FRCompositionDocument.section:medication-dispense.title |
| FRLMDispensationMedicaments.entree.traitementDispense | FRCDADispensationMedicaments.entry.FRCDATraitementDispense | FRCompositionDocument.section:medication-dispense.entry:FRMedicationDispenseDocument |
| **FRLMDispositifsMedicaux** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:medicalDevice |
| FRLMDispositifsMedicaux.codeSection | FRCDADispositifsMedicaux.code | FRCompositionDocument.section:medicalDevice.code |
| FRLMDispositifsMedicaux.titreSection | FRCDADispositifsMedicaux.title | FRCompositionDocument.section:medicalDevice.title |
| FRLMDispositifsMedicaux.blocNarratif | FRCDADispositifsMedicaux.text | FRCompositionDocument.section:medicalDevice.text |
| FRLMDispositifsMedicaux.entree.dispositifsMedicaux | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevice.entry:FRDeviceRequestDocument |
| FRLMDispositifsMedicaux.entree.dispositifsMedicaux | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevice.entry:FRDeviceUseStatementDocument |
| **FRLMDocumentPDFCopie** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:pdfDocumentCopy |
| FRLMDocumentPDFCopie.codeSection | FRCDADocumentPDFCopie.code | FRCompositionDocument.section:pdfDocumentCopy.code |
| FRLMDocumentPDFCopie.titreSection | FRCDADocumentPDFCopie.title | FRCompositionDocument.section:pdfDocumentCopy.title |
| FRLMDocumentPDFCopie.blocNarratif | FRCDADocumentPDFCopie.text | FRCompositionDocument.section:pdfDocumentCopy.text |
| FRLMDocumentPDFCopie.entree.documentAttache | FRCDADocumentPDFCopie.entry:FRCDADocumentAttache | FRCompositionDocument.section:pdfDocumentCopy.entry:FRDocumentReferenceDocument |
| **FRLMDocumentsAjoutes** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:addedDocuments |
| FRLMDocumentsAjoutes.codeSection | FRCDADocumentsAjoutes.code | FRCompositionDocument.section:addedDocuments.code |
| FRLMDocumentsAjoutes.titreSection | FRCDADocumentsAjoutes.title | FRCompositionDocument.section:addedDocuments.title |
| FRLMDocumentsAjoutes.blocNarratif | FRCDADocumentsAjoutes.text | FRCompositionDocument.section:addedDocuments.text |
| FRLMDocumentsAjoutes.entree.documentAttache | FRCDADocumentsAjoutes.entry:frDocumentAttache | FRCompositionDocument.section:addedDocuments.entry:FRDocumentReferenceDocument |
| FRLMDocumentsAjoutes.entree.simpleObservation | FRCDADocumentsAjoutes.entry:frSimpleObservation | FRCompositionDocument.section:addedDocuments.entry:Observation |
| **FRLMEducationPatient** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:patientEducation |
| FRLMEducationPatient.codeSection | FRCDAEducationDuPatient.code | FRCompositionDocument.section:patientEducation.code |
| FRLMEducationPatient.titreSection | FRCDAEducationDuPatient.title | FRCompositionDocument.section:patientEducation.title |
| FRLMEducationPatient.blocNarratif | FRCDAEducationDuPatient.text | FRCompositionDocument.section:patientEducation.text |
| FRLMEducationPatient.entree.acte | FRCDAEducationDuPatient.entry:frActe | FRCompositionDocument.section:patientEducation.entry:FRProcedureActDocument |
| FRLMEducationPatient.entree.observation | FRCDAEducationDuPatient.entry:frSimpleObservation | FRCompositionDocument.section:patientEducation.entry:Observation |
| FRLMEducationPatient.entree.reference | FRCDAEducationDuPatient.entry:frReferencesExternes | FRCompositionDocument.section:patientEducation.entry:FRDocumentReferenceDocument |
| **FRLMEffetsIndesirables** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:adverseEvent |
| FRLMEffetsIndesirables.titreSection | FRCDAEffetsIndesirables.title | FRCompositionDocument.section:adverseEvent.title |
| FRLMEffetsIndesirables.blocNarratif | FRCDAEffetsIndesirables.text |  |
| FRLMEffetsIndesirables.entree.effetIndesirable | FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable | FRCompositionDocument.section:adverseEvent.entry:FRAdverseEventDocument |
| **FRLMExpositionRadiations** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:exposureRadiation |
| FRLMExpositionRadiations.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:exposureRadiation.code |
| FRLMExpositionRadiations.titreSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:exposureRadiation.title |
| FRLMExpositionRadiations.blocNarratif | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:exposureRadiation.text |
| FRLMExpositionRadiations.entree.autorisationExposition | FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |
| FRLMExpositionRadiations.entree.quantiteExposition | FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExpositionRadiations.entree.administrationRadiopharmaceutique | FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| FRLMExpositionRadiations.entree.observationGrossesse | FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationGrossesse |
| FRLMExpositionRadiations.entree.observationIndication | FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationIndication |
| **FRLMFacteursDeRisqueProfessionnelsNonCode** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:uncodedOccupationalRiskFactors |
| FRLMFacteursDeRisqueProfessionnelsNonCode.codeSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.code | FRCompositionDocument.section:uncodedOccupationalRiskFactors.code |
| FRLMFacteursDeRisqueProfessionnelsNonCode.titreSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.title | FRCompositionDocument.section:uncodedOccupationalRiskFactors.title |
| FRLMFacteursDeRisqueProfessionnelsNonCode.blocNarratif | FRCDAFacteursDeRisqueProfessionnelsNonCode.text |  |
| **FRLMFonctionsPhysiques** | **FRCDAFonctionsPhysiques** | FRCompositionDocument.section:PhysicalFunctions |
| FRLMFonctionsPhysiques.identifiant | FRCDAFonctionsPhysiques.id | FRCompositionDocument.section:PhysicalFunctions.id |
| FRLMFonctionsPhysiques.code | FRCDAFonctionsPhysiques.code | FRCompositionDocument.section:PhysicalFunctions.code |
| FRLMFonctionsPhysiques.titreSection | FRCDAFonctionsPhysiques.title | FRCompositionDocument.section:PhysicalFunctions.title |
| FRLMFonctionsPhysiques.blocNarratif | FRCDAFonctionsPhysiques.text | FRCompositionDocument.section:PhysicalFunctions.text |
| FRLMFonctionsPhysiques.entree.groupeQuestionnairesEvaluation | FRCDAFonctionsPhysiques.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyPannelDocument |
| FRLMFonctionsPhysiques.entree.evalutation | FRCDAFonctionsPhysiques.entry:FRCDAEvaluation | FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyDocument |
| **FRLMHistoriqueDesActes** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:historyActs |
| FRLMHistoriqueDesActes.codeSection | FRCDAHistoriqueDesActes.code | FRCompositionDocument.section:historyActs.code |
| FRLMHistoriqueDesActes.titreSection | FRCDAHistoriqueDesActes.title | FRCompositionDocument.section:historyActs.title |
| FRLMHistoriqueDesActes.blocNarratif | FRCDAHistoriqueDesActes.text | FRCompositionDocument.section:historyActs.text |
| FRLMHistoriqueDesActes.entree.actes | FRCDAHistoriqueDesActes.entry:FRCDAActe | FRCompositionDocument.section:historyActs.entry:FRProcedureDocument |
| FRLMHistoriqueDesActes.entree.references | FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes | FRCompositionDocument.section:historyActs.entry:FRDocumentReferenceDocument |
| **FRLMHistoriqueDesGrossesses** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:pregnancyHistory |
| FRLMHistoriqueDesGrossesses.codeSection | FRCDAHistoriqueDesGrossesses.code | FRCompositionDocument.section:pregnancyHistory.code |
| FRLMHistoriqueDesGrossesses.titreSection | FRCDAHistoriqueDesGrossesses.title | FRCompositionDocument.section:pregnancyHistory.title |
| FRLMHistoriqueDesGrossesses.blocNarratif | FRCDAHistoriqueDesGrossesses.text | FRCompositionDocument.section:pregnancyHistory.text |
| FRLMHistoriqueDesGrossesses.entree[x]:FRLMObservationGrossesse | FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse | FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMHistoriqueDesGrossesses.entree[x]:FRLMHistoriqueGrossesse | FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse | FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyHistoryDocument |
| **FRLMPlanSoins** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:planOfCare |
| FRLMPlanSoins.codeSection | FRCDAPlanDeSoins.code | FRCompositionDocument.section:planOfCare.code |
| FRLMPlanSoins.titreSection | FRCDAPlanDeSoins.title | FRCompositionDocument.section:planOfCare.title |
| FRLMPlanSoins.blocNarratif | FRCDAPlanDeSoins.text | FRCompositionDocument.section:planOfCare.text |
| FRLMPlanSoins.entree.actes | FRCDAPlanDeSoins.entry:FRCDAActe | FRCompositionDocument.section:planOfCare.entry:FRProcedureActDocument |
| FRLMPlanSoins.entree.demandeExamenOuSuivi | FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi | FRCompositionDocument.section:planOfCare.entry:FRServiceRequestDocument |
| FRLMPlanSoins.entree.traitement | FRCDAPlanDeSoins.entry:FRCDATraitement | FRCompositionDocument.section:planOfCare.entry:FRMedicationAdministrationDocument |
| FRLMPlanSoins.entree.vaccinRecommande | FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande | FRCompositionDocument.section:planOfCare.entry:FRImmunizationRecommendationDocument |
| FRLMPlanSoins.entree.rencontre | FRCDAPlanDeSoins.entry:FRCDARencontre | FRCompositionDocument.section:planOfCare.entry:FREncounterDocument |
| **FRLMPointsDeVigilancesNonCode** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:uncodedPointsOfVigilance |
| FRLMPointsDeVigilancesNonCode.codeSection | FRCDAPointsDeVigilancesNonCode.code | FRCompositionDocument.section:uncodedPointsOfVigilance.code |
| FRLMPointsDeVigilancesNonCode.titreSection | FRCDAPointsDeVigilancesNonCode.title | FRCompositionDocument.section:uncodedPointsOfVigilance.title |
| FRLMPointsDeVigilancesNonCode.blocNarratif | FRCDAPointsDeVigilancesNonCode.text | FRCompositionDocument.section:uncodedPointsOfVigilance.text |
| **FRLMPrescriptionDispositifsMedicaux** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:medicalDevicePrescription |
| FRLMPrescriptionDispositifsMedicaux.auteur | FRCDAPrescriptionDispositifsMedicaux.author | FRCompositionDocument.section:medicalDevicePrescription.author |
| FRLMPrescriptionDispositifsMedicaux.codeSection | FRCDAPrescriptionDispositifsMedicaux.code | FRCompositionDocument.section:medicalDevicePrescription.code |
| FRLMPrescriptionDispositifsMedicaux.titreSection | FRCDAPrescriptionDispositifsMedicaux.title | FRCompositionDocument.section:medicalDevicePrescription.title |
| FRLMPrescriptionDispositifsMedicaux.blocNarratif | FRCDAPrescriptionDispositifsMedicaux.text | FRCompositionDocument.section:medicalDevicePrescription.text |
| FRLMPrescriptionDispositifsMedicaux.entree.dispositifMedical | FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMPrescriptionMedicaments** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:medicationRequest |
| FRLMPrescriptionMedicaments.auteur | FRCDAPrescriptionMedicaments.author | FRCompositionDocument.section:medicationRequest.author |
| FRLMPrescriptionMedicaments.codeSection | FRCDAPrescriptionMedicaments.code | FRCompositionDocument.section:medicationRequest.code |
| FRLMPrescriptionMedicaments.titreSection | FRCDAPrescriptionMedicaments.title | FRCompositionDocument.section:medicationRequest.title |
| FRLMPrescriptionMedicaments.blocNarratif | FRCDAPrescriptionMedicaments.text | FRCompositionDocument.section:medicationRequest.text |
| FRLMPrescriptionMedicaments.entree.traitementPrescrit | FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit | FRCompositionDocument.section:medicationRequest.entry:FRMedicationRequestDocument |
| **FRLMProblemesActifs** | **FRCDAProblemesActifs** | FRCompositionDocument.section:activeProblems |
| FRLMProblemesActifs.codeSection | FRCDAProblemesActifs.code | FRCompositionDocument.section:activeProblems.code |
| FRLMProblemesActifs.titreSection | FRCDAProblemesActifs.title | FRCompositionDocument.section:activeProblems.title |
| FRLMProblemesActifs.blocNarratif | FRCDAProblemesActifs.text | FRCompositionDocument.section:activeProblems.text |
| FRLMProblemesActifs.entree.problemes | FRCDAProblemesActifs.entry:FRCDAListeDesProblemes | FRCompositionDocument.section:activeProblems.entry:FRConditionDocument |
| **FRLMRaisonRecommandation** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:reasonForRecommendation |
| **FRLMRaisonRecommandationNonCode** | **FRCDARaisonDeLaRecommandationNonCode** | FRCompositionDocument.section:reasonForRecommendation |
| FRLMRaisonRecommandation.codeSection | FRCDARaisonDeLaRecommandation.code | FRCompositionDocument.section:reasonForRecommendation.code |
| FRLMRaisonRecommandationNonCode.codeSection | FRCDARaisonDeLaRecommandationNonCode.code | FRCompositionDocument.section:reasonForRecommendation.code |
| FRLMRaisonRecommandation.titreSection | FRCDARaisonDeLaRecommandation.title | FRCompositionDocument.section:reasonForRecommendation.title |
| FRLMRaisonRecommandationNonCode.titreSection | FRCDARaisonDeLaRecommandationNonCode.title | FRCompositionDocument.section:reasonForRecommendation.title |
| FRLMRaisonRecommandation.blocNarratif | FRCDARaisonDeLaRecommandation.text | FRCompositionDocument.section:reasonForRecommendation.text |
| FRLMRaisonRecommandationNonCode.blocNarratif | FRCDARaisonDeLaRecommandationNonCode.text | FRCompositionDocument.section:reasonForRecommendation.text |
| FRLMRaisonRecommandation.entree.observation | FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation | FRCompositionDocument.section:reasonForRecommendation.entry:Observation |
| FRLMRaisonRecommandation.entree.problemes | FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme | FRCompositionDocument.section:reasonForRecommendation.entry:FRConditionDocument |
| **FRLMResultats** | **FRCDAResultats** | FRCompositionDocument.section:results |
| FRLMResultats.codeSection | FRCDAResultats.code | FRCompositionDocument.section:results.code |
| FRLMResultats.titreSection | FRCDAResultats.title | FRCompositionDocument.section:results.title |
| FRLMResultats.blocNarratif | FRCDAResultats.text | FRCompositionDocument.section:results.text |
| FRLMResultats.entree.resultatsEntry | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:results.entry:FRDiagnosticReportDocument |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** | FRCompositionDocument.section:avec-sous-sections.section |
| FRLMCRBIOSousChapitre.codeSection | FRCDACRBIOSousChapitre.code | FRCompositionDocument.section:avec-sous-sections.section.code |
| FRLMCRBIOSousChapitre.blocNarratif | FRCDACRBIOSousChapitre.text | FRCompositionDocument.section:avec-sous-sections.section.text |
| FRLMCRBIOSousChapitre.titreSection | FRCDACRBIOSousChapitre.title | FRCompositionDocument.section:avec-sous-sections.section.title |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale | FRCompositionDocument.section:avec-sous-sections.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| **FRLMStatutDocument** | **FRCDAStatutDuDocument** | FRCompositionDocument.section:documentStatus |
| FRLMStatutDocument.codeSection | FRCDAStatutDuDocument.code | FRCompositionDocument.section:documentStatus.code |
| FRLMStatutDocument.titreSection | FRCDAStatutDuDocument.title | FRCompositionDocument.section:documentStatus.title |
| FRLMStatutDocument.blocNarratif | FRCDAStatutDuDocument.text | FRCompositionDocument.section:documentStatus.text |
| FRLMStatutDocument.entree.statutDocument | FRCDAStatutDuDocument.entry:FRCDAStatutDocument | FRCompositionDocument.section:documentStatus.entry:Observation.status.extension:FRStatusReasonExtension |
| **FRLMStatutFonctionnel** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:FRFunctionalStatus |
| FRLMStatutFonctionnel.codeSection | FRCDAStatutFonctionnel.code | FRCompositionDocument.section:FRFunctionalStatus.code |
| FRLMStatutFonctionnel.titreSection | FRCDAStatutFonctionnel.title | FRCompositionDocument.section:FRFunctionalStatus.title |
| FRLMStatutFonctionnel.blocNarratif | FRCDAStatutFonctionnel.text | FRCompositionDocument.section:FRFunctionalStatus.text |
| FRLMStatutFonctionnel.auteur | FRCDAStatutFonctionnel.author | FRCompositionDocument.author |
| FRLMStatutFonctionnel.informateur | FRCDAStatutFonctionnel.informant | FRCompositionDocument.extension:informant |
| FRLMStatutFonctionnel.entree.groupeQuestionnairesEvaluation | FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:FRFunctionalStatus.entry:FRObservationSurveyPannelDocument |
| **FRLMTraitementsAdministres** | **FRCDATraitementsAdministres** | FRCompositionDocument.section:medicationAdministration |
| FRLMTraitementsAdministres.codeSection | FRCDATraitementsAdministres.code | FRCompositionDocument.section:medicationAdministration.code |
| FRLMTraitementsAdministres.titreSection | FRCDATraitementsAdministres.title | FRCompositionDocument.section:medicationAdministration.title |
| FRLMTraitementsAdministres.blocNarratif | FRCDATraitementsAdministres.text | FRCompositionDocument.section:medicationAdministration.text |
| FRLMTraitementsAdministres.entree.traitementAdministre | FRCDATraitementsAdministres.entry.FRCDATraitement | FRCompositionDocument.section:medicationAdministration.entry:FRMedicationAdministrationDocument |
| **FRLMTraitementSortie** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:hospitalDischargeMedications |
| FRLMTraitementSortie.codeSection | FRCDATraitementsALaSortie.code | FRCompositionDocument.section:hospitalDischargeMedications.code |
| FRLMTraitementSortie.titreSection | FRCDATraitementsALaSortie.title | FRCompositionDocument.section:hospitalDischargeMedications.title |
| FRLMTraitementSortie.blocNarratif | FRCDATraitementsALaSortie.text | FRCompositionDocument.section:hospitalDischargeMedications.text |
| FRLMTraitementSortie.entree.traitementSortie | FRCDATraitementsALaSortie.entry.FRCDATraitement | FRCompositionDocument.section:hospitalDischargeMedications.entry:FRMedicationAdministrationDocument |
| **FRLMTraitements** | **FRCDATraitements** | FRCompositionDocument.section:medications |
| FRLMTraitements.codeSection | FRCDATraitements.code | FRCompositionDocument.section:medications.code |
| FRLMTraitements.titreSection | FRCDATraitements.title | FRCompositionDocument.section:medications.title |
| FRLMTraitements.blocNarratif | FRCDATraitements.text | FRCompositionDocument.section:medications.text |
| FRLMTraitements.entree.traitements | FRCDATraitements.entry:FRCDATraitement | FRCompositionDocument.section:medications.entry:FRMedicationAdministrationDocument |
| **FRLMVaccinations** | **FRCDAVaccinations** | FRCompositionDocument.section:immunizations |
| FRLMVaccinations.codeSection | FRCDAVaccinations.code | FRCompositionDocument.section:immunizations.code |
| FRLMVaccinations.titreSection | FRCDAVaccinations.title | FRCompositionDocument.section:immunizations.title |
| FRLMVaccinations.blocNarratif | FRCDAVaccinations.text | FRCompositionDocument.section:immunizations.text |
| FRLMVaccinations.entree.vaccinations | FRCDAVaccinations.entry.FRCDAVaccination | FRCompositionDocument.section:immunizations.entry:FRImmunizationDocument |
| **FRLMDemandeExamenImagerie** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument |
| FRLMDemandeExamenImagerie.titreSection | FRCDADICOMDemandeExamen.title | FRCompositionDocument.section:serviceRequest.title |
| FRLMDemandeExamenImagerie.blocNarratif | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:finaliteExamen |
| FRLMDemandeExamenImagerie.blocNarratif | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:justificationDemande |
| **FRLMExpositionRadiations** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:radiationExposure |
| FRLMExpositionRadiations.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:radiationExposure.code |
| FRLMExpositionRadiations.titreSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:radiationExposure.title |
| FRLMExpositionRadiations.blocNarratif | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:radiationExposure.text |
| FRLMExpositionRadiations.entree.autorisationExposition | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |
| FRLMExpositionRadiations.entree.quantiteExposition | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.component |
| FRLMExpositionRadiations.entree.administrationRadiopharmaceutique | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMHabitusModeDeVie** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:socialHistory |
| FRLMHabitusModeDeVie.codeSection | FRCDAHabitusModeDeVieSection.code | FRCompositionDocument.section:socialHistory.code |
| FRLMHabitusModeDeVie.titreSection | FRCDAHabitusModeDeVieSection.title | FRCompositionDocument.section:socialHistory.title |
| FRLMHabitusModeDeVie.blocNarratif | FRCDAHabitusModeDeVieSection.text | FRCompositionDocument.section:socialHistory.text |
| FRLMHabitusModeDeVie.entree.habitusModeDeVieEntry | FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie | FRCompositionDocument.section:socialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMInformationsCliniques** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:history |
| FRLMInformationsCliniques.titreSection | FRCDADICOMHistoriqueMedical.title | FRCompositionDocument.section:history.title |
| FRLMInformationsCliniques.blocNarratif | FRCDADICOMHistoriqueMedical.text |  |
| FRLMInformationsCliniques.entree.antecedentsMedicaux | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRCompositionDocument.section:history.entry:Observation |
| FRLMInformationsCliniques.entree.antecedentsChirurgicaux | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRCompositionDocument.section:history.entry:Observation |
| FRLMInformationsCliniques.entree.statutGrossesse | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRCompositionDocument.section:history.entry:FRObservationPregnancyDocument |
| FRLMInformationsCliniques.entree.contreIndications | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRCompositionDocument.section:history.entry:FRObservationContraIndicationsImagingDocument |
| FRLMInformationsCliniques.entree.probleme |  |  |
| FRLMInformationsCliniques.entree.dispositifMedical |  |  |
| FRLMInformationsCliniques.entree.administrationProduitDeSante |  |  |
| FRLMInformationsCliniques.entree.sexeClinique |  |  |
| **FRLMResultatsExamens** | **FRCDAResultatsExamens** | FRCompositionDocument.section:Results |
| **FRLMResultatsExamensNonCode** | **FRCDAResultatsExamensNonCode** | FRCompositionDocument.section:Results |
| FRLMResultatsExamens.codeSection | FRCDAResultatsExamens.code | FRCompositionDocument.section:Results.code |
| FRLMResultatsExamensNonCode.codeSection | FRCDAResultatsExamensNonCode.code | FRCompositionDocument.section:Results.code |
| FRLMResultatsExamens.titreSection | FRCDAResultatsExamens.title | FRCompositionDocument.section:Results.title |
| FRLMResultatsExamensNonCode.titreSection | FRCDAResultatsExamensNonCode.title | FRCompositionDocument.section:Results.title |
| FRLMResultatsExamens.blocNarratif | FRCDAResultatsExamens.text | FRCompositionDocument.section:Results.text |
| FRLMResultatsExamensNonCode.blocNarratif | FRCDAResultatsExamensNonCode.text | FRCompositionDocument.section:Results.text |
| FRLMResultatsExamens.entree.actes | FRCDAResultatsExamens.entry:FRCDAActe | FRCompositionDocument.section:Results.entry:FRProcedureActDocument |
| FRLMResultatsExamens.entree.referencesExternes | FRCDAResultatsExamens.entry:FRCDAReferencesExternes | FRCompositionDocument.section:Results.entry:FRDocumentReferenceDocument |
| FRLMResultatsExamens.entree.observation | FRCDAResultatsExamens.entry:FRCDASimpleObservation | FRCompositionDocument.section:Results.entry:Observation |
| **FRLMResultatsExamenImagerie** | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings |
| FRLMResultatsExamenImagerie.titreSection | FRCDADICOMResultats.title | FRCompositionDocument.section:Findings.title |
| FRLMResultatsExamenImagerie.blocNarratif | FRCDADICOMResultats.text |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** | FRCompositionDocument.section:sans-sous-sections |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code | FRCompositionDocument.section:sans-sous-sections.code |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title | FRCompositionDocument.section:sans-sous-sections.title |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text | FRCompositionDocument.section:sans-sous-sections.text |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation | FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache | FRCompositionDocument.section:sans-sous-sections.entry:FRDocumentReferenceDocument |
| **FRLMSignesVitaux** | **FRCDASignesVitaux** | FRCompositionDocument.section:VitalSigns |
| FRLMSignesVitaux.titreSection | FRCDASignesVitaux.title | FRCompositionDocument.section:VitalSigns.title |
| FRLMSignesVitaux.blocNarratif | FRCDASignesVitaux.text | FRCompositionDocument.section:VitalSigns.text |
| FRLMSignesVitaux.entree.signesVitauxEntry:FRLMSigneVital | FRCDASignesVitaux.entry:FRCDASignesVitauxEntry | FRCompositionDocument.section:VitalSigns.entry:FRObservationVitalSignsDocument |

### Mapping des entrées entre : Modèle métier / CDA / FHIR

| | | |
| :--- | :--- | :--- |
| Modèle métier | CDA | FHIR |
| **FRLMObservation** | **FRCDASimpleObservation** |  |
| FRLMObservation.header.status | FRCDASimpleObservation.statusCode |  |
| FRLMObservation.header.directSubject[x] | FRCDASimpleObservation.subject |  |
| FRLMObservation.observationDate[x] | FRCDASimpleObservation.effectiveTime |  |
| FRLMObservation.type | FRCDASimpleObservation.code |  |
| FRLMObservation.originalName | FRCDASimpleObservation.text |  |
| FRLMObservation.method | FRCDASimpleObservation.methodCode |  |
| FRLMObservation.specimen | FRCDASimpleObservation.specimen |  |
| FRLMObservation.order | FRCDASimpleObservation.inFulfillmentOf |  |
| FRLMObservation.bodySite | FRCDASimpleObservation.targetSiteCode |  |
| FRLMObservation.result | FRCDASimpleObservation.value |  |
| FRLMObservation.referenceRange | FRCDASimpleObservation.referenceRange |  |
| FRLMObservation.interpretation | FRCDASimpleObservation.interpretationCode |  |
| FRLMObservation.note | FRCDASimpleObservation.text |  |
| FRLMObservation.component |  |  |
| FRLMObservation.derivedFrom[x] | FRCDASimpleObservation.entryRelationship |  |
| FRLMObservation.hasMember[x] | FRCDASimpleObservation.entryRelationship |  |
| **FRLMParticipant** | **FRCDAParticipant** |  |
| FRLMParticipant.identifier | FRCDAParticipant.participantRole.id |  |
| FRLMParticipant.name | FRCDAParticipant.participantRole. playingEntity.name |  |
| FRLMParticipant.type | FRCDAParticipant.code |  |
| FRLMParticipant.role | FRCDAParticipant.participantRole. playingEntity.code |  |
| FRLMParticipant.period | FRCDAParticipant.time |  |
| FRLMParticipant.participant.participantProfessional | FRCDAParticipant.participantRole.playingEntity |  |
| FRLMParticipant.participant.participantDevice | FRCDAParticipant.participantRole.playingDevice |  |
| FRLMParticipant.participant.participantOrganisation | FRCDAParticipant.participantRole.scopingEntity |  |
| **FRLMParticipant** | **FRActorExtension** |  |
| FRLMParticipant.type | FRActorExtension.extension[typeCode].value[x] |  |
| FRLMParticipant.identifier | FRActorExtension.extension[actor]. value[x]:FRPractitionerRoleDocument.identifier |  |
| FRLMParticipant.name | FRActorExtension.extension[actor]. value[x]:FRPractitionerRoleDocument.name |  |
| FRLMParticipant.role | FRActorExtension.extension[actor]. value[x]:FRPractitionerRoleDocument.practitioner.qualification |  |
| FRLMParticipant.period |  |  |
| FRLMParticipant.participant.participantProfessional | FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument |  |
| FRLMParticipant.participant.participantDevice | FRActorExtension.extension[actor].value[x]:Device |  |
| FRLMParticipant.participant.participantOrganisation | FRActorExtension.extension[actor].value[x]:FROrganizationRoleDocument |  |
| **FRLMActeImagerie** | **FRCDADICOMActeImagerie** | FRCompositionDocument.section:ImagingStudy |
| FRLMActeImagerie.codeSection | FRCDADICOMActeImagerie.code | FRCompositionDocument.section:ImagingStudy.code |
| FRLMActeImagerie.titreSection | FRCDADICOMActeImagerie.title | FRCompositionDocument.section:ImagingStudy.title |
| FRLMActeImagerie.blocNarratif | FRCDADICOMActeImagerie.text | FRCompositionDocument.section:ImagingStudy.text |
| FRLMActeImagerie.sousSection.complicationsActe | FRCDADICOMActeImagerie.component:frDICOMComplications | FRCompositionDocument.section:ImagingStudy.section:Complications |
| FRLMActeImagerie.sousSection.expositionsRadiations | FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations |  |
| FRLMActeImagerie.sousSection.catalogueObjects | FRCDADICOMActeImagerie.component:frDICOMObjectCatalog |  |
| FRLMActeImagerie.entree.techniqueImagerie | FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie |  |
| FRLMActeImagerie.entree.administrationProduits | FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante |  |
| **FRLMAddendum** | **FRCDADicomAddendum** | FRCompositionDocument.section:Addendum |
| FRLMAddendum.codeSection | FRCDADicomAddendum.code | FRCompositionDocument.section:Addendum.code |
| FRLMAddendum.titreSection | FRCDADicomAddendum.title | FRCompositionDocument.section:Addendum.title |
| FRLMAddendum.blocNarratif | FRCDADicomAddendum.text | FRCompositionDocument.section:Addendum.text |
| FRLMAddendum.auteur | FRCDADicomAddendum.author | FRCompositionDocument.section:Addendum.author |
| **FRLMAllergyIntolerance** | **FRCDAAllergieOuHypersensibilite** |  |
| FRLMAllergyIntolerance.header.identifier | FRCDAAllergieOuHypersensibilite.id |  |
| FRLMAllergyIntolerance.note | FRCDAAllergieOuHypersensibilite.text |  |
| FRLMAllergyIntolerance.type | FRCDAAllergieOuHypersensibilite.code |  |
| FRLMAllergyIntolerance.header.status | FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutDuProbleme |  |
| FRLMAllergyIntolerance.period | FRCDAAllergieOuHypersensibilite.effectiveTime |  |
| FRLMAllergyIntolerance.period.onsetDate | FRCDAAllergieOuHypersensibilite.effectiveTime.low |  |
| FRLMAllergyIntolerance.period.endDate | FRCDAAllergieOuHypersensibilite.effectiveTime.high |  |
| FRLMAllergyIntolerance.agentOrAllergen | FRCDAAllergieOuHypersensibilite.participant |  |
| FRLMAllergyIntolerance.reaction | FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme |  |
| FRLMAllergyIntolerance.reaction.agentOrAllergen |  |  |
| FRLMAllergyIntolerance.reaction.manifestation |  |  |
| FRLMAllergyIntolerance.reaction.severity |  |  |
| FRLMAllergyIntolerance.reaction.period |  |  |
| FRLMAllergyIntolerance.reaction. period.onsetDate |  |  |
| FRLMAllergyIntolerance.reaction. period.endDate |  |  |
| FRLMAllergyIntolerance.certainty | FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude |  |
| FRLMAllergyIntolerance.criticality | FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite |  |
| FRLMAllergyIntolerance.category |  |  |
| **FRLMAllergyIntolerance** | **FRAllergyIntoleranceDocument** |  |
| FRLMAllergyIntolerance.header.identifier | FRAllergyIntoleranceDocument.identifier |  |
| FRLMAllergyIntolerance.note | FRAllergyIntoleranceDocument.note |  |
| FRLMAllergyIntolerance.type | FRAllergyIntoleranceDocument.type |  |
| FRLMAllergyIntolerance.header.status | FRAllergyIntoleranceDocument.clinicalStatus |  |
| FRLMAllergyIntolerance.agentOrAllergen | FRAllergyIntoleranceDocument.code |  |
| FRLMAllergyIntolerance.category | FRAllergyIntoleranceDocument.category |  |
| FRLMAllergyIntolerance.period | FRAllergyIntoleranceDocument.onsetPeriod |  |
| FRLMAllergyIntolerance.period.onsetDate | FRAllergyIntoleranceDocument.onsetPeriod.start |  |
| FRLMAllergyIntolerance.period.endDate | FRAllergyIntoleranceDocument.onsetPeriod.end |  |
| FRLMAllergyIntolerance.reaction | FRAllergyIntoleranceDocument.reaction |  |
| FRLMAllergyIntolerance.reaction.agentOrAllergen | FRAllergyIntoleranceDocument.reaction.substance |  |
| FRLMAllergyIntolerance.reaction.manifestation | FRAllergyIntoleranceDocument.reaction.manifestation |  |
| FRLMAllergyIntolerance.certainty | FRAllergyIntoleranceDocument.verificationStatus |  |
| FRLMAllergyIntolerance.criticality | FRAllergyIntoleranceDocument.criticality |  |
| FRLMAllergyIntolerance.reaction.severity | FRAllergyIntoleranceDocument.reaction.severity |  |
| FRLMAllergyIntolerance.reaction.period | FRAllergyIntoleranceDocument.reaction.onset |  |
| FRLMAllergyIntolerance.reaction. period.onsetDate | FRAllergyIntoleranceDocument.reaction.onset |  |
| FRLMAllergyIntolerance.reaction. period.endDate |  |  |
| **FRLMAllergiesEtHypersensibilites** | **FRCDAAllergiesEtHypersensibilites** | FRCompositionDocument.section:AllergyIntolerance |
| FRLMAllergiesEtHypersensibilites.codeSection | FRCDAAllergiesEtHypersensibilites.code | FRCompositionDocument.section:AllergyIntolerance.code |
| FRLMAllergiesEtHypersensibilites.titreSection | FRCDAAllergiesEtHypersensibilites.title | FRCompositionDocument.section:AllergyIntolerance.title |
| FRLMAllergiesEtHypersensibilites.blocNarratif | FRCDAAllergiesEtHypersensibilites.text | FRCompositionDocument.section:AllergyIntolerance.text |
| FRLMAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite | FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites | FRCompositionDocument.section:AllergyIntolerance.entry:FRAllergyIntoleranceDocument |
| **FRLMFamilyMemberHistory** | **FRCDAAntecedentsFamiliaux** |  |
| FRLMFamilyMemberHistory.header.status | FRCDAAntecedentsFamiliaux.statusCode |  |
| FRLMFamilyMemberHistory.relatedPerson | FRCDAAntecedentsFamiliaux.subject.relatedSubject |  |
| FRLMFamilyMemberHistory.condition | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve |  |
| FRLMFamilyMemberHistory.condition.code | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.code |  |
| FRLMFamilyMemberHistory.condition.outcome | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value |  |
| FRLMFamilyMemberHistory.condition.contributedToDeath | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value |  |
| FRLMFamilyMemberHistory.condition.onset[x] | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.effectiveTime |  |
| FRLMFamilyMemberHistory.condition.bodySite | FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.targetSiteCode |  |
| FRLMFamilyMemberHistory.note | FRCDAAntecedentsFamiliaux.text |  |
| **FRLMFamilyMemberHistory** | **FRFamilyMemberHistoryDocument** |  |
| FRLMFamilyMemberHistory.header.status | FRFamilyMemberHistoryDocument.status |  |
| FRLMFamilyMemberHistory.relatedPerson | FRFamilyMemberHistoryDocument.relationship |  |
| FRLMFamilyMemberHistory.condition | FRFamilyMemberHistoryDocument.condition |  |
| FRLMFamilyMemberHistory.condition.code | FRFamilyMemberHistoryDocument.condition.code |  |
| FRLMFamilyMemberHistory.condition.outcome | FRFamilyMemberHistoryDocument.condition.outcome |  |
| FRLMFamilyMemberHistory.condition.contributedToDeath | FRFamilyMemberHistoryDocument.condition.contributedToDeath |  |
| FRLMFamilyMemberHistory.condition.onset[x] | FRFamilyMemberHistoryDocument.condition.onset[x] |  |
| FRLMFamilyMemberHistory.condition.bodySite | FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension |  |
| FRLMFamilyMemberHistory.note | FRFamilyMemberHistoryDocument.note |  |
| **FRLMAntecedentsFamiliaux** | **FRCDAAntecedentsFamiliaux** | FRCompositionDocument.section:FamilyHistory |
| FRLMAntecedentsFamiliaux.codeSection | FRCDAAntecedentsFamiliaux.code | FRCompositionDocument.section:FamilyHistory.code |
| FRLMAntecedentsFamiliaux.titreSection | FRCDAAntecedentsFamiliaux.title | FRCompositionDocument.section:FamilyHistory.title |
| FRLMAntecedentsFamiliaux.blocNarratif | FRCDAAntecedentsFamiliaux.text | FRCompositionDocument.section:FamilyHistory.text |
| FRLMAntecedentsFamiliaux.entree.antecedentsFamiliaux | FRCDAAntecedentsFamiliaux.entry:FRCDAAntecedentsFamiliaux | FRCompositionDocument.section:FamilyHistory.entry:FRFamilyMemberHistoryDocument |
| **FRLMAntecedentsMedicaux** | **FRCDAAntecedentsMedicaux** | FRCompositionDocument.section:MedicalHistory |
| FRLMAntecedentsMedicaux.codeSection | FRCDAAntecedentsMedicaux.code | FRCompositionDocument.section:MedicalHistory.code |
| FRLMAntecedentsMedicaux.titreSection | FRCDAAntecedentsMedicaux.title | FRCompositionDocument.section:MedicalHistory.title |
| FRLMAntecedentsMedicaux.blocNarratif | FRCDAAntecedentsMedicaux.text | FRCompositionDocument.section:MedicalHistory.text |
| FRLMAntecedentsMedicaux.entree.problemes | FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes | FRCompositionDocument.section:MedicalHistory.entry:FRConditionDocument |
| **FRLMObservationAssessment** | **FRCDAEvaluation** |  |
| FRLMObservationAssessment.header.identifier | FRCDAEvaluation.id |  |
| FRLMObservationAssessment.header.status | FRCDAEvaluation.statusCode |  |
| FRLMObservationAssessment.observationDate[x] | FRCDAEvaluation.effectiveTime |  |
| FRLMObservationAssessment.type | FRCDAEvaluation.code |  |
| FRLMObservationAssessment.method |  |  |
| FRLMObservationAssessment.bodySite | FRLMObservationAssessment.targetSiteCode |  |
| FRLMObservationAssessment.result | FRCDAEvaluation.value |  |
| FRLMObservationAssessment.interpretation | FRCDAEvaluation.interpretationCode |  |
| FRLMObservationAssessment.note | FRCDAEvaluation.text |  |
| FRLMObservationAssessment.component | FRCDAEvaluation.entryRelationship:frEvaluationComposant |  |
| **FRLMObservationAssessment** | **FRObservationAssessmentDocument** |  |
| FRLMObservationAssessment.header.identifier | FRObservationAssessmentDocument.identifier |  |
| FRLMObservationAssessment.header.status | FRObservationAssessmentDocument.status.extension:statusReason |  |
| FRLMObservationAssessment.observationDate[x] | FRObservationAssessmentDocument.effectiveDateTime |  |
| FRLMObservationAssessment.type | FRObservationAssessmentDocument.code |  |
| FRLMObservationAssessment.method | FRObservationAssessmentDocument.method |  |
| FRLMObservationAssessment.bodySite | FRObservationAssessmentDocument.bodySite |  |
| FRLMObservationAssessment.result | FRObservationAssessmentDocument.value[x] |  |
| FRLMObservationAssessment.interpretation | FRObservationAssessmentDocument.interpretation |  |
| FRLMObservationAssessment.note | FRObservationAssessmentDocument.note |  |
| FRLMObservationAssessment.component | FRObservationAssessmentDocument.component |  |
| **FRLMBatterieExamensBiologieMedicale** | **FRCDABatterieExamensDeBiologieMedicale** | **FRObservationLaboratoryReportResultsDocument** |
| FRLMBatterieExamensBiologieMedicale.identifiant | FRCDABatterieExamensDeBiologieMedicale.id | FRObservationLaboratoryReportResultsDocument.identifier |
| FRLMBatterieExamensBiologieMedicale.codeBatterieExamen | FRCDABatterieExamensDeBiologieMedicale.code | FRObservationLaboratoryReportResultsDocument.code |
| FRLMBatterieExamensBiologieMedicale.statut | FRCDABatterieExamensDeBiologieMedicale.statusCode | FRObservationLaboratoryReportResultsDocument.status |
| FRLMBatterieExamensBiologieMedicale.dateExamen | FRCDABatterieExamensDeBiologieMedicale.effectiveTime | FRObservationLaboratoryReportResultsDocument.effectivePeriod |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain | FRCDABatterieExamensDeBiologieMedicale.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | FRCDABatterieExamensDeBiologieMedicale.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMBatterieExamensBiologieMedicale.laboratoireExecutant | FRCDABatterieExamensDeBiologieMedicale.performer | FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant |
| FRLMBatterieExamensBiologieMedicale.auteur | FRCDABatterieExamensDeBiologieMedicale.author | FRObservationLaboratoryReportResultsDocument.author |
| FRLMBatterieExamensBiologieMedicale.participant | FRCDABatterieExamensDeBiologieMedicale.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMBatterieExamensBiologieMedicale.participant | FRCDABatterieExamensDeBiologieMedicale.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMBatterieExamensBiologieMedicale.participant | FRCDABatterieExamensDeBiologieMedicale.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMBatterieExamensBiologieMedicale.prelevement | FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement | FRObservationLaboratoryReportResultsDocument.specimen |
| FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent | FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMBatterieExamensBiologieMedicale.imageIllustrative | FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative | FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument |
| FRLMBatterieExamensBiologieMedicale.commentaire | FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER | FRObservationLaboratoryReportResultsDocument.note |
| **FRLMObjectCatalog** | **FRCDADICOMObjectCatalog** | FRCompositionDocument.section:imagingStudy |
| FRLMObjectCatalog.titreSection | FRCDADICOMObjectCatalog.title | FRCompositionDocument.section:imagingStudy.title |
| FRLMObjectCatalog.codeSection | FRCDADICOMObjectCatalog.code | FRCompositionDocument.section:imagingStudy.code |
| FRLMObjectCatalog.blocNarratif | FRCDADICOMObjectCatalog.text | FRCompositionDocument.section:imagingStudy.text |
| FRLMObjectCatalog.entree.examenImagerie | FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie | FRCompositionDocument.section:imagingStudy.entry:FRImagingStudyDocument |
| **FRLMCRBIOChapitre** | **FRCDACRBIOChapitre** | FRCompositionDocument.section |
| FRLMCRBIOChapitre.code | FRCDACRBIOChapitre.code | FRCompositionDocument.section.code |
| FRLMCRBIOChapitre.blocNarratif | FRCDACRBIOChapitre.text | FRCompositionDocument.section.text |
| FRLMCRBIOChapitre.titreSection | FRCDACRBIOChapitre.title | FRCompositionDocument.section.title |
| FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale | FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale | FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre | FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre | FRCompositionDocument.section:avec-sous-sections.section |
| **FRLMCodesAbarres** | **FRCDACodeABarres** | FRCompositionDocument.section:barCodes |
| FRLMCodesAbarres.codeSection | FRCDACodeABarres.code | FRCompositionDocument.section:barCodes.code |
| FRLMCodesAbarres.titreSection | FRCDACodeABarres.title | FRCompositionDocument.section:barCodes.title |
| FRLMCodesAbarres.blocNarratif | FRCDACodeABarres.text | FRCompositionDocument.section:barCodes.text |
| FRLMCodesAbarres.entree.imageIllustrative | FRCDACodeABarres.entry.FRCDACodeABarres | FRCompositionDocument.section:barCodes.entry:FRCDAMediaDocument |
| **FRLMCommentaireNonCode** | **FRCDACommentaireNonCode** | FRCompositionDocument.section:note |
| FRLMCommentaireNonCode.codeSection | FRCDACommentaireNonCode.code | FRCompositionDocument.section:note.code |
| FRLMCommentaireNonCode.titreSection | FRCDACommentaireNonCode.title | FRCompositionDocument.section:note.title |
| FRLMCommentaireNonCode.blocNarratif | FRCDACommentaireNonCode.text | FRCompositionDocument.section:note.text |
| **FRLMComparaisonExamensImagerie** | **FRCDADICOMExamenComparatif** | FRCompositionDocument.section:Comparison |
| FRLMComparaisonExamensImagerie.codeSection | FRCDADICOMExamenComparatif.code | FRCompositionDocument.section:Comparison.code |
| FRLMComparaisonExamensImagerie.titreSection | FRCDADICOMExamenComparatif.title | FRCompositionDocument.section:Comparison.title |
| FRLMComparaisonExamensImagerie.blocNarratif | FRCDADICOMExamenComparatif.text | FRCompositionDocument.section:Comparison.text |
| **FRLMComplicationsActe** | **FRCDADICOMComplications** | FRProcedureImagingDocument.complication.text |
| FRLMComplicationsActe.codeSection | FRCDADICOMComplications.code |  |
| FRLMComplicationsActe.blocNarratif | FRCDADICOMComplications.text |  |
| FRLMComplicationsActe.titreSection | FRCDADICOMComplications.title |  |
| **FRLMConclusionExamenImagerie** | **FRCDADICOMConclusion** | FRDiagnosticReportImagingDocument.conclusion |
| FRLMConclusionExamenImagerie.codeSection | FRCDADICOMConclusion.code |  |
| FRLMConclusionExamenImagerie.blocNarratif | FRCDADICOMConclusion.text |  |
| FRLMConclusionExamenImagerie.titreSection | FRCDADICOMConclusion.title |  |
| **FRLMServiceRequest** | **FRCDADemandeDExamenOuDeSuivi** |  |
| FRLMServiceRequest.header.status | FRCDADemandeDExamenOuDeSuivi.statusCode |  |
| FRLMServiceRequest.code | FRCDADemandeDExamenOuDeSuivi.code |  |
| FRLMServiceRequest.quantity |  |  |
| FRLMServiceRequest.bodySite | FRCDADemandeDExamenOuDeSuivi.targetSiteCode |  |
| FRLMServiceRequest.reason[x] | FRCDADemandeDExamenOuDeSuivi.reasonCode |  |
| FRLMServiceRequest.priority | FRCDADemandeDExamenOuDeSuivi.priorityCode |  |
| FRLMServiceRequest.supportingInformation[x] | FRCDADemandeDExamenOuDeSuivi.entryRelationship.observation |  |
| FRLMServiceRequest.specimen | FRCDADemandeDExamenOuDeSuivi.specimen |  |
| FRLMServiceRequest.encounter | FRCDADemandeDExamenOuDeSuivi.entryRelationship.encounter |  |
| FRLMServiceRequest.occurrence[x] | FRCDADemandeDExamenOuDeSuivi.effectiveTime |  |
| FRLMServiceRequest.patientInstructions | FRCDADemandeDExamenOuDeSuivi.text |  |
| **FRLMServiceRequest** | **FRServiceRequestDocument** |  |
| FRLMServiceRequest.header.status | FRServiceRequestDocument.status |  |
| FRLMServiceRequest.code | FRServiceRequestDocument.code |  |
| FRLMServiceRequest.quantity | FRServiceRequestDocument.quantity |  |
| FRLMServiceRequest.bodySite | FRServiceRequestDocument.bodySite |  |
| FRLMServiceRequest.reason[x] | FRServiceRequestDocument.reasonCode |  |
| FRLMServiceRequest.priority | FRServiceRequestDocument.priority |  |
| FRLMServiceRequest.supportingInformation[x] | FRServiceRequestDocument.supportingInfo |  |
| FRLMServiceRequest.specimen | FRServiceRequestDocument.specimen |  |
| FRLMServiceRequest.encounter | FRServiceRequestDocument.encounter |  |
| FRLMServiceRequest.occurrence[x] | FRServiceRequestDocument.occurrence[x] |  |
| FRLMServiceRequest.patientInstructions | FRServiceRequestDocument.note |  |
| **FRLMAdvanceDirective** | **FRCDADirectiveAnticipee** |  |
| FRLMAdvanceDirective.header.identifier | FRCDADirectiveAnticipee.id |  |
| FRLMAdvanceDirective.category | FRCDADirectiveAnticipee.code |  |
| FRLMAdvanceDirective.header.status | FRCDADirectiveAnticipee.statusCode |  |
| FRLMAdvanceDirective.header.date | FRCDADirectiveAnticipee.effectiveTime |  |
| FRLMAdvanceDirective.value | FRCDADirectiveAnticipee.value |  |
| FRLMAdvanceDirective.note | FRCDADirectiveAnticipee.text |  |
| FRLMAdvanceDirective.attachment.url | FRCDADirectiveAnticipee.reference. externalDocument.text.reference |  |
| FRLMAdvanceDirective.attachment | FRCDADirectiveAnticipee.entryRelationship.observationMedia |  |
| FRLMAdvanceDirective.attachment. header.identifier | FRCDADirectiveAnticipee.entryRelationship. observationMedia.id |  |
| FRLMAdvanceDirective.attachment.data | FRCDADirectiveAnticipee.entryRelationship. observationMedia.value |  |
| **FRLMAdvanceDirective** | **FRAdvanceDirectiveDocument** |  |
| FRLMAdvanceDirective.header.identifier | FRAdvanceDirectiveDocument.identifier |  |
| FRLMAdvanceDirective.category | FRAdvanceDirectiveDocument.provision.code |  |
| FRLMAdvanceDirective.note | FRAdvanceDirectiveDocument.provision. code.text |  |
| FRLMAdvanceDirective.header.status | FRAdvanceDirectiveDocument.status |  |
| FRLMAdvanceDirective.date | FRAdvanceDirectiveDocument.dateTime |  |
| FRLMAdvanceDirective.value | FRAdvanceDirectiveDocument.provision.type |  |
| FRLMAdvanceDirective.attachment.url | FRAdvanceDirectiveDocument.sourceReference |  |
| FRLMAdvanceDirective.attachment | FRAdvanceDirectiveDocument.sourceAttachment |  |
| FRLMAdvanceDirective.attachment. header.identifier | FRAdvanceDirectiveDocument.sourceAttachment.id |  |
| FRLMAdvanceDirective.attachment.data | FRAdvanceDirectiveDocument.sourceAttachment.data |  |
| **FRLMDirectivesAnticipees** | **FRCDADirectivesAnticipees** | FRCompositionDocument.section:advanceDirective |
| FRLMDirectivesAnticipees.codeSection | FRCDADirectivesAnticipees.code | FRCompositionDocument.section:advanceDirective.code |
| FRLMDirectivesAnticipees.titreSection | FRCDADirectivesAnticipees.title | FRCompositionDocument.section:advanceDirective.title |
| FRLMDirectivesAnticipees.blocNarratif | FRCDADirectivesAnticipees.text | FRCompositionDocument.section:advanceDirective.text |
| FRLMDirectivesAnticipees.entree | FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee | FRCompositionDocument.section:advanceDirective.entry:FRAdvanceDirectiveDocument |
| **FRLMDispensationMedicaments** | **FRCDADispensationMedicaments** | FRCompositionDocument.section:medication-dispense |
| FRLMDispensationMedicaments.codeSection | FRCDADispensationMedicaments.code | FRCompositionDocument.section:medication-dispense.code |
| FRLMDispensationMedicaments.blocNarratif | FRCDADispensationMedicaments.text | FRCompositionDocument.section:medication-dispense.text |
| FRLMDispensationMedicaments.titreSection | FRCDADispensationMedicaments.title | FRCompositionDocument.section:medication-dispense.title |
| FRLMDispensationMedicaments.entree.traitementDispense | FRCDADispensationMedicaments.entry.FRCDATraitementDispense | FRCompositionDocument.section:medication-dispense.entry:FRMedicationDispenseDocument |
| **FRLMDevice** | FRCDADispositifMedical.participant. participantRole.playingDevice |  |
| FRLMDevice.identifier | FRCDADispositifMedical.participant. participantRole.id |  |
| FRLMDevice.udi | FRCDADispositifMedical.participant. participantRole.id |  |
| FRLMDevice.manufacturer |  |  |
| FRLMDevice.manufactureDate |  |  |
| FRLMDevice.expiryDate |  |  |
| FRLMDevice.lotNumber |  |  |
| FRLMDevice.serialNumber |  |  |
| FRLMDevice.name | FRCDADispositifMedical.text |  |
| FRLMDevice.name.value | FRCDADispositifMedical.text |  |
| FRLMDevice.name.type |  |  |
| FRLMDevice.modelNumber |  |  |
| FRLMDevice.version |  |  |
| FRLMDevice.type | FRCDADispositifMedical.participant. participantRole.playingDevice.code |  |
| FRLMDevice.note | FRCDADispositifMedical.text |  |
| **FRLMDevice** | **Device** |  |
| FRLMDevice.identifier | Device.identifier |  |
| FRLMDevice.udi | Device.udiCarrier.deviceIdentifier |  |
| FRLMDevice.manufacturer | Device.manufacturer |  |
| FRLMDevice.manufactureDate | Device.manufactureDate |  |
| FRLMDevice.expiryDate | Device.expirationDate |  |
| FRLMDevice.lotNumber | Device.lotNumber |  |
| FRLMDevice.serialNumber | Device.serialNumber |  |
| FRLMDevice.name | Device.deviceName |  |
| FRLMDevice.name.value | Device.deviceName.name |  |
| FRLMDevice.name.type | Device.deviceName.type |  |
| FRLMDevice.modelNumber | Device.modelNumber |  |
| FRLMDevice.version | Device.version.value |  |
| FRLMDevice.type | Device.type |  |
| FRLMDevice.note | Device.note.text |  |
| **FRLMDispositifsMedicaux** | **FRCDADispositifsMedicaux** | FRCompositionDocument.section:medicalDevice |
| FRLMDispositifsMedicaux.codeSection | FRCDADispositifsMedicaux.code | FRCompositionDocument.section:medicalDevice.code |
| FRLMDispositifsMedicaux.titreSection | FRCDADispositifsMedicaux.title | FRCompositionDocument.section:medicalDevice.title |
| FRLMDispositifsMedicaux.blocNarratif | FRCDADispositifsMedicaux.text | FRCompositionDocument.section:medicalDevice.text |
| FRLMDispositifsMedicaux.entree.dispositifsMedicaux | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevice.entry:FRDeviceRequestDocument |
| FRLMDispositifsMedicaux.entree.dispositifsMedicaux | FRCDADispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevice.entry:FRDeviceUseStatementDocument |
| **FRLMDocumentPDFCopie** | **FRCDADocumentPDFCopie** | FRCompositionDocument.section:pdfDocumentCopy |
| FRLMDocumentPDFCopie.codeSection | FRCDADocumentPDFCopie.code | FRCompositionDocument.section:pdfDocumentCopy.code |
| FRLMDocumentPDFCopie.titreSection | FRCDADocumentPDFCopie.title | FRCompositionDocument.section:pdfDocumentCopy.title |
| FRLMDocumentPDFCopie.blocNarratif | FRCDADocumentPDFCopie.text | FRCompositionDocument.section:pdfDocumentCopy.text |
| FRLMDocumentPDFCopie.entree.documentAttache | FRCDADocumentPDFCopie.entry:FRCDADocumentAttache | FRCompositionDocument.section:pdfDocumentCopy.entry:FRDocumentReferenceDocument |
| **FRLMAttachment** | FRCDADocumentAttache.component:frObservationMedia.observationMedia |  |
| FRLMAttachment.contentType | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value.mediaType |  |
| FRLMAttachment.language | FRCDADocumentAttache.component:frObservationMedia. observationMedia.languageCode |  |
| FRLMAttachment.data | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value |  |
| FRLMAttachment.url | FRCDADocumentAttache.component:frObservationMedia. observationMedia.value.reference |  |
| FRLMAttachment.size |  |  |
| FRLMAttachment.title |  |  |
| **FRLMAttachment** | FRDocumentReferenceDocument.content.attachment |  |
| FRLMAttachment.contentType | FRDocumentReferenceDocument.content. attachment.contentType |  |
| FRLMAttachment.language | FRDocumentReferenceDocument.content. attachment.language |  |
| FRLMAttachment.data | FRDocumentReferenceDocument.content. attachment.data |  |
| FRLMAttachment.url | FRDocumentReferenceDocument.content. attachment.url |  |
| FRLMAttachment.size | FRDocumentReferenceDocument.content. attachment.size |  |
| FRLMAttachment.title | FRDocumentReferenceDocument.content. attachment.title |  |
| **FRLMDocumentsAjoutes** | **FRCDADocumentsAjoutes** | FRCompositionDocument.section:addedDocuments |
| FRLMDocumentsAjoutes.codeSection | FRCDADocumentsAjoutes.code | FRCompositionDocument.section:addedDocuments.code |
| FRLMDocumentsAjoutes.titreSection | FRCDADocumentsAjoutes.title | FRCompositionDocument.section:addedDocuments.title |
| FRLMDocumentsAjoutes.blocNarratif | FRCDADocumentsAjoutes.text | FRCompositionDocument.section:addedDocuments.text |
| FRLMDocumentsAjoutes.entree.documentAttache | FRCDADocumentsAjoutes.entry:frDocumentAttache | FRCompositionDocument.section:addedDocuments.entry:FRDocumentReferenceDocument |
| FRLMDocumentsAjoutes.entree.simpleObservation | FRCDADocumentsAjoutes.entry:frSimpleObservation | FRCompositionDocument.section:addedDocuments.entry:Observation |
| **FRLMEducationPatient** | **FRCDAEducationDuPatient** | FRCompositionDocument.section:patientEducation |
| FRLMEducationPatient.codeSection | FRCDAEducationDuPatient.code | FRCompositionDocument.section:patientEducation.code |
| FRLMEducationPatient.titreSection | FRCDAEducationDuPatient.title | FRCompositionDocument.section:patientEducation.title |
| FRLMEducationPatient.blocNarratif | FRCDAEducationDuPatient.text | FRCompositionDocument.section:patientEducation.text |
| FRLMEducationPatient.entree.acte | FRCDAEducationDuPatient.entry:frActe | FRCompositionDocument.section:patientEducation.entry:FRProcedureActDocument |
| FRLMEducationPatient.entree.observation | FRCDAEducationDuPatient.entry:frSimpleObservation | FRCompositionDocument.section:patientEducation.entry:Observation |
| FRLMEducationPatient.entree.reference | FRCDAEducationDuPatient.entry:frReferencesExternes | FRCompositionDocument.section:patientEducation.entry:FRDocumentReferenceDocument |
| **FRLMAdverseDrugReaction** | **FRCDAEffetIndesirable** |  |
| FRLMAdverseDrugReaction.header.identifier | FRCDAEffetIndesirable.id |  |
| FRLMAdverseDrugReaction.header.status | FRCDAEffetIndesirable.statusCode |  |
| FRLMAdverseDrugReaction.adverseDrugReactionType | FRCDAEffetIndesirable.code |  |
| FRLMAdverseDrugReaction.header.date | FRCDAEffetIndesirable.effectiveTime |  |
| FRLMAdverseDrugReaction.detected |  |  |
| FRLMAdverseDrugReaction.value | FRCDAEffetIndesirable.value |  |
| FRLMAdverseDrugReaction.medicationAdministration | FRCDAEffetIndesirable.entryRelationship:frTraitement |  |
| FRLMAdverseDrugReaction.reaction | FRCDAEffetIndesirable.entryRelationship:frProbleme |  |
| FRLMAdverseDrugReaction.causalityAssessment | FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable |  |
| FRLMAdverseDrugReaction.severity | FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable |  |
| FRLMAdverseDrugReaction.outcome | FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable |  |
| **FRLMAdverseDrugReaction** | **FRAdverseEventDocument** |  |
| FRLMAdverseDrugReaction.header.identifier | FRAdverseEventDocument.identifier |  |
| FRLMAdverseDrugReaction.adverseDrugReactionType | FRAdverseEventDocument.category |  |
| FRLMAdverseDrugReaction.header.date | FRAdverseEventDocument.date |  |
| FRLMAdverseDrugReaction.detected | FRAdverseEventDocument.detected |  |
| FRLMAdverseDrugReaction.value |  |  |
| FRLMAdverseDrugReaction.medicationAdministration | FRAdverseEventDocument.suspectEntity.instance |  |
| FRLMAdverseDrugReaction.reaction | FRAdverseEventDocument.resultingCondition |  |
| FRLMAdverseDrugReaction.causalityAssessment | FRAdverseEventDocument.suspectEntity.causality |  |
| FRLMAdverseDrugReaction.severity | FRAdverseEventDocument.severity |  |
| FRLMAdverseDrugReaction.outcome | FRAdverseEventDocument.outcome |  |
| **FRLMEffetsIndesirables** | **FRCDAEffetsIndesirables** | FRCompositionDocument.section:adverseEvent |
| FRLMEffetsIndesirables.titreSection | FRCDAEffetsIndesirables.title | FRCompositionDocument.section:adverseEvent.title |
| FRLMEffetsIndesirables.blocNarratif | FRCDAEffetsIndesirables.text |  |
| FRLMEffetsIndesirables.entree.effetIndesirable | FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable | FRCompositionDocument.section:adverseEvent.entry:FRAdverseEventDocument |
| **FRLMEncounter** | **FRCDARencontre** |  |
| FRLMEncounter.header.identifier | FRCDARencontre.id |  |
| FRLMEncounter.header.status | FRCDARencontre.statusCode |  |
| FRLMEncounter.header.author[x] | FRCDARencontre.author |  |
| FRLMEncounter.participant | FRCDARencontre.participant |  |
| FRLMEncounter.type | FRCDARencontre.code |  |
| FRLMEncounter.period | FRCDARencontre.effectiveTime |  |
| FRLMEncounter.priority | FRCDARencontre.priorityCode |  |
| FRLMEncounter.participant | FRCDARencontre.participant:autresParticipants |  |
| FRLMEncounter.serviceProvider | FRCDARencontre.performer. assignedEntity.representedOrganization |  |
| FRLMEncounter.referringProfessional | FRCDARencontre.performer |  |
| FRLMEncounter.basedOn[x] |  |  |
| FRLMEncounter.reason[x] |  |  |
| FRLMEncounter.admission |  |  |
| FRLMEncounter.admission.admitter |  |  |
| FRLMEncounter.admission.admitSource |  |  |
| FRLMEncounter.dischargeDiagnosis[x] |  |  |
| FRLMEncounter.dischargeDestination |  |  |
| FRLMEncounter.dischargeDestination.type |  |  |
| FRLMEncounter.dischargeDestination.location[x] |  |  |
| FRLMEncounter.serviceLocation | FRCDARencontre.participant:lieuExecution |  |
| FRLMEncounter.serviceLocation.period |  |  |
| FRLMEncounter.serviceLocation.organisationPart[x] | FRCDARencontre.participant:lieuExecution |  |
| FRLMEncounter.subEncounter |  |  |
| FRLMEncounter.note | FRCDARencontre.text |  |
| **FRLMEncounter** | **FREncounterDocument** |  |
| FRLMEncounter.header.identifier | FREncounterDocument.identifier |  |
| FRLMEncounter.header.status | FREncounterDocument.status |  |
| FRLMEncounter.header.author[x] | FREncounterDocument.author |  |
| FRLMEncounter.type | FREncounterDocument.class |  |
| FRLMEncounter.period | FREncounterDocument.period |  |
| FRLMEncounter.priority | FREncounterDocument.priority |  |
| FRLMEncounter.participant | FREncounterDocument.participant |  |
| FRLMEncounter.serviceProvider | FREncounterDocument.serviceProvider |  |
| FRLMEncounter.referringProfessional | FREncounterDocument.participant.individual |  |
| FRLMEncounter.basedOn[x] | FREncounterDocument.basedOn |  |
| FRLMEncounter.reason[x] | FREncounterDocument.reasonCode |  |
| FRLMEncounter.admission | FREncounterDocument.hospitalization |  |
| FRLMEncounter.admission.admitter | FREncounterDocument.participant.individual |  |
| FRLMEncounter.admission.admitSource | FREncounterDocument.hospitalization.admitSource |  |
| FRLMEncounter.dischargeDiagnosis[x] | FREncounterDocument.diagnosis.condition |  |
| FRLMEncounter.dischargeDestination.type | FREncounterDocument.hospitalization.dischargeDisposition |  |
| FRLMEncounter.dischargeDestination.location[x] | FREncounterDocument.hospitalization.destination |  |
| FRLMEncounter.serviceLocation | FREncounterDocument.location |  |
| FRLMEncounter.serviceLocation.period | FREncounterDocument.location.period |  |
| FRLMEncounter.serviceLocation.organisationPart[x] | FREncounterDocument.location.location |  |
| FRLMEncounter.subEncounter | FREncounterDocument.partOf |  |
| FRLMEncounter.note |  |  |
| **FRLMImagingStudy** | **FRCDADICOMExamenImagerie** |  |
| FRLMImagingStudy.header.identifier | FRCDADICOMTechniqueImagerie.id |  |
| FRLMImagingStudy.modality | FRCDADICOMTechniqueImagerie.methodCode |  |
| FRLMImagingStudy.bodySite | FRCDADICOMTechniqueImagerie.targetSiteCode |  |
| FRLMImagingStudy.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier |  |
| FRLMImagingStudy.encounter |  |  |
| FRLMImagingStudy.started | FRCDADICOMTechniqueImagerie.effectiveTime |  |
| FRLMImagingStudy.basedOn |  |  |
| FRLMImagingStudy.numberOfSeries |  |  |
| FRLMImagingStudy.numberOfInstances |  |  |
| FRLMImagingStudy.studyCustodian |  |  |
| FRLMImagingStudy.studyEndpoint |  |  |
| FRLMImagingStudy.series |  |  |
| **FRLMImagingStudy** | **FRImagingStudyDocument** |  |
| FRLMImagingStudy.header.identifier | FRImagingStudyDocument.identifier |  |
| FRLMImagingStudy.modality | FRImagingStudyDocument.modality |  |
| FRLMImagingStudy.bodySite | FRImagingStudyDocument.bodySite |  |
| FRLMImagingStudy.encounter | FRImagingStudyDocument.encounter |  |
| FRLMImagingStudy.started | FRImagingStudyDocument.started |  |
| FRLMImagingStudy.basedOn | FRImagingStudyDocument.basedOn |  |
| FRLMImagingStudy.numberOfSeries | FRImagingStudyDocument.numberOfSeries |  |
| FRLMImagingStudy.numberOfInstances | FRImagingStudyDocument.numberOfInstances |  |
| FRLMImagingStudy.studyCustodian | FRImagingStudyDocument.series. performer.actor:Organization |  |
| FRLMImagingStudy.studyEndpoint | FRImagingStudyDocument.endpoint |  |
| FRLMImagingStudy.series | FRImagingStudyDocument.series |  |
| **FRLMExpositionRadiations** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:exposureRadiation |
| FRLMExpositionRadiations.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:exposureRadiation.code |
| FRLMExpositionRadiations.titreSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:exposureRadiation.title |
| FRLMExpositionRadiations.blocNarratif | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:exposureRadiation.text |
| FRLMExpositionRadiations.entree.autorisationExposition | FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |
| FRLMExpositionRadiations.entree.quantiteExposition | FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.component |
| FRLMExpositionRadiations.entree.administrationRadiopharmaceutique | FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| FRLMExpositionRadiations.entree.observationGrossesse | FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationGrossesse |
| FRLMExpositionRadiations.entree.observationIndication | FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication | FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationIndication |
| **FRLMFacteursDeRisqueProfessionnelsNonCode** | **FRCDAFacteursDeRisqueProfessionnelsNonCode** | FRCompositionDocument.section:uncodedOccupationalRiskFactors |
| FRLMFacteursDeRisqueProfessionnelsNonCode.codeSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.code | FRCompositionDocument.section:uncodedOccupationalRiskFactors.code |
| FRLMFacteursDeRisqueProfessionnelsNonCode.titreSection | FRCDAFacteursDeRisqueProfessionnelsNonCode.title | FRCompositionDocument.section:uncodedOccupationalRiskFactors.title |
| FRLMFacteursDeRisqueProfessionnelsNonCode.blocNarratif | FRCDAFacteursDeRisqueProfessionnelsNonCode.text |  |
| **FRLMFonctionsPhysiques** | **FRCDAFonctionsPhysiques** | FRCompositionDocument.section:PhysicalFunctions |
| FRLMFonctionsPhysiques.identifiant | FRCDAFonctionsPhysiques.id | FRCompositionDocument.section:PhysicalFunctions.id |
| FRLMFonctionsPhysiques.code | FRCDAFonctionsPhysiques.code | FRCompositionDocument.section:PhysicalFunctions.code |
| FRLMFonctionsPhysiques.titreSection | FRCDAFonctionsPhysiques.title | FRCompositionDocument.section:PhysicalFunctions.title |
| FRLMFonctionsPhysiques.blocNarratif | FRCDAFonctionsPhysiques.text | FRCompositionDocument.section:PhysicalFunctions.text |
| FRLMFonctionsPhysiques.entree.groupeQuestionnairesEvaluation | FRCDAFonctionsPhysiques.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyPannelDocument |
| FRLMFonctionsPhysiques.entree.evalutation | FRCDAFonctionsPhysiques.entry:FRCDAEvaluation | FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyDocument |
| **FRLMObservationSocialHistory** | **FRCDAHabitusModeDeVie** |  |
| FRLMObservationSocialHistory.header.status | FRCDAHabitusModeDeVie.statusCode |  |
| FRLMObservationSocialHistory.observationDate[x] | FRCDAHabitusModeDeVie.effectiveTime |  |
| FRLMObservationSocialHistory.type | FRCDAHabitusModeDeVie.code |  |
| FRLMObservationSocialHistory.result | FRCDAHabitusModeDeVie.value |  |
| FRLMObservationSocialHistory.note | FRCDAHabitusModeDeVie.text |  |
| **FRLMObservationSocialHistory** | **FRObservationSocialHistoryDocument** |  |
| FRLMObservationSocialHistory.header.status | FRObservationSocialHistoryDocument.status |  |
| FRLMObservationSocialHistory.observationDate[x] | FRObservationSocialHistoryDocument.effectiveDateTime |  |
| FRLMObservationSocialHistory.type | FRObservationSocialHistoryDocument.code |  |
| FRLMObservationSocialHistory.result | FRObservationSocialHistoryDocument.valueCodeableConcept |  |
| FRLMObservationSocialHistory.note | FRObservationSocialHistoryDocument.note |  |
| **FRLMPregnancyHistory** | **FRCDAHistoriqueDeLaGrossesse** |  |
| FRLMPregnancyHistory.header.status | FRCDAHistoriqueDeLaGrossesse.statusCode |  |
| FRLMPregnancyHistory.directSubject[x] |  |  |
| FRLMPregnancyHistory.type | FRCDAHistoriqueDeLaGrossesse.code |  |
| FRLMPregnancyHistory.observationDate[x] | FRCDAHistoriqueDeLaGrossesse.effectiveTime |  |
| FRLMPregnancyHistory.result | FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse |  |
| FRLMPregnancyHistory.component | FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance |  |
| FRLMPregnancyHistory.derivedFrom[x] |  |  |
| FRLMPregnancyHistory.hasMember[x] |  |  |
| **FRLMPregnancyHistory** | **FRPregnancyHistoryDocument** |  |
| FRLMPregnancyHistory.header.identifier | FRPregnancyHistoryDocument.identifier |  |
| FRLMPregnancyHistory.type | FRPregnancyHistoryDocument.code |  |
| FRLMPregnancyHistory.observationDate[x] | FRPregnancyHistoryDocument.effective[x] |  |
| FRLMPregnancyHistory.result | FRPregnancyHistoryDocument.hasMember:FRObservationPregnancyDocument |  |
| FRLMPregnancyHistory.component | FRPregnancyHistoryDocument.component |  |
| **FRLMHistoriqueDesActes** | **FRCDAHistoriqueDesActes** | FRCompositionDocument.section:historyActs |
| FRLMHistoriqueDesActes.codeSection | FRCDAHistoriqueDesActes.code | FRCompositionDocument.section:historyActs.code |
| FRLMHistoriqueDesActes.titreSection | FRCDAHistoriqueDesActes.title | FRCompositionDocument.section:historyActs.title |
| FRLMHistoriqueDesActes.blocNarratif | FRCDAHistoriqueDesActes.text | FRCompositionDocument.section:historyActs.text |
| FRLMHistoriqueDesActes.entree.actes | FRCDAHistoriqueDesActes.entry:FRCDAActe | FRCompositionDocument.section:historyActs.entry:FRProcedureDocument |
| FRLMHistoriqueDesActes.entree.references | FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes | FRCompositionDocument.section:historyActs.entry:FRDocumentReferenceDocument |
| **FRLMHistoriqueDesGrossesses** | **FRCDAHistoriqueDesGrossesses** | FRCompositionDocument.section:pregnancyHistory |
| FRLMHistoriqueDesGrossesses.codeSection | FRCDAHistoriqueDesGrossesses.code | FRCompositionDocument.section:pregnancyHistory.code |
| FRLMHistoriqueDesGrossesses.titreSection | FRCDAHistoriqueDesGrossesses.title | FRCompositionDocument.section:pregnancyHistory.title |
| FRLMHistoriqueDesGrossesses.blocNarratif | FRCDAHistoriqueDesGrossesses.text | FRCompositionDocument.section:pregnancyHistory.text |
| FRLMHistoriqueDesGrossesses.entree[x]:FRLMObservationGrossesse | FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse | FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyDocument |
| FRLMHistoriqueDesGrossesses.entree[x]:FRLMHistoriqueGrossesse | FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse | FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyHistoryDocument |
| **FRLMObservationMedia** | **FRCDAImageIllustrative** |  |
| FRLMObservationMedia.identifiant | FRCDAImageIllustrative.id |  |
| FRLMObservationMedia.content.data | FRCDAImageIllustrative.value |  |
| FRLMObservationMedia.content.contentType | FRCDAImageIllustrative.value.mediaType |  |
| FRLMObservationMedia.subject:FRLMPatient | FRCDAImageIllustrative.subject |  |
| FRLMObservationMedia.subject:FRLMSpecimen | FRCDAImageIllustrative.specimen |  |
| FRLMObservationMedia.note |  |  |
| FRLMObservationMedia.header.performer[x] | FRCDAImageIllustrative.performer |  |
| FRLMObservationMedia.header.participant[x] | FRCDAImageIllustrative.participant |  |
| FRLMObservationMedia.header.author[x] | FRCDAImageIllustrative.author |  |
| FRLMObservationMedia.header.informant[x] | FRCDAImageIllustrative.informant |  |
| **FRLMObservationMedia** | **FRMediaDocument** |  |
| FRLMObservationMedia.identifiant | FRMediaDocument.identifier |  |
| FRLMObservationMedia.content.data | FRMediaDocument.content.data |  |
| FRLMObservationMedia.content.contentType | FRMediaDocument.content.contentType |  |
| FRLMObservationMedia.subject:FRLMPatient | FRMediaDocument.subject |  |
| FRLMObservationMedia.subject:FRLMSpecimen | FRMediaDocument.specimen |  |
| FRLMObservationMedia.note | FRMediaDocument.note |  |
| FRLMObservationMedia.header.performer[x] | FRMediaDocument.operator |  |
| FRLMObservationMedia.header.participant[x] |  |  |
| FRLMObservationMedia.header.author[x] |  |  |
| FRLMObservationMedia.header.informant[x] |  |  |
| **FRLMIsolatMicrobiologique** | **FRCDAIsolatMicrobiologique** | **FRObservationLaboratoryReportResultsDocument** |
| FRLMIsolatMicrobiologique.identifiant | FRCDAIsolatMicrobiologique.id | FRObservationLaboratoryReportResultsDocument.identifier |
| FRLMIsolatMicrobiologique.codeIsolat | FRCDAIsolatMicrobiologique.code | FRObservationLaboratoryReportResultsDocument.code |
| FRLMIsolatMicrobiologique.statut | FRCDAIsolatMicrobiologique.statusCode | FRObservationLaboratoryReportResultsDocument.status |
| FRLMIsolatMicrobiologique.dateResultat | FRCDAIsolatMicrobiologique.effectiveTime | FRObservationLaboratoryReportResultsDocument.effectivePeriod |
| FRLMIsolatMicrobiologique.choice:SujetNonHumain | FRCDAIsolatMicrobiologique.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain | FRCDAIsolatMicrobiologique.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMIsolatMicrobiologique.isolatMicrobiologique | FRCDAIsolatMicrobiologique.specimen | FRObservationLaboratoryReportResultsDocument.specimen |
| FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat | FRCDAIsolatMicrobiologique.specimen.specimenRole |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.identifiant | FRCDAIsolatMicrobiologique.specimen. specimenRole.id |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent | FRCDAIsolatMicrobiologique.specimen. specimenRole.specimenPlayingEntity |  |
| FRLMIsolatMicrobiologique.isolatMicrobiologique. isolat.agent.code | FRCDAIsolatMicrobiologique.specimen. specimenRole.specimenPlayingEntity.code |  |
| FRLMIsolatMicrobiologique.laboratoireExecutant | FRCDAIsolatMicrobiologique.performer | FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant |
| FRLMIsolatMicrobiologique.auteur | FRCDAIsolatMicrobiologique.author | FRObservationLaboratoryReportResultsDocument.performer.extension:author |
| FRLMIsolatMicrobiologique.valideur | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMIsolatMicrobiologique.valideur | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMIsolatMicrobiologique.valideur | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMIsolatMicrobiologique.responsable | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMIsolatMicrobiologique.responsable | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMIsolatMicrobiologique.responsable | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMIsolatMicrobiologique.dispositifAutomatique | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMIsolatMicrobiologique.dispositifAutomatique | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMIsolatMicrobiologique.dispositifAutomatique | FRCDAIsolatMicrobiologique.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale | FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMIsolatMicrobiologique.resultatElementCliniquePertinent | FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMIsolatMicrobiologique.imageIllustrative | FRCDAIsolatMicrobiologique.component:frImageIllustrative | FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument |
| FRLMIsolatMicrobiologique.commentaire | FRCDAIsolatMicrobiologique.component:frCommentaireER | FRObservationLaboratoryReportResultsDocument.note |
| **FRLMObservationVitalSign** | **FRCDASigneVitalObserve** |  |
| FRLMObservationVitalSign.header.identifier | FRCDASigneVitalObserve.id |  |
| FRLMObservationVitalSign.observationDate[x] | FRCDASigneVitalObserve.effectiveTime |  |
| FRLMObservationVitalSign.type | FRCDASigneVitalObserve.code |  |
| FRLMObservationVitalSign.header.status | FRCDASigneVitalObserve.statusCode |  |
| FRLMObservationVitalSign.method | FRCDASigneVitalObserve.methodCode |  |
| FRLMObservationVitalSign.bodySite | FRCDASigneVitalObserve.targetSiteCode |  |
| FRLMObservationVitalSign.result | FRCDASigneVitalObserve.value |  |
| FRLMObservationVitalSign.interpretation | FRCDASigneVitalObserve.interpretationCode |  |
| FRLMObservationVitalSign.note | FRCDASigneVitalObserve.text |  |
| FRLMObservationVitalSign.header.author | FRCDASigneVitalObserve.author |  |
| **FRLMObservationVitalSign** | **FRObservationVitalSignsDocument** |  |
| FRLMObservationVitalSign.header.identifier | FRObservationVitalSignsDocument.identifier |  |
| FRLMObservationVitalSign.observationDate[x] | FRObservationVitalSignsDocument.effectiveDateTime |  |
| FRLMObservationVitalSign.type | FRObservationVitalSignsDocument.code |  |
| FRLMObservationVitalSign.header.status | FRObservationVitalSignsDocument.status |  |
| FRLMObservationVitalSign.method | FRObservationVitalSignsDocument.method |  |
| FRLMObservationVitalSign.bodySite | FRObservationVitalSignsDocument.bodySite |  |
| FRLMObservationVitalSign.result | FRObservationVitalSignsDocument.component.valueQuantity |  |
| FRLMObservationVitalSign.interpretation | FRObservationVitalSignsDocument.interpretation |  |
| FRLMObservationVitalSign.note | FRObservationVitalSignsDocument.note |  |
| FRLMObservationVitalSign.header.author | FRObservationVitalSignsDocument.extension:author |  |
| **FRLMPregnancyObservation** | **FRCDAObservationSurLaGrossesse** |  |
| FRLMPregnancyObservation.header.status | FRCDAObservationSurLaGrossesse.statusCode |  |
| FRLMPregnancyObservation.directSubject[x] | FRCDAObservationSurLaGrossesse.subject |  |
| FRLMPregnancyObservation.observationDate[x] | FRCDAObservationSurLaGrossesse.effectiveTime |  |
| FRLMPregnancyObservation.type | FRCDAObservationSurLaGrossesse.code |  |
| FRLMPregnancyObservation.method | FRCDAObservationSurLaGrossesse.methodCode |  |
| FRLMPregnancyObservation.result | FRCDAObservationSurLaGrossesse.value |  |
| FRLMPregnancyObservation.result.dataAbsentReason | FRCDAObservationSurLaGrossesse.nullFlavor |  |
| FRLMPregnancyObservation.result.referenceRange | FRCDAObservationSurLaGrossesse.referenceRange |  |
| FRLMPregnancyObservation.interpretation | FRCDAObservationSurLaGrossesse.interpretationCode |  |
| FRLMPregnancyObservation.note | FRCDAObservationSurLaGrossesse.text |  |
| FRLMPregnancyObservation.component |  |  |
| FRLMPregnancyObservation.derivedFrom[x] | FRCDAObservationSurLaGrossesse.entryRelationship |  |
| FRLMPregnancyObservation.hasMember[x] | FRCDAObservationSurLaGrossesse.entryRelationship |  |
| **FRLMPregnancyObservation** | **FRObservationPregnancyDocument** |  |
| FRLMPregnancyObservation.directSubject[x] | FRObservationPregnancyDocument.subject |  |
| FRLMPregnancyObservation.observationDate[x] | FRObservationPregnancyDocument.effective[x] |  |
| FRLMPregnancyObservation.type | FRObservationPregnancyDocument.code |  |
| FRLMPregnancyObservation.method | FRObservationPregnancyDocument.method |  |
| FRLMPregnancyObservation.result | FRObservationPregnancyDocument.value |  |
| FRLMPregnancyObservation.result.dataAbsentReason | FRObservationPregnancyDocument.dataAbsentReason |  |
| FRLMPregnancyObservation.result.referenceRange | FRObservationPregnancyDocument.referenceRange |  |
| FRLMPregnancyObservation.interpretation | FRObservationPregnancyDocument.interpretation |  |
| FRLMPregnancyObservation.note | FRObservationPregnancyDocument.note |  |
| FRLMPregnancyObservation.component | FRObservationPregnancyDocument.component |  |
| FRLMPregnancyObservation.derivedFrom[x] | FRObservationPregnancyDocument.derivedFrom |  |
| FRLMPregnancyObservation.hasMember[x] | FRObservationPregnancyDocument.hasMember |  |
| **FRLMCarePlan** | **FRCDAReferenceItemPlanTraitement** |  |
| **FRLMPlanSoins** | **FRCDAPlanDeSoins** | FRCompositionDocument.section:planOfCare |
| FRLMCarePlan.header.identifier | FRCDAReferenceItemPlanTraitement.id |  |
| FRLMPlanSoins.codeSection | FRCDAPlanDeSoins.code | FRCompositionDocument.section:planOfCare.code |
| FRLMCarePlan.header.status | FRCDAReferenceItemPlanTraitement.statusCode |  |
| FRLMPlanSoins.titreSection | FRCDAPlanDeSoins.title | FRCompositionDocument.section:planOfCare.title |
| FRLMCarePlan.addresses |  |  |
| FRLMPlanSoins.blocNarratif | FRCDAPlanDeSoins.text | FRCompositionDocument.section:planOfCare.text |
| FRLMCarePlan.goal |  |  |
| FRLMPlanSoins.entree.actes | FRCDAPlanDeSoins.entry:FRCDAActe | FRCompositionDocument.section:planOfCare.entry:FRProcedureActDocument |
| FRLMCarePlan.activity | FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement |  |
| FRLMPlanSoins.entree.demandeExamenOuSuivi | FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi | FRCompositionDocument.section:planOfCare.entry:FRServiceRequestDocument |
| FRLMPlanSoins.entree.traitement | FRCDAPlanDeSoins.entry:FRCDATraitement | FRCompositionDocument.section:planOfCare.entry:FRMedicationAdministrationDocument |
| FRLMPlanSoins.entree.vaccinRecommande | FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande | FRCompositionDocument.section:planOfCare.entry:FRImmunizationRecommendationDocument |
| FRLMPlanSoins.entree.rencontre | FRCDAPlanDeSoins.entry:FRCDARencontre | FRCompositionDocument.section:planOfCare.entry:FREncounterDocument |
| **FRLMCarePlan** | **FRCarePlanDocument** |  |
| FRLMCarePlan.header.identifier | FRCarePlanDocument.identifier |  |
| FRLMCarePlan.header.status | FRCarePlanDocument.status |  |
| FRLMCarePlan.addresses | FRCarePlanDocument.addresses |  |
| FRLMCarePlan.goal | FRCarePlanDocument.goal |  |
| FRLMCarePlan.activity | FRCarePlanDocument.activity.reference:FRMedicationRequestDocument |  |
| **FRLMPointsDeVigilancesNonCode** | **FRCDAPointsDeVigilancesNonCode** | FRCompositionDocument.section:uncodedPointsOfVigilance |
| FRLMPointsDeVigilancesNonCode.codeSection | FRCDAPointsDeVigilancesNonCode.code | FRCompositionDocument.section:uncodedPointsOfVigilance.code |
| FRLMPointsDeVigilancesNonCode.titreSection | FRCDAPointsDeVigilancesNonCode.title | FRCompositionDocument.section:uncodedPointsOfVigilance.title |
| FRLMPointsDeVigilancesNonCode.blocNarratif | FRCDAPointsDeVigilancesNonCode.text | FRCompositionDocument.section:uncodedPointsOfVigilance.text |
| **FRLMPrescriptionDispositifsMedicaux** | **FRCDAPrescriptionDispositifsMedicaux** | FRCompositionDocument.section:medicalDevicePrescription |
| FRLMPrescriptionDispositifsMedicaux.auteur | FRCDAPrescriptionDispositifsMedicaux.author | FRCompositionDocument.section:medicalDevicePrescription.author |
| FRLMPrescriptionDispositifsMedicaux.codeSection | FRCDAPrescriptionDispositifsMedicaux.code | FRCompositionDocument.section:medicalDevicePrescription.code |
| FRLMPrescriptionDispositifsMedicaux.titreSection | FRCDAPrescriptionDispositifsMedicaux.title | FRCompositionDocument.section:medicalDevicePrescription.title |
| FRLMPrescriptionDispositifsMedicaux.blocNarratif | FRCDAPrescriptionDispositifsMedicaux.text | FRCompositionDocument.section:medicalDevicePrescription.text |
| FRLMPrescriptionDispositifsMedicaux.entree.dispositifMedical | FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical | FRCompositionDocument.section:medicalDevicePrescription.entry:FRDeviceRequestDocument |
| **FRLMPrescriptionMedicaments** | **FRCDAPrescriptionMedicaments** | FRCompositionDocument.section:medicationRequest |
| FRLMPrescriptionMedicaments.auteur | FRCDAPrescriptionMedicaments.author | FRCompositionDocument.section:medicationRequest.author |
| FRLMPrescriptionMedicaments.codeSection | FRCDAPrescriptionMedicaments.code | FRCompositionDocument.section:medicationRequest.code |
| FRLMPrescriptionMedicaments.titreSection | FRCDAPrescriptionMedicaments.title | FRCompositionDocument.section:medicationRequest.title |
| FRLMPrescriptionMedicaments.blocNarratif | FRCDAPrescriptionMedicaments.text | FRCompositionDocument.section:medicationRequest.text |
| FRLMPrescriptionMedicaments.entree.traitementPrescrit | FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit | FRCompositionDocument.section:medicationRequest.entry:FRMedicationRequestDocument |
| **FRLMCondition** | **FRCDAProbleme** |  |
| FRLMCondition.header.identifier | FRCDAProbleme.id |  |
| FRLMCondition.type | FRCDAProbleme.code |  |
| FRLMCondition.problem | FRCDAProbleme.value |  |
| FRLMCondition.period | FRCDAProbleme.effectiveTime |  |
| FRLMCondition.period.onsetDate | FRCDAProbleme.effectiveTime.low |  |
| FRLMCondition.period.endDate | FRCDAProbleme.effectiveTime.high |  |
| FRLMCondition.header.status | FRCDAProbleme.entryRelationship:frStatutDuProbleme |  |
| FRLMCondition.severity | FRCDAProbleme.entryRelationship:frSeverite |  |
| FRLMCondition.diagnosisAssertionStatus | FRCDAProbleme.entryRelationship:frCertitude |  |
| FRLMCondition.clinicalStatus | FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient |  |
| FRLMCondition.bodySite |  |  |
| FRLMCondition.stage |  |  |
| FRLMCondition.reference | FRCDAProbleme.reference. externalDocument.text.reference |  |
| FRLMCondition.note | FRCDAProbleme.entryRelationship:frCommentaireER |  |
| **FRLMCondition** | **FRConditionDocument** |  |
| FRLMCondition.header.identifier | FRConditionDocument.identifier |  |
| FRLMCondition.type | FRConditionDocument.category |  |
| FRLMCondition.problem | FRConditionDocument.code |  |
| FRLMCondition.header.status | FRConditionDocument.clinicalStatus |  |
| FRLMCondition.period |  |  |
| FRLMCondition.period.onsetDate | FRConditionDocument.onsetDateTime |  |
| FRLMCondition.period.endDate | FRConditionDocument.abatementDateTime |  |
| FRLMCondition.severity | FRConditionDocument.severity |  |
| FRLMCondition.diagnosisAssertionStatus | FRConditionDocument.verificationStatus |  |
| FRLMCondition.clinicalStatus | FRConditionDocument.stage.summary |  |
| FRLMCondition.bodySite | FRConditionDocument.bodySite |  |
| FRLMCondition.stage | FRConditionDocument.stage.summary |  |
| FRLMCondition.reference | FRConditionDocument.evidence. detail:FRDocumentReferenceDocument.content.attachment.url |  |
| FRLMCondition.note | FRConditionDocument.note |  |
| **FRLMProblemesActifs** | **FRCDAProblemesActifs** | FRCompositionDocument.section:activeProblems |
| FRLMProblemesActifs.codeSection | FRCDAProblemesActifs.code | FRCompositionDocument.section:activeProblems.code |
| FRLMProblemesActifs.titreSection | FRCDAProblemesActifs.title | FRCompositionDocument.section:activeProblems.title |
| FRLMProblemesActifs.blocNarratif | FRCDAProblemesActifs.text | FRCompositionDocument.section:activeProblems.text |
| FRLMProblemesActifs.entree.problemes | FRCDAProblemesActifs.entry:FRCDAListeDesProblemes | FRCompositionDocument.section:activeProblems.entry:FRConditionDocument |
| **FRLMProcedure** | **FRCDAActe** |  |
| FRLMProcedure.code | FRCDAActe.code |  |
| FRLMProcedure.header.status | FRCDAActe.statusCode |  |
| FRLMProcedure.procedureDate[x] | FRCDAActe.effectiveTime |  |
| FRLMProcedure.priority | FRCDAActe.priorityCode |  |
| FRLMProcedure.bodySite | FRCDAActe.targetSiteCode |  |
| FRLMProcedure.approachSiteCode | FRCDAActe.approachSiteCode |  |
| FRLMProcedure.difficulty | FRCDAActe.entryRelationship:frSimpleObservationDifficulte |  |
| FRLMProcedure.reason[x] | FRCDAActe.entryRelationship:frReferenceInterneMotifActe |  |
| FRLMProcedure.outcome |  |  |
| FRLMProcedure.complication |  |  |
| FRLMProcedure.deviceUsed | FRCDAActe.entryRelationship:frReferenceInterneDM |  |
| FRLMProcedure.focalDevice |  |  |
| FRLMProcedure.note | FRCDAActe.text |  |
| **FRLMProcedure** | **FRProcedureDocument** |  |
| FRLMProcedure.code | FRProcedureDocument.code |  |
| FRLMProcedure.header.status | FRProcedureDocument.status |  |
| FRLMProcedure.procedureDate[x] | FRProcedureDocument.performed[x] |  |
| FRLMProcedure.priority | FRProcedureDocument.extension:priority |  |
| FRLMProcedure.bodySite | FRProcedureDocument.bodySite.TargetSiteCode |  |
| FRLMProcedure.approachSiteCode | FRProcedureDocument.bodySite.ApproachSiteCode |  |
| FRLMProcedure.difficulty | FRProcedureDocument.extension:difficulte |  |
| FRLMProcedure.reason[x] | FRProcedureDocument.reasonCode |  |
| FRLMProcedure.reason[x] | FRProcedureDocument.reasonReference |  |
| FRLMProcedure.outcome | FRProcedureDocument.outcome |  |
| FRLMProcedure.complication | FRProcedureDocument.complication |  |
| FRLMProcedure.deviceUsed | FRProcedureDocument.usedReference |  |
| FRLMProcedure.focalDevice | FRProcedureDocument.focalDevice. manipulated.device |  |
| FRLMProcedure.note | FRProcedureDocument.note |  |
| **FRLMMedication** | **FRCDAProduitDeSante** |  |
| FRLMMedication.identifyingCode[x] | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.code |  |
| FRLMMedication.classification | FRCDAProduitDeSante.pharm:asSpecializedKind |  |
| FRLMMedication.productName | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.name |  |
| FRLMMedication.marketingAuthorisationHolder |  |  |
| FRLMMedication.item.doseForm | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.pharm:formCode |  |
| FRLMMedication.item. ingredient.isActive |  |  |
| FRLMMedication.item. ingredient.substance | FRCDAProduitDeSante.pharm:ingredient. pharm:ingredient.pharm:code |  |
| FRLMMedication.item. ingredient.strengthInfo.strength | FRCDAProduitDeSante.pharm:ingredient.pharm:quantity |  |
| FRLMMedication.item. ingredient.strengthInfo.basisOfStrengthSubstance |  |  |
| FRLMMedication.item.unitOfPresentation | FRCDAProduitDeSante.pharm:asContent |  |
| FRLMMedication.item.containedQuantity | FRCDAProduitDeSante.pharm:asContent |  |
| FRLMMedication.item.amount | FRCDAProduitDeSante.pharm:asContent |  |
| FRLMMedication.item.packageType | FRCDAProduitDeSante.pharm:asContent.pharm:containerPackagedMedicine |  |
| FRLMMedication.device |  |  |
| FRLMMedication.characteristic |  |  |
| FRLMMedication.batch.lotNumber | FRCDAProduitDeSante.manufacturedProduct. manufacturedMaterial.lotNumberText |  |
| FRLMMedication.batch.expirationDate | FRCDAProduitDeSante.pharm:expirationTime |  |
| **FRLMMedication** | **FRMedicationDocument** |  |
| FRLMMedication.identifyingCode[x] | FRMedicationDocument.code |  |
| FRLMMedication.classification | FRMedicationDocument.extension:ihe-ext-medication-classification |  |
| FRLMMedication.productName | FRMedicationDocument.extension:ihe-ext-medication-productname |  |
| FRLMMedication.marketingAuthorisationHolder | FRMedicationDocument.manufacturer |  |
| FRLMMedication.item | FRMedicationDocument.ingredient.itemReference |  |
| FRLMMedication.item.doseForm | FRMedicationDocument.form |  |
| FRLMMedication.item.ingredient | FRMedicationDocument.ingredient |  |
| FRLMMedication.item. ingredient.isActive | FRMedicationDocument.ingredient.isActive |  |
| FRLMMedication.item. ingredient.substance | FRMedicationDocument.ingredient.itemCodeableConcept |  |
| FRLMMedication.item. ingredient.strengthInfo.strength | FRMedicationDocument.ingredient:substanceActive.strength |  |
| FRLMMedication.item. ingredient.strengthInfo.basisOfStrengthSubstance |  |  |
| FRLMMedication.item.unitOfPresentation |  |  |
| FRLMMedication.item.containedQuantity |  |  |
| FRLMMedication.item.amount | FRMedicationDocument.amount |  |
| FRLMMedication.item.packageType |  |  |
| FRLMMedication.device |  |  |
| FRLMMedication.characteristic |  |  |
| FRLMMedication.batch.lotNumber | FRMedicationDocument.batch.lotNumber |  |
| FRLMMedication.batch.expirationDate | FRMedicationDocument.batch.expirationDate |  |
| **FRLMSpecimen** | **FRCDAPrelevement** |  |
| FRLMSpecimen.identifier | FRCDAPrelevement.id |  |
| FRLMSpecimen.header.status | FRCDAPrelevement.statusCode |  |
| FRLMSpecimen.type | FRCDAPrelevement.code |  |
| FRLMSpecimen.specimenSource[x] | FRCDAPrelevement.participant |  |
| FRLMSpecimen.parentSpecimen | FRCDAPrelevement.participant:echantillonPreleve |  |
| FRLMSpecimen.request |  |  |
| FRLMSpecimen.combined |  |  |
| FRLMSpecimen.collection.performer[x] | FRCDAPrelevement.performer |  |
| FRLMSpecimen.collection.collected[x] | FRCDAPrelevement.effectiveTime |  |
| FRLMSpecimen.collection.quantity |  |  |
| FRLMSpecimen.collection.method |  |  |
| FRLMSpecimen.collection.device | FRCDAPrelevement.participant:dispositifUtilise |  |
| FRLMSpecimen.collection.additive[x] | FRCDAPrelevement.participant:produitUtilise |  |
| FRLMSpecimen.collection.bodySite | FRCDAPrelevement.targetSiteCode |  |
| FRLMSpecimen.receivedDate | FRCDAPrelevement.entryRelationship. act.effectiveTime |  |
| FRLMSpecimen.container.specimenQuantity |  |  |
| FRLMSpecimen.container.containerDevice |  |  |
| FRLMSpecimen.condition |  |  |
| FRLMSpecimen.note | FRCDAPrelevement.text |  |
| **FRLMSpecimen** | **FRSpecimenDocument** |  |
| FRLMSpecimen.identifier | FRSpecimenDocument.identifier |  |
| FRLMSpecimen.header.status | FRSpecimenDocument.status |  |
| FRLMSpecimen.type | FRSpecimenDocument.type |  |
| FRLMSpecimen.specimenSource:Patient | FRSpecimenDocument.subject |  |
| FRLMSpecimen.specimenSource:Location | FRSpecimenDocument.subject |  |
| FRLMSpecimen.specimenSource:Device | FRSpecimenDocument.subject |  |
| FRLMSpecimen.parentSpecimen | FRSpecimenDocument.parent |  |
| FRLMSpecimen.request | FRSpecimenDocument.request |  |
| FRLMSpecimen.combined |  |  |
| FRLMSpecimen.collection.performer[x] | FRSpecimenDocument.collection.collector |  |
| FRLMSpecimen.collection.collected[x] | FRSpecimenDocument.collection.collected[x] |  |
| FRLMSpecimen.collection.quantity | FRSpecimenDocument.collection.quantity |  |
| FRLMSpecimen.collection.method | FRSpecimenDocument.collection.method |  |
| FRLMSpecimen.collection.device |  |  |
| FRLMSpecimen.collection.bodySite | FRSpecimenDocument.collection.bodySite |  |
| FRLMSpecimen.receivedDate | FRSpecimenDocument.receivedTime |  |
| FRLMSpecimen.collection.additive[x] | FRSpecimenDocument.processing.additive |  |
| FRLMSpecimen.container.specimenQuantity | FRSpecimenDocument.container.specimenQuantity |  |
| FRLMSpecimen.container.containerDevice | FRSpecimenDocument.container.extension:device |  |
| FRLMSpecimen.condition | FRSpecimenDocument.condition |  |
| FRLMSpecimen.note | FRSpecimenDocument.note |  |
| **FRLMRaisonRecommandation** | **FRCDARaisonDeLaRecommandation** | FRCompositionDocument.section:reasonForRecommendation |
| **FRLMRaisonRecommandationNonCode** | **FRCDARaisonDeLaRecommandationNonCode** | FRCompositionDocument.section:reasonForRecommendation |
| FRLMRaisonRecommandation.codeSection | FRCDARaisonDeLaRecommandation.code | FRCompositionDocument.section:reasonForRecommendation.code |
| FRLMRaisonRecommandationNonCode.codeSection | FRCDARaisonDeLaRecommandationNonCode.code | FRCompositionDocument.section:reasonForRecommendation.code |
| FRLMRaisonRecommandation.titreSection | FRCDARaisonDeLaRecommandation.title | FRCompositionDocument.section:reasonForRecommendation.title |
| FRLMRaisonRecommandationNonCode.titreSection | FRCDARaisonDeLaRecommandationNonCode.title | FRCompositionDocument.section:reasonForRecommendation.title |
| FRLMRaisonRecommandation.blocNarratif | FRCDARaisonDeLaRecommandation.text | FRCompositionDocument.section:reasonForRecommendation.text |
| FRLMRaisonRecommandationNonCode.blocNarratif | FRCDARaisonDeLaRecommandationNonCode.text | FRCompositionDocument.section:reasonForRecommendation.text |
| FRLMRaisonRecommandation.entree.observation | FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation | FRCompositionDocument.section:reasonForRecommendation.entry:Observation |
| FRLMRaisonRecommandation.entree.problemes | FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme | FRCompositionDocument.section:reasonForRecommendation.entry:FRConditionDocument |
| **FRLMMicroOrganismSearch** | **FRCDARechercheDeMicroOrganismes** |  |
| FRLMMicroOrganismSearch.header.identifier | FRCDARechercheDeMicroOrganismes.id |  |
| FRLMMicroOrganismSearch.header.subject | FRCDARechercheDeMicroOrganismes.subject |  |
| FRLMMicroOrganismSearch.header.author[x] | FRCDARechercheDeMicroOrganismes.author |  |
| FRLMMicroOrganismSearch.header.performer[x] | FRCDARechercheDeMicroOrganismes.performer |  |
| FRLMMicroOrganismSearch.header.participant[x] | FRCDARechercheDeMicroOrganismes.participant |  |
| FRLMMicroOrganismSearch.header.informant | FRCDARechercheDeMicroOrganismes.informant |  |
| FRLMMicroOrganismSearch.header.date | FRCDARechercheDeMicroOrganismes.author.time |  |
| FRLMMicroOrganismSearch.header.status | FRCDARechercheDeMicroOrganismes.statusCode |  |
| FRLMMicroOrganismSearch.header.language | FRCDARechercheDeMicroOrganismes.languageCode |  |
| FRLMMicroOrganismSearch.header.source |  |  |
| FRLMMicroOrganismSearch.observationDate | FRCDARechercheDeMicroOrganismes.effectiveTime |  |
| FRLMMicroOrganismSearch.type | FRCDARechercheDeMicroOrganismes.code |  |
| FRLMMicroOrganismSearch.result | FRCDARechercheDeMicroOrganismes.value |  |
| **FRLMResultatExamensBiologieElementCliniquePertinent** | **FRCDAResultatExamensDeBiologieElementCliniquePertinent** |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.identifiant | FRCDAResultatExamensDeBiologieElementCliniquePertinent.id | FRObservationLaboratoryReportResultsDocument.identifier |
| FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation | FRCDAResultatExamensDeBiologieElementCliniquePertinent.code | FRObservationLaboratoryReportResultsDocument.code |
| FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat | FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime | FRObservationLaboratoryReportResultsDocument.effectivePeriod |
| FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat | FRCDAResultatExamensDeBiologieElementCliniquePertinent.value | FRObservationLaboratoryReportResultsDocument.value[x] |
| FRLMResultatExamensBiologieElementCliniquePertinent.interpretation | FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode.code |  |
| FRLMResultatExamensBiologieElementCliniquePertinent.methode | FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode | FRObservationLaboratoryReportResultsDocument.method |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain | FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain | FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant | FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer | FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant |
| FRLMResultatExamensBiologieElementCliniquePertinent.auteur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.author | FRObservationLaboratoryReportResultsDocument.performer.extension:author |
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatExamensBiologieElementCliniquePertinent.valideur | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatExamensBiologieElementCliniquePertinent.responsable | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique | FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatExamensBiologieElementCliniquePertinent.commentaire | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER | FRObservationLaboratoryReportResultsDocument.note |
| FRLMResultatExamensBiologieElementCliniquePertinent.prelevement | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement | FRObservationLaboratoryReportResultsDocument.specimen |
| FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs | FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation | FRObservationLaboratoryReportResultsDocument.extension:workflow-supportingInfo |
| FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference | FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange | FRObservationLaboratoryReportResultsDocument.valueRange |
| **FRLMObservation** | **FRCDAResultat** |  |
| FRLMObservation.header.identifier | FRCDAResultat.id |  |
| FRLMObservation.header.status | FRCDAResultat.statusCode |  |
| FRLMObservation.directSubject[x] | FRCDAResultat.subject |  |
| FRLMObservation.observationDate[x] | FRCDAResultat.effectiveTime |  |
| FRLMObservation.type | FRCDAResultat.code |  |
| FRLMObservation.originalName | FRCDAResultat.text |  |
| FRLMObservation.method | FRCDAResultat.methodCode |  |
| FRLMObservation.specimen | FRCDAResultat.specimen |  |
| FRLMObservation.order | FRCDAResultat.inFulfillmentOf |  |
| FRLMObservation.bodySite | FRCDAResultat.targetSiteCode |  |
| FRLMObservation.result | FRCDAResultat.value |  |
| FRLMObservation.referenceRange | FRCDAResultat.referenceRange |  |
| FRLMObservation.interpretation | FRCDAResultat.interpretationCode |  |
| FRLMObservation.note | FRCDAResultat.entryRelationship:frCommentaireER |  |
| FRLMObservation.component |  |  |
| FRLMObservation.derivedFrom[x] |  |  |
| FRLMObservation.hasMember[x] |  |  |
| **FRLMObservation** | **FRObservationResultDocument** |  |
| FRLMObservation.header.identifier | FRObservationResultDocument.identifier |  |
| FRLMObservation.header.status | FRObservationResultDocument.status |  |
| FRLMObservation.directSubject[x] | FRObservationResultDocument.focus |  |
| FRLMObservation.observationDate[x] | FRObservationResultDocument.effective[x] |  |
| FRLMObservation.type | FRObservationResultDocument.code |  |
| FRLMObservation.originalName | FRObservationResultDocument.code.text |  |
| FRLMObservation.method | FRObservationResultDocument.method |  |
| FRLMObservation.specimen | FRObservationResultDocument.specimen |  |
| FRLMObservation.order | FRObservationResultDocument.basedOn:FRServiceRequestDocument |  |
| FRLMObservation.bodySite | FRObservationResultDocument.bodySite |  |
| FRLMObservation.result | FRObservationResultDocument.value[x] |  |
| FRLMObservation.referenceRange | FRObservationResultDocument.referenceRange |  |
| FRLMObservation.interpretation | FRObservationResultDocument.interpretation |  |
| FRLMObservation.note | FRObservationResultDocument.note |  |
| FRLMObservation.component | FRObservationResultDocument.component |  |
| FRLMObservation.derivedFrom[x] | FRObservationResultDocument.derivedFrom |  |
| FRLMObservation.hasMember[x] | FRObservationResultDocument.hasMember |  |
| **FRLMResultatsExamensBiologieMedicale** | **FRCDAResultatExamensDeBiologie** | **FRObservationLaboratoryReportResultsDocument** |
| FRLMResultatsExamensBiologieMedicale.code | FRCDAResultatExamensDeBiologie.code | FRObservationLaboratoryReportResultsDocument.code |
| FRLMResultatsExamensBiologieMedicale.statut | FRCDAResultatExamensDeBiologie.statusCode | FRObservationLaboratoryReportResultsDocument.status |
| FRLMResultatsExamensBiologieMedicale.dateResultat | FRCDAResultatExamensDeBiologie.effectiveTime | FRObservationLaboratoryReportResultsDocument.effectivePeriod |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain | FRCDAResultatExamensDeBiologie.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain | FRCDAResultatExamensDeBiologie.subject | FRObservationLaboratoryReportResultsDocument.subject |
| FRLMResultatsExamensBiologieMedicale.laboratoireExecutant | FRCDAResultatExamensDeBiologie.performer | FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant |
| FRLMResultatsExamensBiologieMedicale.auteur | FRCDAResultatExamensDeBiologie.author | FRObservationLaboratoryReportResultsDocument.performer.extension:author |
| FRLMResultatsExamensBiologieMedicale.valideur | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatsExamensBiologieMedicale.valideur | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatsExamensBiologieMedicale.valideur | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatsExamensBiologieMedicale.responsable | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatsExamensBiologieMedicale.responsable | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatsExamensBiologieMedicale.responsable | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen |
| FRLMResultatsExamensBiologieMedicale.dispositifAutomatique | FRCDAResultatExamensDeBiologie.participant | FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat |
| FRLMResultatsExamensBiologieMedicale.prelevement | FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement | FRObservationLaboratoryReportResultsDocument.specimen |
| FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale | FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique | FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent | FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent | FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument |
| FRLMResultatsExamensBiologieMedicale.imageIllustrative | FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative | FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument |
| FRLMResultatsExamensBiologieMedicale.commentaire | FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER | FRObservationLaboratoryReportResultsDocument.note |
| **FRLMResultats** | **FRCDAResultats** | FRCompositionDocument.section:results |
| FRLMResultats.codeSection | FRCDAResultats.code | FRCompositionDocument.section:results.code |
| FRLMResultats.titreSection | FRCDAResultats.title | FRCompositionDocument.section:results.title |
| FRLMResultats.blocNarratif | FRCDAResultats.text | FRCompositionDocument.section:results.text |
| FRLMResultats.entree.resultatsEntry | FRCDAResultats.entry:FRCDAResultats | FRCompositionDocument.section:results.entry:FRDiagnosticReportDocument |
| **FRLMCRBIOSousChapitre** | **FRCDACRBIOSousChapitre** | FRCompositionDocument.section:avec-sous-sections.section |
| FRLMCRBIOSousChapitre.codeSection | FRCDACRBIOSousChapitre.code | FRCompositionDocument.section:avec-sous-sections.section.code |
| FRLMCRBIOSousChapitre.blocNarratif | FRCDACRBIOSousChapitre.text | FRCompositionDocument.section:avec-sous-sections.section.text |
| FRLMCRBIOSousChapitre.titreSection | FRCDACRBIOSousChapitre.title | FRCompositionDocument.section:avec-sous-sections.section.title |
| FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale | FRCDACRBIOSousChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale | FRCompositionDocument.section:avec-sous-sections.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| **FRLMStatutDocument** | **FRCDAStatutDuDocument** | FRCompositionDocument.section:documentStatus |
| FRLMStatutDocument.codeSection | FRCDAStatutDuDocument.code | FRCompositionDocument.section:documentStatus.code |
| FRLMStatutDocument.titreSection | FRCDAStatutDuDocument.title | FRCompositionDocument.section:documentStatus.title |
| FRLMStatutDocument.blocNarratif | FRCDAStatutDuDocument.text | FRCompositionDocument.section:documentStatus.text |
| FRLMStatutDocument.entree.statutDocument | FRCDAStatutDuDocument.entry:FRCDAStatutDocument | FRCompositionDocument.section:documentStatus.entry:Observation.status.extension:FRStatusReasonExtension |
| **FRLMStatutFonctionnel** | **FRCDAStatutFonctionnel** | FRCompositionDocument.section:FRFunctionalStatus |
| FRLMStatutFonctionnel.codeSection | FRCDAStatutFonctionnel.code | FRCompositionDocument.section:FRFunctionalStatus.code |
| FRLMStatutFonctionnel.titreSection | FRCDAStatutFonctionnel.title | FRCompositionDocument.section:FRFunctionalStatus.title |
| FRLMStatutFonctionnel.blocNarratif | FRCDAStatutFonctionnel.text | FRCompositionDocument.section:FRFunctionalStatus.text |
| FRLMStatutFonctionnel.auteur | FRCDAStatutFonctionnel.author | FRCompositionDocument.author |
| FRLMStatutFonctionnel.informateur | FRCDAStatutFonctionnel.informant | FRCompositionDocument.extension:informant |
| FRLMStatutFonctionnel.entree.groupeQuestionnairesEvaluation | FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation | FRCompositionDocument.section:FRFunctionalStatus.entry:FRObservationSurveyPannelDocument |
| **FRLMSeries** | **FRCDADICOMSerieImagerie** |  |
| FRLMSeries.seriesUid | FRCDADICOMSerieImagerie.id |  |
| FRLMSeries.number |  |  |
| FRLMSeries.seriesModality | FRCDADICOMSerieImagerie.code.qualifier |  |
| FRLMSeries.bodySite |  |  |
| FRLMSeries.specimen |  |  |
| FRLMSeries.numberOfInstances |  |  |
| FRLMSeries.seriesEndpoint | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text |  |
| FRLMSeries.started | FRCDADICOMSerieImagerie.effectiveTime |  |
| FRLMSeries.instanceSOP | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation |  |
| FRLMSeries.instanceSOP. header.identifier | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.id |  |
| FRLMSeries.instanceSOP.sopClass | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.code |  |
| FRLMSeries.instanceSOP.instanceNumber |  |  |
| FRLMSeries.instanceSOP.numberOfFrames |  |  |
| FRLMSeries.seriesEndpoint.connectionType | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference |  |
| FRLMSeries.seriesEndpoint.payloadType | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.mediaType |  |
| FRLMSeries.seriesEndpoint.address | FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation. text.reference |  |
| **FRLMSeries** | **FRImagingStudyDocument** |  |
| FRLMSeries.seriesUid | FRImagingStudyDocument.series.uid |  |
| FRLMSeries.number | FRImagingStudyDocument.series.number |  |
| FRLMSeries.seriesModality | FRImagingStudyDocument.series.modality |  |
| FRLMSeries.bodySite | FRImagingStudyDocument.series.bodySite |  |
| FRLMSeries.specimen | FRImagingStudyDocument.series.specimen |  |
| FRLMSeries.numberOfInstances | FRImagingStudyDocument.series.numberOfInstances |  |
| FRLMSeries.seriesEndpoint | FRImagingStudyDocument.series.endpoint |  |
| FRLMSeries.started | FRImagingStudyDocument.series.started |  |
| FRLMSeries.instanceSOP | FRImagingStudyDocument.series.instance |  |
| FRLMSeries.instanceSOP. header.identifier | FRImagingStudyDocument.series. instance.uid |  |
| FRLMSeries.instanceSOP.sopClass | FRImagingStudyDocument.series. instance.sopClass |  |
| FRLMSeries.instanceSOP.instanceNumber | FRImagingStudyDocument.series. instance.number |  |
| FRLMSeries.instanceSOP.numberOfFrames | FRImagingStudyDocument.series. instance.extension:number-of-frames |  |
| FRLMSeries.seriesEndpoint.connectionType | FRImagingStudyDocument.series. endpoint.connectionType |  |
| FRLMSeries.seriesEndpoint.payloadType | FRImagingStudyDocument.series. endpoint.payloadType |  |
| FRLMSeries.seriesEndpoint.address | FRImagingStudyDocument.series. endpoint.address |  |
| **FRLMProcedure** | **FRCDADICOMTechniqueImagerie** |  |
| FRLMProcedure.header.identifier | FRCDADICOMTechniqueImagerie.id |  |
| FRLMProcedure.code | FRCDADICOMTechniqueImagerie.code |  |
| FRLMProcedure.header.status | FRCDADICOMTechniqueImagerie.statusCode |  |
| FRLMProcedure.procedureDate[x] | FRCDADICOMTechniqueImagerie.effectiveTime |  |
| FRLMProcedure.procedureDateDateTime | FRCDADICOMTechniqueImagerie.effectiveTime.low |  |
| FRLMProcedure.procedureDatePeriod | FRCDADICOMTechniqueImagerie.effectiveTime.high |  |
| FRLMProcedure.priority | FRCDADICOMTechniqueImagerie.priorityCode |  |
| FRLMProcedure.bodySite | FRCDADICOMTechniqueImagerie.targetSiteCode |  |
| FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier |  |
| FRLMProcedure.approachSiteCode | FRCDADICOMTechniqueImagerie.approachSiteCode |  |
| FRLMProcedure.header.participant[x] | FRCDADICOMTechniqueImagerie.participant |  |
| **FRLMProcedure** | **FRProcedureImagingDocument** |  |
| FRLMProcedure.header.identifier | FRProcedureImagingDocument.identifier |  |
| FRLMProcedure.code | FRProcedureImagingDocument.code |  |
| FRLMProcedure.header.status | FRProcedureImagingDocument.status |  |
| FRLMProcedure.procedureDate[x] | FRProcedureImagingDocument.performed[x] |  |
| FRLMProcedure.priority | FRProcedureImagingDocument.extension:priority |  |
| FRLMProcedure.bodySite | FRProcedureImagingDocument.bodySite |  |
| FRLMProcedure.approachSiteCode | FRProcedureImagingDocument.extension:approachBodySite |  |
| FRLMProcedure.difficulty | FRProcedureImagingDocument.extension:difficulte |  |
| FRLMProcedure.reason[x] | FRProcedureImagingDocument.reasonReference |  |
| FRLMProcedure.outcome | FRProcedureImagingDocument.outcome |  |
| FRLMProcedure.complication | FRProcedureImagingDocument.complication |  |
| FRLMProcedure.deviceUsed | FRProcedureImagingDocument.usedReference |  |
| FRLMProcedure.focalDevice | FRProcedureImagingDocument.focalDevice.manipulated |  |
| FRLMProcedure.note | FRProcedureImagingDocument.note |  |
| FRLMProcedure.header.performer[x] | FRProcedureImagingDocument.performer:Intervenant.actor |  |
| FRLMProcedure.header.author[x] | FRProcedureImagingDocument.recorder |  |
| FRLMProcedure.header.informant | FRProcedureImagingDocument.asserter |  |
| FRLMProcedure.header.participant[x] | FRProcedureImagingDocument.extension:participant |  |
| **FRLMMedicationUse** | **FRCDATraitement** |  |
| FRLMMedicationUse.header.status | FRCDATraitement.statusCode |  |
| FRLMMedicationUse.header.author[x] | FRCDATraitement.author |  |
| FRLMMedicationUse.treatmentStatus |  |  |
| FRLMMedicationUse.changeType |  |  |
| FRLMMedicationUse.medication | FRCDATraitement.consumable |  |
| FRLMMedicationUse.reason[x] | FRCDATraitement.entryRelationship:frReferenceInterne |  |
| FRLMMedicationUse.dosageInstructions.renderedDosageInstruction | FRCDATraitement.text |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitement.doseQuantity |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitement.rateQuantity |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitement.effectiveTime.frequency |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.period | FRCDATraitement.effectiveTime.period |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitement.precondition |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.date[x] | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.duration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventTime | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.bodySite | FRCDATraitement.approachSiteCode |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitement.routeCode |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationUse.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationUse.derivedFrom[x] | FRCDATraitement.entryRelationship:frPrescription |  |
| FRLMMedicationUse.note | FRCDATraitement.text |  |
| **FRLMMedicationDispense** | FRCDATraitementDispense.entryRelationship:frTraitement |  |
| FRLMMedicationDispense.header.identifier | FRCDATraitementDispense.entryRelationship:frTraitement.id |  |
| FRLMMedicationDispense.header.author[x] |  |  |
| FRLMMedicationDispense.header.status | FRCDATraitementDispense.entryRelationship:frTraitement.statusCode |  |
| FRLMMedicationDispense.receiver[x] |  |  |
| FRLMMedicationDispense.relatedRequest | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frReferenceItemPrescription |  |
| FRLMMedicationDispense.medicament | FRCDATraitementDispense.entryRelationship:frTraitement.product:frProduitDeSante |  |
| FRLMMedicationDispense.dispensedQuantity | FRCDATraitementDispense.entryRelationship:frTraitement.quantity |  |
| FRLMMedicationDispense.timeOfDispensation |  |  |
| FRLMMedicationDispense.substitutionOccurred | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frActeSubstitution |  |
| FRLMMedicationDispense.dosageInstructions | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement |  |
| FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.text |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.sequence |  |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.note | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.doseQuantity |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.rateQuantity |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.frequency |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.period | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.period |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitementDispense.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.precondition |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.date[x] | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration | FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventTime | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.bodySite | FRCDATraitementDispense.entryRelationship:frTraitement.approachSiteCode |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.routeCode |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMMedicationDispense.note | FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frNotesDuDispensateur |  |
| **FRLMMedicationDispense** | **FRMedicationDispenseDocument** |  |
| FRLMMedicationDispense.header.identifier | FRMedicationDispenseDocument.identifier |  |
| FRLMMedicationDispense.header.author[x] | FRMedicationDispenseDocument.performer.actor |  |
| FRLMMedicationDispense.header.status | FRMedicationDispenseDocument.status |  |
| FRLMMedicationDispense.receiver[x] | FRMedicationDispenseDocument.receiver |  |
| FRLMMedicationDispense.relatedRequest | FRMedicationDispenseDocument.authorizingPrescription |  |
| FRLMMedicationDispense.medicament | FRMedicationDispenseDocument.medication[x] |  |
| FRLMMedicationDispense.dispensedQuantity | FRMedicationDispenseDocument.quantity |  |
| FRLMMedicationDispense.timeOfDispensation | FRMedicationDispenseDocument.whenHandedOver |  |
| FRLMMedicationDispense.substitutionOccurred | FRMedicationDispenseDocument.substitution.wasSubstituted |  |
| FRLMMedicationDispense.dosageInstructions | FRMedicationDispenseDocument.dosageInstruction |  |
| FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction | FRMedicationDispenseDocument.dosageInstruction.text |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.sequence | FRMedicationDispenseDocument.dosageInstruction.sequence |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.note | FRMedicationDispenseDocument.dosageInstruction.patientInstruction |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRMedicationDispenseDocument.dosageInstruction. doseAndRate.dose[x] |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRMedicationDispenseDocument.dosageInstruction. doseAndRate.rate[x] |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency | FRMedicationDispenseDocument.dosageInstruction. timing.repeat |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.frequency |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.period | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.period |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.dayOfWeek |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.timeOfDay | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.timeOfDay |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRMedicationDispenseDocument.dosageInstruction.additionalInstruction |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.dateOfAdministration | FRMedicationDispenseDocument.dosageInstruction. timing.event |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.conditionOfAdministration | FRMedicationDispenseDocument.dosageInstruction.asNeededCodeableConcept |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.date[x] | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.bounds[x] |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration | FRMedicationDispenseDocument.dosageInstruction. timing.repeat |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration.durationValue | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.duration |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration.durationUnit | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.durationUnit |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.duration.durationMax | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.durationMax |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventTime | FRMedicationDispenseDocument.dosageInstruction. timing.repeat |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventTime.eventTimeCode | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.when |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventTime.offset | FRMedicationDispenseDocument.dosageInstruction. timing.repeat.offset |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.bodySite | FRMedicationDispenseDocument.dosageInstruction.site |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.routeOfAdministration | FRMedicationDispenseDocument.dosageInstruction.route |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRMedicationDispenseDocument.dosageInstruction. maxDosePerPeriod.numerator |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRMedicationDispenseDocument.dosageInstruction. maxDosePerPeriod.denominator |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxDosePerAdministration | FRMedicationDispenseDocument.dosageInstruction.maxDosePerAdministration |  |
| FRLMMedicationDispense.dosageInstructions. dosageDetails.maxLifetimeDose | FRMedicationDispenseDocument.dosageInstruction.maxDosePerLifetime |  |
| FRLMMedicationDispense.note | FRMedicationDispenseDocument.note |  |
| **FRLMMedicationAdministration** | **FRCDATraitement** |  |
| FRLMMedicationAdministration.medication | FRCDATraitement.consumable |  |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[not(@operator='A')] |  |
| FRLMMedicationAdministration.occurrence[x] | FRCDATraitement.effectiveTime[@operator='A'] |  |
| FRLMMedicationAdministration.reason[x] | FRCDATraitement.entryRelationship:frTraitement.entryRelationship:frReferenceInterne |  |
| FRLMMedicationAdministration.dosageInstructions.renderedDosageInstruction | FRCDATraitement.text |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.sequence |  |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.note | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitement.doseQuantity |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitement.rateQuantity |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitement.effectiveTime.frequency |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency.period | FRCDATraitement.effectiveTime.period |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitement.precondition |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.date[x] | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.duration | FRCDATraitement.effectiveTime |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.eventTime | FRCDATraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.bodySite | FRCDATraitement.approachSiteCode |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitement.routeCode |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitement.maxDoseQuantity |  |
| FRLMMedicationAdministration.note | FRCDATraitement.text |  |
| **FRLMMedicationAdministration** | **FRMedicationAdministrationDocument** |  |
| FRLMMedicationAdministration.medication | FRMedicationAdministrationDocument.medication:FRMedicationDocument |  |
| FRLMMedicationAdministration.occurrence[x] | FRMedicationAdministrationDocument.effectivePeriod |  |
| FRLMMedicationAdministration.occurrence[x] | FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5 |  |
| FRLMMedicationAdministration.reason[x] | FRMedicationAdministrationDocument.reasonReference |  |
| FRLMMedicationAdministration.reason[x] | FRMedicationAdministrationDocument.reasonCode |  |
| FRLMMedicationAdministration.dosage | FRMedicationAdministrationDocument.dosage |  |
| FRLMMedicationAdministration.dosage.renderedDosageInstruction | FRMedicationAdministrationDocument.dosage.text |  |
| FRLMMedicationAdministration.dosage. dosageDetails.routeOfAdministration | FRMedicationAdministrationDocument.dosage.route |  |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.dose[x] | FRMedicationAdministrationDocument.dosage.dose |  |
| FRLMMedicationAdministration.dosage. dosageDetails.doseAndRate.rate[x] | FRMedicationAdministrationDocument.dosage.rate[x] |  |
| FRLMMedicationAdministration.dosage. dosageDetails.sequence | FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension |  |
| FRLMMedicationAdministration.note | FRMedicationAdministrationDocument.note |  |
| **FRLMTraitementsAdministres** | **FRCDATraitementsAdministres** | FRCompositionDocument.section:medicationAdministration |
| FRLMTraitementsAdministres.codeSection | FRCDATraitementsAdministres.code | FRCompositionDocument.section:medicationAdministration.code |
| FRLMTraitementsAdministres.titreSection | FRCDATraitementsAdministres.title | FRCompositionDocument.section:medicationAdministration.title |
| FRLMTraitementsAdministres.blocNarratif | FRCDATraitementsAdministres.text | FRCompositionDocument.section:medicationAdministration.text |
| FRLMTraitementsAdministres.entree.traitementAdministre | FRCDATraitementsAdministres.entry.FRCDATraitement | FRCompositionDocument.section:medicationAdministration.entry:FRMedicationAdministrationDocument |
| **FRLMTraitementSortie** | **FRCDATraitementsALaSortie** | FRCompositionDocument.section:hospitalDischargeMedications |
| FRLMTraitementSortie.codeSection | FRCDATraitementsALaSortie.code | FRCompositionDocument.section:hospitalDischargeMedications.code |
| FRLMTraitementSortie.titreSection | FRCDATraitementsALaSortie.title | FRCompositionDocument.section:hospitalDischargeMedications.title |
| FRLMTraitementSortie.blocNarratif | FRCDATraitementsALaSortie.text | FRCompositionDocument.section:hospitalDischargeMedications.text |
| FRLMTraitementSortie.entree.traitementSortie | FRCDATraitementsALaSortie.entry.FRCDATraitement | FRCompositionDocument.section:hospitalDischargeMedications.entry:FRMedicationAdministrationDocument |
| **FRLMTraitements** | **FRCDATraitements** | FRCompositionDocument.section:medications |
| FRLMTraitements.codeSection | FRCDATraitements.code | FRCompositionDocument.section:medications.code |
| FRLMTraitements.titreSection | FRCDATraitements.title | FRCompositionDocument.section:medications.title |
| FRLMTraitements.blocNarratif | FRCDATraitements.text | FRCompositionDocument.section:medications.text |
| FRLMTraitements.entree.traitements | FRCDATraitements.entry:FRCDATraitement | FRCompositionDocument.section:medications.entry:FRMedicationAdministrationDocument |
| **FRLMDeviceUse** | **FRCDADispositifMedical** |  |
| FRLMDeviceUse.header.identifier | FRCDADispositifMedical.id |  |
| FRLMDeviceUse.header.status | FRCDADispositifMedical.statusCode |  |
| FRLMDeviceUse.periodOfUse | FRCDADispositifMedical.effectiveTime |  |
| FRLMDeviceUse.periodOfUse.onsetDate | FRCDADispositifMedical.effectiveTime.low |  |
| FRLMDeviceUse.periodOfUse.endDate | FRCDADispositifMedical.effectiveTime.high |  |
| FRLMDeviceUse.periodOfUse.duration | FRCDADispositifMedical.expectedUseTime |  |
| FRLMDeviceUse.header.performer[x] | FRCDADispositifMedical.performer |  |
| FRLMDeviceUse.device | FRCDADispositifMedical.participant |  |
| FRLMDeviceUse.bodySite |  |  |
| FRLMDeviceUse.reason[x]:FRLMCondition | FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention |  |
| FRLMDeviceUse.reason[x]:FRLMProcedure |  |  |
| FRLMDeviceUse.note | FRCDADispositifMedical.text |  |
| **FRLMDeviceUse** | **FRDeviceUseStatementDocument** |  |
| FRLMDeviceUse.header.identifier | FRDeviceUseStatementDocument.identifier |  |
| FRLMDeviceUse.header.status | FRDeviceUseStatementDocument.status |  |
| FRLMDeviceUse.periodOfUse | FRDeviceUseStatementDocument.timingPeriod |  |
| FRLMDeviceUse.periodOfUse.onsetDate | FRDeviceUseStatementDocument.timingPeriod.start |  |
| FRLMDeviceUse.periodOfUse.endDate | FRDeviceUseStatementDocument.timingPeriod.end |  |
| FRLMDeviceUse.periodOfUse.duration | FRDeviceUseStatementDocument.timing[x] |  |
| FRLMDeviceUse.header.performer[x] | FRDeviceUseStatementDocument.extension:performer |  |
| FRLMDeviceUse.device | FRDeviceUseStatementDocument.device |  |
| FRLMDeviceUse.bodySite | FRDeviceUseStatementDocument.bodySite |  |
| FRLMDeviceUse.reason[x]:CodeableConcept | FRDeviceUseStatementDocument.reasonCode |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRDeviceUseStatementDocument.reasonReference:FRObservationALDDocument |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRDeviceUseStatementDocument.reasonReference:FRObservationWorkRelatedAccidentDocument |  |
| FRLMDeviceUse.reason[x]:FRLMObservation | FRDeviceUseStatementDocument.reasonReference:FRObservationPreventionDocument |  |
| FRLMDeviceUse.note | FRDeviceUseStatementDocument.note |  |
| **FRLMImmunisation** | **FRCDAVaccination** |  |
| FRLMImmunisation.identifiant | FRCDAVaccination.id |  |
| FRLMImmunisation.header.status | FRCDAVaccination.statusCode |  |
| FRLMImmunisation.periodOfImmunisation | FRCDAVaccination.effectiveTime |  |
| FRLMImmunisation.periodOfImmunisation.startDate | FRCDAVaccination.effectiveTime.low |  |
| FRLMImmunisation.periodOfImmunisation.endDate | FRCDAVaccination.effectiveTime.high |  |
| FRLMImmunisation.diseaseOrAgentTargeted | FRCDAVaccination.entryRelationship:frProbleme |  |
| FRLMImmunisation.administeredProduct | FRCDAVaccination.consumable:FRCDAProduitDeSante |  |
| FRLMImmunisation.route | FRCDAVaccination.routeCode |  |
| FRLMImmunisation.site | FRCDAVaccination.approachSiteCode |  |
| FRLMImmunisation.doseQuantity | FRCDAVaccination.doseQuantity |  |
| FRLMImmunisation.doseNumber | FRCDAVaccination.entryRelationship:frRangDeLaVaccination |  |
| FRLMImmunisation.note | FRCDAVaccination.entryRelationship:frCommentaireER |  |
| FRLMImmunisation.prescription | FRCDAVaccination.entryRelationship:frPrescription |  |
| FRLMImmunisation.reaction | FRCDAVaccination.entryRelationship:frProbleme |  |
| FRLMImmunisation.reasonCode |  |  |
| **FRLMImmunisation** | **FRImmunizationDocument** |  |
| FRLMImmunisation.identifiant | FRImmunizationDocument.identifier |  |
| FRLMImmunisation.header.status | FRImmunizationDocument.status |  |
| FRLMImmunisation.periodOfImmunisation | FRImmunizationDocument.occurrencePeriod |  |
| FRLMImmunisation.periodOfImmunisation.startDate | FRImmunizationDocument.occurrencePeriod.start |  |
| FRLMImmunisation.periodOfImmunisation.endDate | FRImmunizationDocument.occurrencePeriod.end |  |
| FRLMImmunisation.diseaseOrAgentTargeted | FRImmunizationDocument.protocolApplied.targetDisease |  |
| FRLMImmunisation.administeredProduct | FRImmunizationDocument.vaccineCode |  |
| FRLMImmunisation.route | FRImmunizationDocument.route |  |
| FRLMImmunisation.site | FRImmunizationDocument.site |  |
| FRLMImmunisation.doseQuantity | FRImmunizationDocument.doseQuantity |  |
| FRLMImmunisation.doseNumber | FRImmunizationDocument.protocolApplied.doseNumber |  |
| FRLMImmunisation.note | FRImmunizationDocument.note |  |
| FRLMImmunisation.prescription | FRImmunizationDocument.basedOn |  |
| FRLMImmunisation.reaction | FRImmunizationDocument.reaction |  |
| FRLMImmunisation.reasonCode | FRImmunizationDocument.reasonCode |  |
| **FRLMVaccinations** | **FRCDAVaccinations** | FRCompositionDocument.section:immunizations |
| FRLMVaccinations.codeSection | FRCDAVaccinations.code | FRCompositionDocument.section:immunizations.code |
| FRLMVaccinations.titreSection | FRCDAVaccinations.title | FRCompositionDocument.section:immunizations.title |
| FRLMVaccinations.blocNarratif | FRCDAVaccinations.text | FRCompositionDocument.section:immunizations.text |
| FRLMVaccinations.entree.vaccinations | FRCDAVaccinations.entry.FRCDAVaccination | FRCompositionDocument.section:immunizations.entry:FRImmunizationDocument |
| **FRLMDemandeExamenImagerie** | **FRCDADICOMDemandeExamen** | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument |
| FRLMDemandeExamenImagerie.titreSection | FRCDADICOMDemandeExamen.title | FRCompositionDocument.section:serviceRequest.title |
| FRLMDemandeExamenImagerie.blocNarratif | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:finaliteExamen |
| FRLMDemandeExamenImagerie.blocNarratif | FRCDADICOMDemandeExamen.text | FRCompositionDocument.section:serviceRequest.FRServiceRequestDocument.note:justificationDemande |
| **FRLMExpositionRadiations** | **FRCDADICOMExpositionAuxRadiations** | FRCompositionDocument.section:radiationExposure |
| FRLMExpositionRadiations.codeSection | FRCDADICOMExpositionAuxRadiations.code | FRCompositionDocument.section:radiationExposure.code |
| FRLMExpositionRadiations.titreSection | FRCDADICOMExpositionAuxRadiations.title | FRCompositionDocument.section:radiationExposure.title |
| FRLMExpositionRadiations.blocNarratif | FRCDADICOMExpositionAuxRadiations.text | FRCompositionDocument.section:radiationExposure.text |
| FRLMExpositionRadiations.entree.autorisationExposition | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |
| FRLMExpositionRadiations.entree.quantiteExposition | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.component |
| FRLMExpositionRadiations.entree.administrationRadiopharmaceutique | FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique | FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef |
| **FRLMHabitusModeDeVie** | **FRCDAHabitusModeDeVieSection** | FRCompositionDocument.section:socialHistory |
| FRLMHabitusModeDeVie.codeSection | FRCDAHabitusModeDeVieSection.code | FRCompositionDocument.section:socialHistory.code |
| FRLMHabitusModeDeVie.titreSection | FRCDAHabitusModeDeVieSection.title | FRCompositionDocument.section:socialHistory.title |
| FRLMHabitusModeDeVie.blocNarratif | FRCDAHabitusModeDeVieSection.text | FRCompositionDocument.section:socialHistory.text |
| FRLMHabitusModeDeVie.entree.habitusModeDeVieEntry | FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie | FRCompositionDocument.section:socialHistory.entry:FRObservationSocialHistoryDocument |
| **FRLMMultidrugResistantMicroorganismIdentification** | **FRCDAIdentificationMicroOrganismesMultiresistants** |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.identifier | FRCDAIdentificationMicroOrganismesMultiresistants.id |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.subject | FRCDAIdentificationMicroOrganismesMultiresistants.subject |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.author[x] | FRCDAIdentificationMicroOrganismesMultiresistants.author |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.performer[x] | FRCDAIdentificationMicroOrganismesMultiresistants.performer |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.participant[x] | FRCDAIdentificationMicroOrganismesMultiresistants.participant |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.informant | FRCDAIdentificationMicroOrganismesMultiresistants.informant |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.date | FRCDAIdentificationMicroOrganismesMultiresistants.author.time |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.status | FRCDAIdentificationMicroOrganismesMultiresistants.statusCode |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.language | FRCDAIdentificationMicroOrganismesMultiresistants.languageCode |  |
| FRLMMultidrugResistantMicroorganismIdentification.header.source |  |  |
| FRLMMultidrugResistantMicroorganismIdentification.observationDate | FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime |  |
| FRLMMultidrugResistantMicroorganismIdentification.type | FRCDAIdentificationMicroOrganismesMultiresistants.code |  |
| FRLMMultidrugResistantMicroorganismIdentification.result | FRCDAIdentificationMicroOrganismesMultiresistants.value |  |
| **FRLMInformationsCliniques** | **FRCDADICOMHistoriqueMedical** | FRCompositionDocument.section:history |
| FRLMInformationsCliniques.titreSection | FRCDADICOMHistoriqueMedical.title | FRCompositionDocument.section:history.title |
| FRLMInformationsCliniques.blocNarratif | FRCDADICOMHistoriqueMedical.text |  |
| FRLMInformationsCliniques.entree.antecedentsMedicaux | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux | FRCompositionDocument.section:history.entry:Observation |
| FRLMInformationsCliniques.entree.antecedentsChirurgicaux | FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux | FRCompositionDocument.section:history.entry:Observation |
| FRLMInformationsCliniques.entree.statutGrossesse | FRCDADICOMHistoriqueMedical.entry.observation:grossesse | FRCompositionDocument.section:history.entry:FRObservationPregnancyDocument |
| FRLMInformationsCliniques.entree.contreIndications | FRCDADICOMHistoriqueMedical.entry.observation:contreIndications | FRCompositionDocument.section:history.entry:FRObservationContraIndicationsImagingDocument |
| FRLMInformationsCliniques.entree.probleme |  |  |
| FRLMInformationsCliniques.entree.dispositifMedical |  |  |
| FRLMInformationsCliniques.entree.administrationProduitDeSante |  |  |
| FRLMInformationsCliniques.entree.sexeClinique |  |  |
| **FRLMQuantityExposure** | **FRCDADICOMQuantite** |  |
| FRLMQuantityExposure.header. participant[x].participantProfessional |  |  |
| FRLMQuantityExposure.type | FRCDADICOMQuantite.code |  |
| FRLMQuantityExposure.quantity | FRCDADICOMQuantite.value |  |
| FRLMQuantityExposure.bodySite | FRCDADICOMQuantite.targetSiteCode |  |
| FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier | FRCDADICOMQuantite.targetSiteCode.qualifier |  |
| **FRLMQuantityExposure** | FRObservationRadiationExposureDocument.component |  |
| FRLMQuantityExposure.header. participant[x].participantProfessional | FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition |  |
| FRLMQuantityExposure.type | FRObservationRadiationExposureDocument.component.code |  |
| FRLMQuantityExposure.quantity | FRObservationRadiationExposureDocument.component.valueQuantity |  |
| FRLMQuantityExposure.bodySite | FRObservationRadiationExposureDocument.bodySite |  |
| FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier | FRObservationRadiationExposureDocument.bodySite.extension:precisionTopographique |  |
| **FRLMResultatsExamens** | **FRCDAResultatsExamens** | FRCompositionDocument.section:Results |
| **FRLMResultatsExamensNonCode** | **FRCDAResultatsExamensNonCode** | FRCompositionDocument.section:Results |
| FRLMResultatsExamens.codeSection | FRCDAResultatsExamens.code | FRCompositionDocument.section:Results.code |
| FRLMResultatsExamensNonCode.codeSection | FRCDAResultatsExamensNonCode.code | FRCompositionDocument.section:Results.code |
| FRLMResultatsExamens.titreSection | FRCDAResultatsExamens.title | FRCompositionDocument.section:Results.title |
| FRLMResultatsExamensNonCode.titreSection | FRCDAResultatsExamensNonCode.title | FRCompositionDocument.section:Results.title |
| FRLMResultatsExamens.blocNarratif | FRCDAResultatsExamens.text | FRCompositionDocument.section:Results.text |
| FRLMResultatsExamensNonCode.blocNarratif | FRCDAResultatsExamensNonCode.text | FRCompositionDocument.section:Results.text |
| FRLMResultatsExamens.entree.actes | FRCDAResultatsExamens.entry:FRCDAActe | FRCompositionDocument.section:Results.entry:FRProcedureActDocument |
| FRLMResultatsExamens.entree.referencesExternes | FRCDAResultatsExamens.entry:FRCDAReferencesExternes | FRCompositionDocument.section:Results.entry:FRDocumentReferenceDocument |
| FRLMResultatsExamens.entree.observation | FRCDAResultatsExamens.entry:FRCDASimpleObservation | FRCompositionDocument.section:Results.entry:Observation |
| **FRLMResultatsExamenImagerie** | **FRCDADICOMResultats** | FRCompositionDocument.section:Findings |
| FRLMResultatsExamenImagerie.titreSection | FRCDADICOMResultats.title | FRCompositionDocument.section:Findings.title |
| FRLMResultatsExamenImagerie.blocNarratif | FRCDADICOMResultats.text |  |
| **FRLMResultatsLaboratoireBiologieSecondeIntention** | **FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention** | FRCompositionDocument.section:sans-sous-sections |
| FRLMResultatsLaboratoireBiologieSecondeIntention.codeSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.code | FRCompositionDocument.section:sans-sous-sections.code |
| FRLMResultatsLaboratoireBiologieSecondeIntention.titreSection | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.title | FRCompositionDocument.section:sans-sous-sections.title |
| FRLMResultatsLaboratoireBiologieSecondeIntention.blocNarratif | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.text | FRCompositionDocument.section:sans-sous-sections.text |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.observation:FRLMObservation | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDASimpleObservation | FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument |
| FRLMResultatsLaboratoireBiologieSecondeIntention.entree.documentAttache:FRLMDocumentAttache | FRCDAResultatsDeLaboratoireDeBiologieDeSecondeIntention.entry:FRCDADocumentAttache | FRCompositionDocument.section:sans-sous-sections.entry:FRDocumentReferenceDocument |
| **FRLMSignesVitaux** | **FRCDASignesVitaux** | FRCompositionDocument.section:VitalSigns |
| FRLMSignesVitaux.titreSection | FRCDASignesVitaux.title | FRCompositionDocument.section:VitalSigns.title |
| FRLMSignesVitaux.blocNarratif | FRCDASignesVitaux.text | FRCompositionDocument.section:VitalSigns.text |
| FRLMSignesVitaux.entree.signesVitauxEntry:FRLMSigneVital | FRCDASignesVitaux.entry:FRCDASignesVitauxEntry | FRCompositionDocument.section:VitalSigns.entry:FRObservationVitalSignsDocument |
| **FRLMPrescriptionItem** | **FRCDATraitementPrescrit** |  |
| FRLMPrescriptionItem.header.identifier | FRCDATraitementPrescrit.id |  |
| FRLMPrescriptionItem.header.status | FRCDATraitementPrescrit.statusCode |  |
| FRLMPrescriptionItem.header.author[x] | FRCDATraitementPrescrit.author |  |
| FRLMPrescriptionItem.statusReason[x] |  |  |
| FRLMPrescriptionItem.medication | FRCDATraitementPrescrit.consumable |  |
| FRLMPrescriptionItem.indication[x] | FRCDATraitementPrescrit.entryRelationship:frReferenceInterne |  |
| FRLMPrescriptionItem.intendedUseType |  |  |
| FRLMPrescriptionItem.periodOfUse | FRCDATraitementPrescrit.effectiveTime[not(@operator='A')] |  |
| FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction | FRCDATraitementPrescrit.entryRelationship:frTraitement.text |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.sequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.note | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.doseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.rateQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitementPrescrit.entryRelationship:frTraitement. effectiveTime.frequency |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.period | FRCDATraitementPrescrit.entryRelationship:frTraitement. effectiveTime.period |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.precondition |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.date[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.bodySite | FRCDATraitementPrescrit.entryRelationship:frTraitement.approachSiteCode |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.routeCode |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.quantityPrescribed | FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit |  |
| FRLMPrescriptionItem.validityPeriod | FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement |  |
| FRLMPrescriptionItem.substitution.allowed[x] | FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution |  |
| FRLMPrescriptionItem.substitution.reason[x] |  |  |
| FRLMPrescriptionItem.numberOfRepeats | FRCDATraitementPrescrit.repeatNumber |  |
| FRLMPrescriptionItem.minimumDispenseInterval |  |  |
| FRLMPrescriptionItem.offLabel.isOffLabelUse | FRCDATraitementPrescrit.entryRelationship:frHorsAMM |  |
| FRLMPrescriptionItem.offLabel.reason[x] |  |  |
| FRLMPrescriptionItem.note | FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur |  |
| FRLMPrescriptionItem.enRapportAvecALD | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD |  |
| FRLMPrescriptionItem.enRapportAvecAccidentTravail | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail |  |
| FRLMPrescriptionItem.enRapportAvecPrevention | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention |  |
| FRLMPrescriptionItem.nonRemboursable | FRCDATraitementPrescrit.entryRelationship:frNonRemboursable |  |
| **FRLMPrescriptionItem** | **FRMedicationRequestDocument** |  |
| FRLMPrescriptionItem.header.identifier | FRMedicationRequestDocument.identifier |  |
| FRLMPrescriptionItem.header.status | FRMedicationRequestDocument.status |  |
| FRLMPrescriptionItem.header.author[x] | FRMedicationRequestDocument.requester |  |
| FRLMPrescriptionItem.header.author[x] | FRMedicationRequestDocument.extension:FRActorExtension |  |
| FRLMPrescriptionItem.statusReason[x] | FRMedicationRequestDocument.statusReason |  |
| FRLMPrescriptionItem.medication | FRMedicationRequestDocument.medication:FRMedicationDocument |  |
| FRLMPrescriptionItem.indication[x] | FRMedicationRequestDocument.reasonReference |  |
| FRLMPrescriptionItem.intendedUseType |  |  |
| FRLMPrescriptionItem.periodOfUse |  |  |
| FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.text |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.sequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.note | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.doseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.rateQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.frequency |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.period | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime.period |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRCDATraitementPrescrit.entryRelationship:frTraitement. entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.timeOfDay | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.dateOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.conditionOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.precondition |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.date[x] | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime | FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.bodySite | FRCDATraitementPrescrit.entryRelationship:frTraitement.approachSiteCode |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.routeOfAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.routeCode |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerAdministration | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxLifetimeDose | FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity |  |
| FRLMPrescriptionItem.quantityPrescribed | FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit |  |
| FRLMPrescriptionItem.validityPeriod | FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement |  |
| FRLMPrescriptionItem.substitution.allowed[x] | FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution |  |
| FRLMPrescriptionItem.substitution.reason[x] |  |  |
| FRLMPrescriptionItem.numberOfRepeats | FRCDATraitementPrescrit.repeatNumber |  |
| FRLMPrescriptionItem.minimumDispenseInterval |  |  |
| FRLMPrescriptionItem.offLabel.isOffLabelUse | FRCDATraitementPrescrit.entryRelationship:frHorsAMM |  |
| FRLMPrescriptionItem.offLabel.reason[x] |  |  |
| FRLMPrescriptionItem.note | FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur |  |
| FRLMPrescriptionItem.enRapportAvecALD | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD |  |
| FRLMPrescriptionItem.enRapportAvecAccidentTravail | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail |  |
| FRLMPrescriptionItem.enRapportAvecPrevention | FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention |  |
| FRLMPrescriptionItem.nonRemboursable | FRCDATraitementPrescrit.entryRelationship:frNonRemboursable |  |
| **FRLMPrescriptionItem** | **FRMedicationRequestDocument** |  |
| FRLMPrescriptionItem.header.identifier | FRMedicationRequestDocument.identifier |  |
| FRLMPrescriptionItem.header.status | FRMedicationRequestDocument.status |  |
| FRLMPrescriptionItem.header.author[x] | FRMedicationRequestDocument.requester |  |
| FRLMPrescriptionItem.header.author[x] | FRMedicationRequestDocument.extension:FRActorExtension |  |
| FRLMPrescriptionItem.statusReason[x] | FRMedicationRequestDocument.statusReason |  |
| FRLMPrescriptionItem.medication | FRMedicationRequestDocument.medication:FRMedicationDocument |  |
| FRLMPrescriptionItem.indication[x] | FRMedicationRequestDocument.reasonReference |  |
| FRLMPrescriptionItem.intendedUseType |  |  |
| FRLMPrescriptionItem.periodOfUse |  |  |
| FRLMPrescriptionItem.dosageInstructions | FRMedicationRequestDocument.dosageInstruction |  |
| FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction | FRMedicationRequestDocument.dosageInstruction.text |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.sequence | FRMedicationRequestDocument.dosageInstruction.sequence |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.note | FRMedicationRequestDocument.dosageInstruction.patientInstruction |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.dose[x] | FRMedicationRequestDocument.dosageInstruction. doseAndRate.dose[x] |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.doseAndRate.rate[x] | FRMedicationRequestDocument.dosageInstruction. doseAndRate.rate[x] |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency | FRMedicationRequestDocument.dosageInstruction. timing.repeat |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.numberOfTimes | FRMedicationRequestDocument.dosageInstruction. timing.repeat.frequency |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.period | FRMedicationRequestDocument.dosageInstruction. timing.repeat.period |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.dayOfWeek | FRMedicationRequestDocument.dosageInstruction. timing.repeat.dayOfWeek |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.timeOfDay | FRMedicationRequestDocument.dosageInstruction. timing.repeat.timeOfDay |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.frequency.additionalInstructions | FRMedicationRequestDocument.dosageInstruction.additionalInstruction |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.dateOfAdministration | FRMedicationRequestDocument.dosageInstruction. timing.event |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.conditionOfAdministration | FRMedicationRequestDocument.dosageInstruction.asNeededCodeableConcept |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.date[x] | FRMedicationRequestDocument.dosageInstruction. timing.repeat.bounds[x] |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration | FRMedicationRequestDocument.dosageInstruction. timing.repeat |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration.durationValue | FRMedicationRequestDocument.dosageInstruction. timing.repeat.duration |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration.durationUnit | FRMedicationRequestDocument.dosageInstruction. timing.repeat.durationUnit |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.duration.durationMax | FRMedicationRequestDocument.dosageInstruction. timing.repeat.durationMax |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime | FRMedicationRequestDocument.dosageInstruction. timing.repeat |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime.eventTimeCode | FRMedicationRequestDocument.dosageInstruction. timing.repeat.when |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventTime.offset | FRMedicationRequestDocument.dosageInstruction. timing.repeat.offset |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.eventEndSequence |  |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.bodySite | FRMedicationRequestDocument.dosageInstruction.site |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.routeOfAdministration | FRMedicationRequestDocument.dosageInstruction.route |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.quantity | FRMedicationRequestDocument.dosageInstruction. maxDosePerPeriod.numerator |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerPeriod.duration | FRMedicationRequestDocument.dosageInstruction. maxDosePerPeriod.denominator |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxDosePerAdministration | FRMedicationRequestDocument.dosageInstruction.maxDosePerAdministration |  |
| FRLMPrescriptionItem.dosageInstructions. dosageDetails.maxLifetimeDose | FRMedicationRequestDocument.dosageInstruction.maxDosePerLifetime |  |
| FRLMPrescriptionItem.quantityPrescribed | FRMedicationRequestDocument.dispenseRequest.quantity |  |
| FRLMPrescriptionItem.validityPeriod | FRMedicationRequestDocument.dispenseRequest.validityPeriod |  |
| FRLMPrescriptionItem.substitution.allowed[x] | FRMedicationRequestDocument.substitution.allowedCodeableConcept |  |
| FRLMPrescriptionItem.substitution.reason[x] | FRMedicationRequestDocument.substitution.reason |  |
| FRLMPrescriptionItem.numberOfRepeats | FRMedicationRequestDocument.dispenseRequest.numberOfRepeatsAllowed |  |
| FRLMPrescriptionItem.minimumDispenseInterval | FRMedicationRequestDocument.dispenseRequest.dispenseInterval |  |
| FRLMPrescriptionItem.offLabel.isOffLabelUse | FRMedicationRequestDocument.extension:offLabelUse |  |
| FRLMPrescriptionItem.offLabel.reason[x] |  |  |
| FRLMPrescriptionItem.note | FRMedicationRequestDocument.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5 |  |
| FRLMPrescriptionItem.enRapportAvecALD | FRMedicationRequestDocument.reasonReference:FRObservationALDDocument |  |
| FRLMPrescriptionItem.enRapportAvecAccidentTravail | FRMedicationRequestDocument.reasonReference:FRObservationWorkRelatedAccidentDocument |  |
| FRLMPrescriptionItem.enRapportAvecPrevention | FRMedicationRequestDocument.reasonReference:FRObservationPreventionDocument |  |
| FRLMPrescriptionItem.nonRemboursable | FRMedicationRequestDocument.extension:FRNotCoveredExtension |  |

