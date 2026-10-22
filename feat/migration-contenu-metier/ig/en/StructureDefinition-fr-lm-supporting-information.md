# Logical model - FR LM Supporting Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Supporting Information 

 
Section Informations Cliniques 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-supporting-information.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-supporting-information.csv), [Excel](../StructureDefinition-fr-lm-supporting-information.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-supporting-information",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information",
  "version" : "0.1.0",
  "name" : "FRLMSupportingInformation",
  "title" : "Logical model - FR LM Supporting Information",
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
  "description" : "Section Informations Cliniques",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-supporting-information",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-supporting-information",
      "path" : "fr-lm-supporting-information",
      "short" : "Logical model - FR LM Supporting Information",
      "definition" : "Section Informations Cliniques"
    },
    {
      "id" : "fr-lm-supporting-information.titleSection",
      "path" : "fr-lm-supporting-information.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-supporting-information.subSection",
      "path" : "fr-lm-supporting-information.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-supporting-information.entry",
      "path" : "fr-lm-supporting-information.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-supporting-information.entry.previousResultsInformation",
      "path" : "fr-lm-supporting-information.entry.previousResultsInformation",
      "short" : "Résultats d'examens antérieurs pertinents",
      "definition" : "Résultats d'examens antérieurs pertinents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.historyOfPastIllness",
      "path" : "fr-lm-supporting-information.entry.historyOfPastIllness",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.historyOfPastProcedures",
      "path" : "fr-lm-supporting-information.entry.historyOfPastProcedures",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.contraIndication",
      "path" : "fr-lm-supporting-information.entry.contraIndication",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.condition",
      "path" : "fr-lm-supporting-information.entry.condition",
      "short" : "Problème",
      "definition" : "Problème",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.device",
      "path" : "fr-lm-supporting-information.entry.device",
      "short" : "Dispositif médical",
      "definition" : "Dispositif médical",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device-use"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.pregnancyStatus",
      "path" : "fr-lm-supporting-information.entry.pregnancyStatus",
      "short" : "Statut grossesse",
      "definition" : "Statut grossesse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-observation"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.priorMedicationAdministration",
      "path" : "fr-lm-supporting-information.entry.priorMedicationAdministration",
      "short" : "Produits de santé administré avant l'examen d'imagerie",
      "definition" : "Produits de santé administré avant l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dicom-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-supporting-information.entry.sexForClinicalUse",
      "path" : "fr-lm-supporting-information.entry.sexForClinicalUse",
      "short" : "Sexe Clinique",
      "definition" : "Sexe Clinique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
