# Logical model - FR LM Patient History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Patient History 

 
Section Historique du patient 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPatientHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPatientHistory.csv), [Excel](../StructureDefinition-FRLMPatientHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPatientHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientHistory",
  "version" : "0.1.0",
  "name" : "FRLMPatientHistory",
  "title" : "Logical model  - FR LM Patient History",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Historique du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPatientHistory",
      "path" : "FRLMPatientHistory",
      "short" : "Logical model  - FR LM Patient History",
      "definition" : "Section Historique du patient"
    },
    {
      "id" : "FRLMPatientHistory.titleSection",
      "path" : "FRLMPatientHistory.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMPatientHistory.subSection",
      "path" : "FRLMPatientHistory.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMPatientHistory.entry",
      "path" : "FRLMPatientHistory.entry",
      "max" : "0"
    },
    {
      "id" : "FRLMPatientHistory.note",
      "path" : "FRLMPatientHistory.note",
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
