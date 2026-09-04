# Logical model - FR LM Conclusion - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Conclusion 

 
Section Conclusion 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md) and [Logical model - FR LM Examination Report](StructureDefinition-FRLMExaminationReport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMConclusion.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMConclusion.csv), [Excel](../StructureDefinition-FRLMConclusion.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMConclusion",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConclusion",
  "version" : "0.1.0",
  "name" : "FRLMConclusion",
  "title" : "Logical model - FR LM Conclusion",
  "status" : "draft",
  "date" : "2026-09-04T14:19:44+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConclusion",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMConclusion",
      "path" : "FRLMConclusion",
      "short" : "Logical model - FR LM Conclusion",
      "definition" : "Section Conclusion"
    },
    {
      "id" : "FRLMConclusion.titleSection",
      "path" : "FRLMConclusion.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMConclusion.description",
      "path" : "FRLMConclusion.description",
      "short" : "Conclusions"
    },
    {
      "id" : "FRLMConclusion.subSection",
      "path" : "FRLMConclusion.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMConclusion.entry.conditionOrFinding[x]",
      "path" : "FRLMConclusion.entry.conditionOrFinding[x]",
      "short" : "Conditions ou observations associées aux conclusions",
      "definition" : "Conditions ou observations associées aux conclusions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
