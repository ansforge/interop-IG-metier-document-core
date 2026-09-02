# logical model - FR LM Procedures - FR Document Core (Modèle métier) v0.1.0

## Logical Model: logical model - FR LM Procedures 

 
Section Historique des actes 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMProcedures.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMProcedures.csv), [Excel](../StructureDefinition-FRLMProcedures.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMProcedures",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures",
  "version" : "0.1.0",
  "name" : "FRLMProcedures",
  "title" : "logical model - FR LM Procedures",
  "status" : "draft",
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Historique des actes",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedures",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMProcedures",
      "path" : "FRLMProcedures",
      "short" : "logical model - FR LM Procedures",
      "definition" : "Section Historique des actes"
    },
    {
      "id" : "FRLMProcedures.titleSection",
      "path" : "FRLMProcedures.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMProcedures.subSection",
      "path" : "FRLMProcedures.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMProcedures.entry.procedure",
      "path" : "FRLMProcedures.entry.procedure",
      "short" : "Entrée Acte",
      "definition" : "Entrée Acte",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      }]
    }]
  }
}

```
