# Logical model - FR LM Patient Story - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Patient Story 

 
Récit du patient 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPatientStory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPatientStory.csv), [Excel](../StructureDefinition-FRLMPatientStory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPatientStory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientStory",
  "version" : "0.1.0",
  "name" : "FRLMPatientStory",
  "title" : "Logical model - FR LM Patient Story",
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
  "description" : "Récit du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientStory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPatientStory",
      "path" : "FRLMPatientStory",
      "short" : "Logical model - FR LM Patient Story",
      "definition" : "Récit du patient"
    },
    {
      "id" : "FRLMPatientStory.titleSection",
      "path" : "FRLMPatientStory.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMPatientStory.subSection",
      "path" : "FRLMPatientStory.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMPatientStory.entry",
      "path" : "FRLMPatientStory.entry",
      "max" : "0"
    },
    {
      "id" : "FRLMPatientStory.note",
      "path" : "FRLMPatientStory.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
