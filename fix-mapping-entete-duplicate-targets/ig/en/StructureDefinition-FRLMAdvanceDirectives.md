# Logical model - FR LM Advance Directives - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Advance Directives 

 
Section Directives anticipées 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAdvanceDirectives.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAdvanceDirectives.csv), [Excel](../StructureDefinition-FRLMAdvanceDirectives.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAdvanceDirectives",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirectives",
  "version" : "0.1.0",
  "name" : "FRLMAdvanceDirectives",
  "title" : "Logical model - FR LM Advance Directives",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Directives anticipées",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirectives",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAdvanceDirectives",
      "path" : "FRLMAdvanceDirectives",
      "short" : "Logical model - FR LM Advance Directives",
      "definition" : "Section Directives anticipées"
    },
    {
      "id" : "FRLMAdvanceDirectives.titleSection",
      "path" : "FRLMAdvanceDirectives.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMAdvanceDirectives.subSection",
      "path" : "FRLMAdvanceDirectives.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAdvanceDirectives.entry.advanceDirective",
      "path" : "FRLMAdvanceDirectives.entry.advanceDirective",
      "short" : "Entrée Directive anticipée",
      "definition" : "Entrée Directive anticipée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective"
      }]
    }]
  }
}

```
