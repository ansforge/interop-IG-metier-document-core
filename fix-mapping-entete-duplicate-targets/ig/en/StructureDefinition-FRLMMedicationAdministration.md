# Logical model- FR LM Medication Administration - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Medication Administration 

 
Traitement 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-FRLMAdverseDrugReaction.md), [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md), [Logical model - FR LM Examination Report](StructureDefinition-FRLMExaminationReport.md), [Logical model - FR LM Exposure Information](StructureDefinition-FRLMExposureInformation.md)... Show 4 more, [Logical model - FR LM Hospital Discharge Medications](StructureDefinition-FRLMHospitalDischargeMedications.md), [Logical model - FR LM Medication Summary](StructureDefinition-FRLMMedicationSummary.md), [Logical model - FR LM Medication Use](StructureDefinition-FRLMMedicationUse.md) and [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedicationAdministration.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedicationAdministration.csv), [Excel](../StructureDefinition-FRLMMedicationAdministration.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationAdministration",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
  "version" : "0.1.0",
  "name" : "FRLMMedicationAdministration",
  "title" : "Logical model- FR LM Medication Administration\t",
  "status" : "draft",
  "date" : "2026-09-03T10:35:28+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationAdministration",
      "path" : "FRLMMedicationAdministration",
      "short" : "Logical model- FR LM Medication Administration\t",
      "definition" : "Traitement"
    },
    {
      "id" : "FRLMMedicationAdministration.medication",
      "path" : "FRLMMedicationAdministration.medication",
      "short" : "Médicament",
      "definition" : "Médicament",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      }]
    },
    {
      "id" : "FRLMMedicationAdministration.occurrence[x]",
      "path" : "FRLMMedicationAdministration.occurrence[x]",
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
      "id" : "FRLMMedicationAdministration.reason[x]",
      "path" : "FRLMMedicationAdministration.reason[x]",
      "short" : "Motif du traitement",
      "definition" : "Motif du traitement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMMedicationAdministration.dosage",
      "path" : "FRLMMedicationAdministration.dosage",
      "short" : "Posologie",
      "definition" : "Posologie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
      }]
    },
    {
      "id" : "FRLMMedicationAdministration.note",
      "path" : "FRLMMedicationAdministration.note",
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
