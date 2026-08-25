# Logical model - FR LM Corps document - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Corps document 

 
Eléments métier du corps d'un document contenant les sections du document. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMCorpsDocument.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMCorpsDocument.csv), [Excel](../StructureDefinition-FRLMCorpsDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMCorpsDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCorpsDocument",
  "version" : "0.1.0",
  "name" : "FRLMCorpsDocument",
  "title" : "Logical model - FR LM Corps document",
  "status" : "draft",
  "date" : "2026-08-25T11:34:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Eléments métier du corps d'un document contenant les sections du document.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCorpsDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMCorpsDocument",
      "path" : "FRLMCorpsDocument",
      "short" : "Logical model - FR LM Corps document",
      "definition" : "Eléments métier du corps d'un document contenant les sections du document."
    },
    {
      "id" : "FRLMCorpsDocument.alerts",
      "path" : "FRLMCorpsDocument.alerts",
      "short" : "Section Points de vigilance",
      "definition" : "Section Points de vigilance",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlerts"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.allergiesAndIntolerances",
      "path" : "FRLMCorpsDocument.allergiesAndIntolerances",
      "short" : "Section Allergies et hypersensibilités",
      "definition" : "Section Allergies et hypersensibilités",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.problems",
      "path" : "FRLMCorpsDocument.problems",
      "short" : "Section Problemès Actifs",
      "definition" : "Section Problemès Actifs",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProblems"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.medicationSummary",
      "path" : "FRLMCorpsDocument.medicationSummary",
      "short" : "Section Traitement",
      "definition" : "Section Traitement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationSummary"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.medicalDevicesAndImplants",
      "path" : "FRLMCorpsDocument.medicalDevicesAndImplants",
      "short" : "Section Dispositifs medicaux",
      "definition" : "Section Dispositifs medicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.procedures",
      "path" : "FRLMCorpsDocument.procedures",
      "short" : "Section Historique des actes",
      "definition" : "Section Historique des actes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.immunisations",
      "path" : "FRLMCorpsDocument.immunisations",
      "short" : "Section Vaccinations",
      "definition" : "Section Vaccinations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.functionalStatus",
      "path" : "FRLMCorpsDocument.functionalStatus",
      "short" : "Section Statut fonctionnel",
      "definition" : "Section Statut fonctionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFunctionalStatus"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.socialHistory",
      "path" : "FRLMCorpsDocument.socialHistory",
      "short" : "Section Habitus et modes de vie",
      "definition" : "Section Habitus et modes de vie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSocialHistory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.pregnancyHistory",
      "path" : "FRLMCorpsDocument.pregnancyHistory",
      "short" : "Section Historique des grossesses",
      "definition" : "Section Historique des grossesses",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.advanceDirectives",
      "path" : "FRLMCorpsDocument.advanceDirectives",
      "short" : "Section Directives anticipées",
      "definition" : "Section Directives anticipées",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirectives"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.observationResults",
      "path" : "FRLMCorpsDocument.observationResults",
      "short" : "Section Résultats",
      "definition" : "Section Résultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.carePlans",
      "path" : "FRLMCorpsDocument.carePlans",
      "short" : "Section Plan de Soins",
      "definition" : "Section Plan de Soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlans"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.familyMedicalHistory",
      "path" : "FRLMCorpsDocument.familyMedicalHistory",
      "short" : "Section Antécédents familiaux",
      "definition" : "Section Antécédents familiaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.historyOfPastIllness",
      "path" : "FRLMCorpsDocument.historyOfPastIllness",
      "short" : "Section Antécédents médicaux",
      "definition" : "Section Antécédents médicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.predictableAdverseDrugReactions",
      "path" : "FRLMCorpsDocument.predictableAdverseDrugReactions",
      "short" : "Section Effets indesirables",
      "definition" : "Section Effets indesirables",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPredictableAdverseDrugReaction"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.hazardousWorkingConditions",
      "path" : "FRLMCorpsDocument.hazardousWorkingConditions",
      "short" : "Section Facteurs de risque professionnels non Codé",
      "definition" : "Section Facteurs de risque professionnels non Codé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHazardousWorkingConditions"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.qrCode",
      "path" : "FRLMCorpsDocument.qrCode",
      "short" : "Section Codes à barres",
      "definition" : "Section Codes à barres",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.note",
      "path" : "FRLMCorpsDocument.note",
      "short" : "Section Commentaire (Non-Codé)",
      "definition" : "Section Commentaire (Non-Codé)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMNote"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.medicationPrescriptions",
      "path" : "FRLMCorpsDocument.medicationPrescriptions",
      "short" : "Section Prescription médicaments",
      "definition" : "Section Prescription médicaments",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.medicalDevicePrescriptions",
      "path" : "FRLMCorpsDocument.medicalDevicePrescriptions",
      "short" : "Section Prescription de dispositifs médicaux",
      "definition" : "Section Prescription de dispositifs médicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.presentedForm",
      "path" : "FRLMCorpsDocument.presentedForm",
      "short" : "Section Document PDF-copie",
      "definition" : "Section Document PDF-copie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.attachments",
      "path" : "FRLMCorpsDocument.attachments",
      "short" : "Section Documents ajoutés",
      "definition" : "Section Documents ajoutés",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.travelHistory",
      "path" : "FRLMCorpsDocument.travelHistory",
      "short" : "Section Historique des voyages",
      "definition" : "Section Historique des voyages",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionTravelHistory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.patientStory",
      "path" : "FRLMCorpsDocument.patientStory",
      "short" : "Section Récit du patient",
      "definition" : "Section Récit du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientStory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.addendum",
      "path" : "FRLMCorpsDocument.addendum",
      "short" : "Section Addendum",
      "definition" : "Section Addendum",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAddendum"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.vitalSigns",
      "path" : "FRLMCorpsDocument.vitalSigns",
      "short" : "Section Signes vitaux",
      "definition" : "Section Signes vitaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMVitalSigns"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.resultData",
      "path" : "FRLMCorpsDocument.resultData",
      "short" : "section Compte rendu de biologie de 1er niveau",
      "definition" : "section Compte rendu de biologie de 1er niveau",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.examinationReport",
      "path" : "FRLMCorpsDocument.examinationReport",
      "short" : "Section Acte d'imagerie",
      "definition" : "Section Acte d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.orderInformation",
      "path" : "FRLMCorpsDocument.orderInformation",
      "short" : "Section Demande d'examen",
      "definition" : "Section Demande d'examen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrderInformation"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.comparisonStudy",
      "path" : "FRLMCorpsDocument.comparisonStudy",
      "short" : "Section Examen comparatif",
      "definition" : "Section Examen comparatif",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMComparisonStudy"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.exposureInformation",
      "path" : "FRLMCorpsDocument.exposureInformation",
      "short" : "Section Exposition aux radiations",
      "definition" : "Section Exposition aux radiations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExposureInformation"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.supportingInformation",
      "path" : "FRLMCorpsDocument.supportingInformation",
      "short" : "Section Informations cliniques",
      "definition" : "Section Informations cliniques",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.dicomStudyMetadata",
      "path" : "FRLMCorpsDocument.dicomStudyMetadata",
      "short" : "Section object catalog",
      "definition" : "Section object catalog",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDicomStudyMetadata"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.recommendation",
      "path" : "FRLMCorpsDocument.recommendation",
      "short" : "Section Recommandation",
      "definition" : "Section Recommandation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRecommendation"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.conclusion",
      "path" : "FRLMCorpsDocument.conclusion",
      "short" : "Section Conclusion",
      "definition" : "Section Conclusion",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConclusion"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.medicationDispensations",
      "path" : "FRLMCorpsDocument.medicationDispensations",
      "short" : "Section Dispensation médicaments",
      "definition" : "Section Dispensation médicaments",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.patientEducation",
      "path" : "FRLMCorpsDocument.patientEducation",
      "short" : "Section Education du patient",
      "definition" : "Section Education du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.patientHistory",
      "path" : "FRLMCorpsDocument.patientHistory",
      "short" : "Section Historique du patient",
      "definition" : "Section Historique du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientHistory"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.reasonForReferral",
      "path" : "FRLMCorpsDocument.reasonForReferral",
      "short" : "Section Raison de la recommandation",
      "definition" : "Section Raison de la recommandation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.courseOfEncounter",
      "path" : "FRLMCorpsDocument.courseOfEncounter",
      "short" : "Section Résultats d'événements",
      "definition" : "Section Résultats d'événements",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCourseOfEncounter"
      }]
    },
    {
      "id" : "FRLMCorpsDocument.hospitalDischargeMedications",
      "path" : "FRLMCorpsDocument.hospitalDischargeMedications",
      "short" : "Section Traitement à la sortie",
      "definition" : "Section Traitement à la sortie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications"
      }]
    }]
  }
}

```
