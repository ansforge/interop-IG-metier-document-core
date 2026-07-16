# Logical model - FR LM Order Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Order Information 

 
Section Demande d'examen d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-order-information.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-order-information.csv), [Excel](../StructureDefinition-fr-lm-order-information.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-order-information",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-order-information",
  "version" : "0.1.0",
  "name" : "FRLMOrderInformation",
  "title" : "Logical model - FR LM Order Information",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-order-information",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-order-information",
      "path" : "fr-lm-order-information",
      "short" : "Logical model - FR LM Order Information",
      "definition" : "Section Demande d'examen d'imagerie"
    },
    {
      "id" : "fr-lm-order-information.titleSection",
      "path" : "fr-lm-order-information.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-order-information.subSection",
      "path" : "fr-lm-order-information.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-order-information.entry.orderInformation",
      "path" : "fr-lm-order-information.entry.orderInformation",
      "short" : "Entrée Demande d'examen d'imagerie",
      "definition" : "Entrée Demande d'examen d'imagerie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
      }]
    }]
  }
}

```
