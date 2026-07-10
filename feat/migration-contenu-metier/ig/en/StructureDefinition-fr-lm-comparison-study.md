# Logical model - FR LM Comparison Study - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Comparison Study 

 
Section Comparaison d'examens d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-comparison-study.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-comparison-study.csv), [Excel](../StructureDefinition-fr-lm-comparison-study.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-comparison-study",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-comparison-study",
  "version" : "0.1.0",
  "name" : "FRLMComparisonStudy",
  "title" : "Logical model - FR LM Comparison Study",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Comparaison d'examens d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-comparison-study",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-comparison-study",
      "path" : "fr-lm-comparison-study",
      "short" : "Logical model - FR LM Comparison Study",
      "definition" : "Section Comparaison d'examens d'imagerie"
    },
    {
      "id" : "fr-lm-comparison-study.titleSection",
      "path" : "fr-lm-comparison-study.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-comparison-study.subSection",
      "path" : "fr-lm-comparison-study.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-comparison-study.entry",
      "path" : "fr-lm-comparison-study.entry",
      "max" : "0"
    }]
  }
}

```
