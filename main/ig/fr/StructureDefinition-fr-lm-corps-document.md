# Logical model - FR LM Corps document - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Corps document 

 
Eléments métier du corps d'un document contenant les sections du document. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-corps-document)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-corps-document.csv), [Excel](../StructureDefinition-fr-lm-corps-document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-corps-document",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-corps-document",
  "version" : "0.1.0",
  "name" : "FRLMCorpsDocument",
  "title" : "Logical model - FR LM Corps document",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-corps-document",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-corps-document",
      "path" : "fr-lm-corps-document",
      "short" : "Logical model - FR LM Corps document",
      "definition" : "Eléments métier du corps d'un document contenant les sections du document."
    },
    {
      "id" : "fr-lm-corps-document.alerts",
      "path" : "fr-lm-corps-document.alerts",
      "short" : "Section Points de vigilance",
      "definition" : "Section Points de vigilance",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alerts"
      }]
    },
    {
      "id" : "fr-lm-corps-document.allergiesAndIntolerances",
      "path" : "fr-lm-corps-document.allergiesAndIntolerances",
      "short" : "Section Allergies et hypersensibilités",
      "definition" : "Section Allergies et hypersensibilités",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergies-and-intolerances"
      }]
    },
    {
      "id" : "fr-lm-corps-document.problems",
      "path" : "fr-lm-corps-document.problems",
      "short" : "Section Problemès Actifs",
      "definition" : "Section Problemès Actifs",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-problems"
      }]
    },
    {
      "id" : "fr-lm-corps-document.medicationSummary",
      "path" : "fr-lm-corps-document.medicationSummary",
      "short" : "Section Traitement",
      "definition" : "Section Traitement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-summary"
      }]
    },
    {
      "id" : "fr-lm-corps-document.medicalDevicesAndImplants",
      "path" : "fr-lm-corps-document.medicalDevicesAndImplants",
      "short" : "Section Dispositifs medicaux",
      "definition" : "Section Dispositifs medicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medical-devices-and-implants"
      }]
    },
    {
      "id" : "fr-lm-corps-document.procedures",
      "path" : "fr-lm-corps-document.procedures",
      "short" : "Section Historique des actes",
      "definition" : "Section Historique des actes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedures"
      }]
    },
    {
      "id" : "fr-lm-corps-document.immunisations",
      "path" : "fr-lm-corps-document.immunisations",
      "short" : "Section Vaccinations",
      "definition" : "Section Vaccinations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisations"
      }]
    },
    {
      "id" : "fr-lm-corps-document.functionalStatus",
      "path" : "fr-lm-corps-document.functionalStatus",
      "short" : "Section Statut fonctionnel",
      "definition" : "Section Statut fonctionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-functional-status"
      }]
    },
    {
      "id" : "fr-lm-corps-document.socialHistory",
      "path" : "fr-lm-corps-document.socialHistory",
      "short" : "Section Habitus et modes de vie",
      "definition" : "Section Habitus et modes de vie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-social-history"
      }]
    },
    {
      "id" : "fr-lm-corps-document.pregnancyHistory",
      "path" : "fr-lm-corps-document.pregnancyHistory",
      "short" : "Section Historique des grossesses",
      "definition" : "Section Historique des grossesses",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-pregnancy-history"
      }]
    },
    {
      "id" : "fr-lm-corps-document.advanceDirectives",
      "path" : "fr-lm-corps-document.advanceDirectives",
      "short" : "Section Directives anticipées",
      "definition" : "Section Directives anticipées",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-advance-directives"
      }]
    },
    {
      "id" : "fr-lm-corps-document.observationResults",
      "path" : "fr-lm-corps-document.observationResults",
      "short" : "Section Résultats",
      "definition" : "Section Résultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-results"
      }]
    },
    {
      "id" : "fr-lm-corps-document.carePlans",
      "path" : "fr-lm-corps-document.carePlans",
      "short" : "Section Plan de Soins",
      "definition" : "Section Plan de Soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plans"
      }]
    },
    {
      "id" : "fr-lm-corps-document.familyMedicalHistory",
      "path" : "fr-lm-corps-document.familyMedicalHistory",
      "short" : "Section Antécédents familiaux",
      "definition" : "Section Antécédents familiaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-family-medical-history"
      }]
    },
    {
      "id" : "fr-lm-corps-document.historyOfPastIllness",
      "path" : "fr-lm-corps-document.historyOfPastIllness",
      "short" : "Section Antécédents médicaux",
      "definition" : "Section Antécédents médicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-history-of-past-illness"
      }]
    },
    {
      "id" : "fr-lm-corps-document.predictableAdverseDrugReactions",
      "path" : "fr-lm-corps-document.predictableAdverseDrugReactions",
      "short" : "Section Effets indesirables",
      "definition" : "Section Effets indesirables",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-predictable-adverse-drug-reaction"
      }]
    },
    {
      "id" : "fr-lm-corps-document.hazardousWorkingConditions",
      "path" : "fr-lm-corps-document.hazardousWorkingConditions",
      "short" : "Section Facteurs de risque professionnels non Codé",
      "definition" : "Section Facteurs de risque professionnels non Codé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions"
      }]
    },
    {
      "id" : "fr-lm-corps-document.qrCode",
      "path" : "fr-lm-corps-document.qrCode",
      "short" : "Section Codes à barres",
      "definition" : "Section Codes à barres",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-qr-code"
      }]
    },
    {
      "id" : "fr-lm-corps-document.note",
      "path" : "fr-lm-corps-document.note",
      "short" : "Section Commentaire (Non-Codé)",
      "definition" : "Section Commentaire (Non-Codé)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-note"
      }]
    },
    {
      "id" : "fr-lm-corps-document.medicationPrescriptions",
      "path" : "fr-lm-corps-document.medicationPrescriptions",
      "short" : "Section Prescription médicaments",
      "definition" : "Section Prescription médicaments",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-prescription"
      }]
    },
    {
      "id" : "fr-lm-corps-document.medicalDevicePrescriptions",
      "path" : "fr-lm-corps-document.medicalDevicePrescriptions",
      "short" : "Section Prescription de dispositifs médicaux",
      "definition" : "Section Prescription de dispositifs médicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medical-device-prescriptions"
      }]
    },
    {
      "id" : "fr-lm-corps-document.presentedForm",
      "path" : "fr-lm-corps-document.presentedForm",
      "short" : "Section Document PDF-copie",
      "definition" : "Section Document PDF-copie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-presented-form"
      }]
    },
    {
      "id" : "fr-lm-corps-document.attachments",
      "path" : "fr-lm-corps-document.attachments",
      "short" : "Section Documents ajoutés",
      "definition" : "Section Documents ajoutés",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachments"
      }]
    },
    {
      "id" : "fr-lm-corps-document.travelHistory",
      "path" : "fr-lm-corps-document.travelHistory",
      "short" : "Section Historique des voyages",
      "definition" : "Section Historique des voyages",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-travel-history"
      }]
    },
    {
      "id" : "fr-lm-corps-document.patientStory",
      "path" : "fr-lm-corps-document.patientStory",
      "short" : "Section Récit du patient",
      "definition" : "Section Récit du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-story"
      }]
    },
    {
      "id" : "fr-lm-corps-document.addendum",
      "path" : "fr-lm-corps-document.addendum",
      "short" : "Section Addendum",
      "definition" : "Section Addendum",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-addendum"
      }]
    },
    {
      "id" : "fr-lm-corps-document.vitalSigns",
      "path" : "fr-lm-corps-document.vitalSigns",
      "short" : "Section Signes vitaux",
      "definition" : "Section Signes vitaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-vital-signs"
      }]
    },
    {
      "id" : "fr-lm-corps-document.resultData",
      "path" : "fr-lm-corps-document.resultData",
      "short" : "section Compte rendu de biologie de 1er niveau",
      "definition" : "section Compte rendu de biologie de 1er niveau",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-result-data"
      }]
    },
    {
      "id" : "fr-lm-corps-document.examinationReport",
      "path" : "fr-lm-corps-document.examinationReport",
      "short" : "Section Acte d'imagerie",
      "definition" : "Section Acte d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-examination-report"
      }]
    },
    {
      "id" : "fr-lm-corps-document.orderInformation",
      "path" : "fr-lm-corps-document.orderInformation",
      "short" : "Section Demande d'examen",
      "definition" : "Section Demande d'examen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-order-information"
      }]
    },
    {
      "id" : "fr-lm-corps-document.comparisonStudy",
      "path" : "fr-lm-corps-document.comparisonStudy",
      "short" : "Section Examen comparatif",
      "definition" : "Section Examen comparatif",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-comparison-study"
      }]
    },
    {
      "id" : "fr-lm-corps-document.exposureInformation",
      "path" : "fr-lm-corps-document.exposureInformation",
      "short" : "Section Exposition aux radiations",
      "definition" : "Section Exposition aux radiations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-exposure-information"
      }]
    },
    {
      "id" : "fr-lm-corps-document.supportingInformation",
      "path" : "fr-lm-corps-document.supportingInformation",
      "short" : "Section Informations cliniques",
      "definition" : "Section Informations cliniques",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information"
      }]
    },
    {
      "id" : "fr-lm-corps-document.dicomStudyMetadata",
      "path" : "fr-lm-corps-document.dicomStudyMetadata",
      "short" : "Section object catalog",
      "definition" : "Section object catalog",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dicom-study-metadata"
      }]
    },
    {
      "id" : "fr-lm-corps-document.recommendation",
      "path" : "fr-lm-corps-document.recommendation",
      "short" : "Section Recommandation",
      "definition" : "Section Recommandation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-recommendation"
      }]
    },
    {
      "id" : "fr-lm-corps-document.conclusion",
      "path" : "fr-lm-corps-document.conclusion",
      "short" : "Section Conclusion",
      "definition" : "Section Conclusion",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion"
      }]
    },
    {
      "id" : "fr-lm-corps-document.medicationDispensations",
      "path" : "fr-lm-corps-document.medicationDispensations",
      "short" : "Section Dispensation médicaments",
      "definition" : "Section Dispensation médicaments",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-dispensations"
      }]
    },
    {
      "id" : "fr-lm-corps-document.patientEducation",
      "path" : "fr-lm-corps-document.patientEducation",
      "short" : "Section Education du patient",
      "definition" : "Section Education du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education"
      }]
    },
    {
      "id" : "fr-lm-corps-document.patientHistory",
      "path" : "fr-lm-corps-document.patientHistory",
      "short" : "Section Historique du patient",
      "definition" : "Section Historique du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-history"
      }]
    },
    {
      "id" : "fr-lm-corps-document.reasonForReferral",
      "path" : "fr-lm-corps-document.reasonForReferral",
      "short" : "Section Raison de la recommandation",
      "definition" : "Section Raison de la recommandation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-reason-for-referral"
      }]
    },
    {
      "id" : "fr-lm-corps-document.courseOfEncounter",
      "path" : "fr-lm-corps-document.courseOfEncounter",
      "short" : "Section Résultats d'événements",
      "definition" : "Section Résultats d'événements",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-course-of-encounter"
      }]
    },
    {
      "id" : "fr-lm-corps-document.hospitalDischargeMedications",
      "path" : "fr-lm-corps-document.hospitalDischargeMedications",
      "short" : "Section Traitement à la sortie",
      "definition" : "Section Traitement à la sortie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hospital-discharge-medications"
      }]
    }]
  }
}

```
