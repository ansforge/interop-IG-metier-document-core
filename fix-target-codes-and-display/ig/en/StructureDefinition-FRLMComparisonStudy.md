# Logical model - FR LM Comparison Study - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Comparison Study 

 
Section Comparaison d'examens d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMComparisonStudy.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMComparisonStudy.csv), [Excel](../StructureDefinition-FRLMComparisonStudy.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMComparisonStudy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMComparisonStudy",
  "version" : "0.1.0",
  "name" : "FRLMComparisonStudy",
  "title" : "Logical model - FR LM Comparison Study",
  "status" : "draft",
  "date" : "2026-08-25T11:34:21+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMComparisonStudy",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMComparisonStudy",
      "path" : "FRLMComparisonStudy",
      "short" : "Logical model - FR LM Comparison Study",
      "definition" : "Section Comparaison d'examens d'imagerie"
    },
    {
      "id" : "FRLMComparisonStudy.titleSection",
      "path" : "FRLMComparisonStudy.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMComparisonStudy.subSection",
      "path" : "FRLMComparisonStudy.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMComparisonStudy.entry",
      "path" : "FRLMComparisonStudy.entry",
      "max" : "0"
    }]
  }
}

```
