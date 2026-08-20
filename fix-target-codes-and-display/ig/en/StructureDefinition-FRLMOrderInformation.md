# Logical model - FR LM Order Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Order Information 

 
Section Demande d'examen d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMOrderInformation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMOrderInformation.csv), [Excel](../StructureDefinition-FRLMOrderInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMOrderInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrderInformation",
  "version" : "0.1.0",
  "name" : "FRLMOrderInformation",
  "title" : "Logical model - FR LM Order Information",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Demande d'examen d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrderInformation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMOrderInformation",
      "path" : "FRLMOrderInformation",
      "short" : "Logical model - FR LM Order Information",
      "definition" : "Section Demande d'examen d'imagerie"
    },
    {
      "id" : "FRLMOrderInformation.titleSection",
      "path" : "FRLMOrderInformation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMOrderInformation.subSection",
      "path" : "FRLMOrderInformation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMOrderInformation.entry.orderInformation",
      "path" : "FRLMOrderInformation.entry.orderInformation",
      "short" : "Entrée Demande d'examen d'imagerie",
      "definition" : "Entrée Demande d'examen d'imagerie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest"
      }]
    }]
  }
}

```
