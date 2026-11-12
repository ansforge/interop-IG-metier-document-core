# Logical model - FR LM Predictable Adverse Drug Reaction - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Predictable Adverse Drug Reaction 

 
Section Effets indesirables 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-predictable-adverse-drug-reaction.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-predictable-adverse-drug-reaction.csv), [Excel](../StructureDefinition-fr-lm-predictable-adverse-drug-reaction.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-predictable-adverse-drug-reaction",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-predictable-adverse-drug-reaction",
  "version" : "0.1.0",
  "name" : "FRLMPredictableAdverseDrugReaction",
  "title" : "Logical model - FR LM Predictable Adverse Drug Reaction",
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
  "description" : "Section Effets indesirables",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-predictable-adverse-drug-reaction",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-predictable-adverse-drug-reaction",
      "path" : "fr-lm-predictable-adverse-drug-reaction",
      "short" : "Logical model - FR LM Predictable Adverse Drug Reaction",
      "definition" : "Section Effets indesirables"
    },
    {
      "id" : "fr-lm-predictable-adverse-drug-reaction.titleSection",
      "path" : "fr-lm-predictable-adverse-drug-reaction.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-predictable-adverse-drug-reaction.subSection",
      "path" : "fr-lm-predictable-adverse-drug-reaction.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-predictable-adverse-drug-reaction.entry",
      "path" : "fr-lm-predictable-adverse-drug-reaction.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-predictable-adverse-drug-reaction.entry.adverseEvent",
      "path" : "fr-lm-predictable-adverse-drug-reaction.entry.adverseEvent",
      "short" : "Entrée Effet indesirable",
      "definition" : "Entrée Effet indesirable",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction"
      }]
    }]
  }
}

```
