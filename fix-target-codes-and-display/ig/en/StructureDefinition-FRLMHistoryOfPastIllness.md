# Logical model - FR LM FRLM History Of Past Illness - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM FRLM History Of Past Illness 

 
Section Antécédents médicaux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMHistoryOfPastIllness.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMHistoryOfPastIllness.csv), [Excel](../StructureDefinition-FRLMHistoryOfPastIllness.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHistoryOfPastIllness",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
  "version" : "0.1.0",
  "name" : "FRLMHistoryOfPastIllness",
  "title" : "Logical model - FR LM FRLM History Of Past Illness",
  "status" : "draft",
  "date" : "2026-08-24T13:13:01+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Antécédents médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHistoryOfPastIllness",
      "path" : "FRLMHistoryOfPastIllness",
      "short" : "Logical model - FR LM FRLM History Of Past Illness",
      "definition" : "Section Antécédents médicaux"
    },
    {
      "id" : "FRLMHistoryOfPastIllness.titleSection",
      "path" : "FRLMHistoryOfPastIllness.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMHistoryOfPastIllness.subSection",
      "path" : "FRLMHistoryOfPastIllness.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMHistoryOfPastIllness.entry",
      "path" : "FRLMHistoryOfPastIllness.entry",
      "min" : 1
    },
    {
      "id" : "FRLMHistoryOfPastIllness.entry.problem",
      "path" : "FRLMHistoryOfPastIllness.entry.problem",
      "short" : "Entrée Problème",
      "definition" : "Entrée Problème",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    }]
  }
}

```
