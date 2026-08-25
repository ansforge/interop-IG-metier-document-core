# Logical model - Laboratory Observation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - Laboratory Observation 

 
Résultats d'examen de biologie médicale 

**Usages:**

* Use this Logical Model: [Logical model - Laboratory Observation](StructureDefinition-FRLMLaboratoryObservation.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md) and [Logical model- FR LM Pregnancy Status](StructureDefinition-FRLMPregnancyStatus.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMLaboratoryObservation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMLaboratoryObservation.csv), [Excel](../StructureDefinition-FRLMLaboratoryObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMLaboratoryObservation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
  "version" : "0.1.0",
  "name" : "FRLMLaboratoryObservation",
  "title" : "Logical model - Laboratory Observation",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Résultats d'examen de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMLaboratoryObservation",
      "path" : "FRLMLaboratoryObservation",
      "short" : "Logical model - Laboratory Observation",
      "definition" : "Résultats d'examen de biologie médicale"
    },
    {
      "id" : "FRLMLaboratoryObservation.result",
      "path" : "FRLMLaboratoryObservation.result",
      "short" : "Résultats d'examen"
    },
    {
      "id" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "path" : "FRLMLaboratoryObservation.triggeredBy[x]",
      "short" : "Référence à l'observation ayant déclenché la réalisation de cette observation.",
      "definition" : "Référence à l'observation ayant déclenché la réalisation de cette observation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMLaboratoryObservation.testKit",
      "path" : "FRLMLaboratoryObservation.testKit",
      "short" : "Test Kit utilisé pour la réalisation de l'observation.",
      "definition" : "Test Kit utilisé pour la réalisation de l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMLaboratoryObservation.calibrator",
      "path" : "FRLMLaboratoryObservation.calibrator",
      "short" : "Identifiant du calibrateur utilisé pour la réalisation de l'observation.",
      "definition" : "Identifiant du calibrateur utilisé pour la réalisation de l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMLaboratoryObservation.accreditationStatus",
      "path" : "FRLMLaboratoryObservation.accreditationStatus",
      "short" : "Statut d'accréditation du laboratoire pour l'observation.",
      "definition" : "Statut d'accréditation du laboratoire pour l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMLaboratoryObservation.previousResults",
      "path" : "FRLMLaboratoryObservation.previousResults",
      "short" : "Résultats précédents de la même observation",
      "definition" : "Résultats précédents de la même observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      }]
    },
    {
      "id" : "FRLMLaboratoryObservation.pointOfCareTest",
      "path" : "FRLMLaboratoryObservation.pointOfCareTest",
      "short" : "Indique si l'observation est un test de point de soins ou non.",
      "definition" : "Indique si l'observation est un test de point de soins ou non.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
