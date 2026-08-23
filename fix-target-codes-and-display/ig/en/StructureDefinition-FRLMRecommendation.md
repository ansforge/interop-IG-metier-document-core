# Logical model - FR LM Recommendation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Recommendation 

 
Section Recommandation 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMRecommendation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMRecommendation.csv), [Excel](../StructureDefinition-FRLMRecommendation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMRecommendation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRecommendation",
  "version" : "0.1.0",
  "name" : "FRLMRecommendation",
  "title" : "Logical model - FR LM Recommendation",
  "status" : "draft",
  "date" : "2026-08-23T21:45:18+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Recommandation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRecommendation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMRecommendation",
      "path" : "FRLMRecommendation",
      "short" : "Logical model - FR LM Recommendation",
      "definition" : "Section Recommandation"
    },
    {
      "id" : "FRLMRecommendation.titleSection",
      "path" : "FRLMRecommendation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMRecommendation.subSection",
      "path" : "FRLMRecommendation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMRecommendation.entry.carePlan",
      "path" : "FRLMRecommendation.entry.carePlan",
      "short" : "Recommandation sous forme de plan de soins",
      "definition" : "Recommandation sous forme de plan de soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan"
      }]
    }]
  }
}

```
