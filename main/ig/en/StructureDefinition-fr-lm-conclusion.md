# Logical model - FR LM Conclusion - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Conclusion 

 
Section Conclusion 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md) and [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-conclusion.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-conclusion.csv), [Excel](../StructureDefinition-fr-lm-conclusion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-conclusion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion",
  "version" : "0.1.0",
  "name" : "FRLMConclusion",
  "title" : "Logical model - FR LM Conclusion",
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
  "description" : "Section Conclusion",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-conclusion",
      "path" : "fr-lm-conclusion",
      "short" : "Logical model - FR LM Conclusion",
      "definition" : "Section Conclusion"
    },
    {
      "id" : "fr-lm-conclusion.titleSection",
      "path" : "fr-lm-conclusion.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-conclusion.description",
      "path" : "fr-lm-conclusion.description",
      "short" : "Conclusions"
    },
    {
      "id" : "fr-lm-conclusion.subSection",
      "path" : "fr-lm-conclusion.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-conclusion.entry.conditionOrFinding[x]",
      "path" : "fr-lm-conclusion.entry.conditionOrFinding[x]",
      "short" : "Conditions ou observations associées aux conclusions",
      "definition" : "Conditions ou observations associées aux conclusions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    }]
  }
}

```
