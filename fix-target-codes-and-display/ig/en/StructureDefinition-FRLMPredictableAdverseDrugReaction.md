# Logical model - FR LM Predictable Adverse Drug Reaction - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Predictable Adverse Drug Reaction 

 
Section Effets indesirables 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPredictableAdverseDrugReaction.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPredictableAdverseDrugReaction.csv), [Excel](../StructureDefinition-FRLMPredictableAdverseDrugReaction.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPredictableAdverseDrugReaction",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPredictableAdverseDrugReaction",
  "version" : "0.1.0",
  "name" : "FRLMPredictableAdverseDrugReaction",
  "title" : "Logical model - FR LM Predictable Adverse Drug Reaction",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPredictableAdverseDrugReaction",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPredictableAdverseDrugReaction",
      "path" : "FRLMPredictableAdverseDrugReaction",
      "short" : "Logical model - FR LM Predictable Adverse Drug Reaction",
      "definition" : "Section Effets indesirables"
    },
    {
      "id" : "FRLMPredictableAdverseDrugReaction.titleSection",
      "path" : "FRLMPredictableAdverseDrugReaction.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMPredictableAdverseDrugReaction.subSection",
      "path" : "FRLMPredictableAdverseDrugReaction.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMPredictableAdverseDrugReaction.entry",
      "path" : "FRLMPredictableAdverseDrugReaction.entry",
      "min" : 1
    },
    {
      "id" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent",
      "path" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent",
      "short" : "Entrée Effet indesirable",
      "definition" : "Entrée Effet indesirable",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdverseDrugReaction"
      }]
    }]
  }
}

```
