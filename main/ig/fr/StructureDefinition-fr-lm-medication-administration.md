# Logical model- FR LM Medication Administration - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Medication Administration 

 
Traitement 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-fr-lm-adverse-drug-reaction.md), [Logical model - FR LM Course of encounter](StructureDefinition-fr-lm-course-of-encounter.md), [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md), [Logical model - FR LM Exposure Information](StructureDefinition-fr-lm-exposure-information.md)... Show 3 more, [Logical model - FR LM Hospital Discharge Medications](StructureDefinition-fr-lm-hospital-discharge-medications.md), [Logical model - FR LM Medication Summary](StructureDefinition-fr-lm-medication-summary.md) and [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-medication-administration)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-medication-administration.csv), [Excel](../StructureDefinition-fr-lm-medication-administration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-medication-administration",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration",
  "version" : "0.1.0",
  "name" : "FRLMMedicationAdministration",
  "title" : "Logical model- FR LM Medication Administration\t",
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
  "description" : "Traitement",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-medication-administration",
      "path" : "fr-lm-medication-administration",
      "short" : "Logical model- FR LM Medication Administration\t",
      "definition" : "Traitement"
    },
    {
      "id" : "fr-lm-medication-administration.medication",
      "path" : "fr-lm-medication-administration.medication",
      "short" : "Médicament",
      "definition" : "Médicament",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication"
      }]
    },
    {
      "id" : "fr-lm-medication-administration.occurrence[x]",
      "path" : "fr-lm-medication-administration.occurrence[x]",
      "short" : "date/ durée du traitement",
      "definition" : "date/ durée du traitement",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-medication-administration.reason[x]",
      "path" : "fr-lm-medication-administration.reason[x]",
      "short" : "Motif du traitement",
      "definition" : "Motif du traitement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-medication-administration.dosage",
      "path" : "fr-lm-medication-administration.dosage",
      "short" : "Posologie",
      "definition" : "Posologie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dosageInstructions"
      }]
    },
    {
      "id" : "fr-lm-medication-administration.note",
      "path" : "fr-lm-medication-administration.note",
      "short" : "Note",
      "definition" : "Note",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
