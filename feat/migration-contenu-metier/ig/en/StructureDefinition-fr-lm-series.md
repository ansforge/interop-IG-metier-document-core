# Logical model - FR LM Series - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Series 

 
Séries d'actes d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-series.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-series.csv), [Excel](../StructureDefinition-fr-lm-series.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-series",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-series",
  "version" : "0.1.0",
  "name" : "FRLMSeries",
  "title" : "Logical model - FR LM Series",
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
  "description" : "Séries d'actes d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-series",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-series",
      "path" : "fr-lm-series",
      "short" : "Logical model - FR LM Series",
      "definition" : "Séries d'actes d'imagerie"
    },
    {
      "id" : "fr-lm-series.seriesUid",
      "path" : "fr-lm-series.seriesUid",
      "short" : "DICOM UUID instance de la série",
      "definition" : "DICOM UUID instance de la série",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-series.number",
      "path" : "fr-lm-series.number",
      "short" : "identfiant numérique de la série",
      "definition" : "identfiant numérique de la série",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-series.seriesModality",
      "path" : "fr-lm-series.seriesModality",
      "short" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "definition" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modalite-acquisition-cisis : Modalité d'imagerie",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis|20260420150250"
      }
    },
    {
      "id" : "fr-lm-series.bodySite",
      "path" : "fr-lm-series.bodySite",
      "short" : "Localisations anatomiques",
      "definition" : "Localisations anatomiques",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-series.specimen",
      "path" : "fr-lm-series.specimen",
      "short" : "Spécimen associé à la série",
      "definition" : "Spécimen associé à la série",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-series.numberOfInstances",
      "path" : "fr-lm-series.numberOfInstances",
      "short" : "Nombre d'instances d'imagerie composant l'examen",
      "definition" : "Nombre d'instances d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-series.seriesEndpoint",
      "path" : "fr-lm-series.seriesEndpoint",
      "short" : "Endpoint de l'examen d'imagerie",
      "definition" : "Endpoint de l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-endpoint"
      }]
    },
    {
      "id" : "fr-lm-series.started",
      "path" : "fr-lm-series.started",
      "short" : "Date de début de la série d'actes",
      "definition" : "Date de début de la série d'actes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-series.instanceSOP",
      "path" : "fr-lm-series.instanceSOP",
      "short" : "SOP instance",
      "definition" : "SOP instance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-sop-instance"
      }]
    }]
  }
}

```
