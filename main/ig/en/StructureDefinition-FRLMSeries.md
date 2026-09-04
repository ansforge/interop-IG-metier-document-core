# Logical model - FR LM Series - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Series 

 
Séries d'actes d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMSeries.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMSeries.csv), [Excel](../StructureDefinition-FRLMSeries.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSeries",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries",
  "version" : "0.1.0",
  "name" : "FRLMSeries",
  "title" : "Logical model - FR LM Series",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSeries",
      "path" : "FRLMSeries",
      "short" : "Logical model - FR LM Series",
      "definition" : "Séries d'actes d'imagerie"
    },
    {
      "id" : "FRLMSeries.seriesUid",
      "path" : "FRLMSeries.seriesUid",
      "short" : "DICOM UUID instance de la série",
      "definition" : "DICOM UUID instance de la série",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMSeries.number",
      "path" : "FRLMSeries.number",
      "short" : "identfiant numérique de la série",
      "definition" : "identfiant numérique de la série",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMSeries.seriesModality",
      "path" : "FRLMSeries.seriesModality",
      "short" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "definition" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-modalite-acquisition-cisis : Modalité d'imagerie",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis|20260420150250"
      }
    },
    {
      "id" : "FRLMSeries.bodySite",
      "path" : "FRLMSeries.bodySite",
      "short" : "Localisations anatomiques",
      "definition" : "Localisations anatomiques",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMSeries.specimen",
      "path" : "FRLMSeries.specimen",
      "short" : "Spécimen associé à la série",
      "definition" : "Spécimen associé à la série",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMSeries.numberOfInstances",
      "path" : "FRLMSeries.numberOfInstances",
      "short" : "Nombre d'instances d'imagerie composant l'examen",
      "definition" : "Nombre d'instances d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMSeries.seriesEndpoint",
      "path" : "FRLMSeries.seriesEndpoint",
      "short" : "Endpoint de l'examen d'imagerie",
      "definition" : "Endpoint de l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint"
      }]
    },
    {
      "id" : "FRLMSeries.started",
      "path" : "FRLMSeries.started",
      "short" : "Date de début de la série d'actes",
      "definition" : "Date de début de la série d'actes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMSeries.instanceSOP",
      "path" : "FRLMSeries.instanceSOP",
      "short" : "SOP instance",
      "definition" : "SOP instance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance"
      }]
    }]
  }
}

```
