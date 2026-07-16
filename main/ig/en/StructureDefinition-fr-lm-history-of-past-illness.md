# Logical model - FR LM FRLM History Of Past Illness - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM FRLM History Of Past Illness 

 
Section Antécédents médicaux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-history-of-past-illness.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-history-of-past-illness.csv), [Excel](../StructureDefinition-fr-lm-history-of-past-illness.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-history-of-past-illness",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-history-of-past-illness",
  "version" : "0.1.0",
  "name" : "FRLMHistoryOfPastIllness",
  "title" : "Logical model - FR LM FRLM History Of Past Illness",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-history-of-past-illness",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-history-of-past-illness",
      "path" : "fr-lm-history-of-past-illness",
      "short" : "Logical model - FR LM FRLM History Of Past Illness",
      "definition" : "Section Antécédents médicaux"
    },
    {
      "id" : "fr-lm-history-of-past-illness.titleSection",
      "path" : "fr-lm-history-of-past-illness.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-history-of-past-illness.subSection",
      "path" : "fr-lm-history-of-past-illness.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-history-of-past-illness.entry",
      "path" : "fr-lm-history-of-past-illness.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-history-of-past-illness.entry.problem",
      "path" : "fr-lm-history-of-past-illness.entry.problem",
      "short" : "Entrée Problème",
      "definition" : "Entrée Problème",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    }]
  }
}

```
