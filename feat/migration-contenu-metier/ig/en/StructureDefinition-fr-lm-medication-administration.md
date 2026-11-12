# Logical model- FR LM Medication Administration - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Medication Administration 

 
Traitement 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-fr-lm-adverse-drug-reaction.md), [Logical model - FR LM Course of encounter](StructureDefinition-fr-lm-course-of-encounter.md), [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md), [Logical model - FR LM Exposure Information](StructureDefinition-fr-lm-exposure-information.md)... Show 3 more, [Logical model - FR LM Hospital Discharge Medications](StructureDefinition-fr-lm-hospital-discharge-medications.md), [Logical model - FR LM Medication Summary](StructureDefinition-fr-lm-medication-summary.md) and [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-medication-administration.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-medication-administration.csv), [Excel](../StructureDefinition-fr-lm-medication-administration.xlsx) 



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
  "date" : "2026-07-16T15:38:50+00:00",
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
