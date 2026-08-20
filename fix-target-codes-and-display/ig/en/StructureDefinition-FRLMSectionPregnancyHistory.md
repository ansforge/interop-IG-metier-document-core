# Logical model - FR LM Pregnancy History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Pregnancy History 

 
Section Historique des grossesses 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMSectionPregnancyHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMSectionPregnancyHistory.csv), [Excel](../StructureDefinition-FRLMSectionPregnancyHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSectionPregnancyHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory",
  "version" : "0.1.0",
  "name" : "FRLMSectionPregnancyHistory",
  "title" : "Logical model  - FR LM Pregnancy History",
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
  "description" : "Section Historique des grossesses",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSectionPregnancyHistory",
      "path" : "FRLMSectionPregnancyHistory",
      "short" : "Logical model  - FR LM Pregnancy History",
      "definition" : "Section Historique des grossesses"
    },
    {
      "id" : "FRLMSectionPregnancyHistory.titleSection",
      "path" : "FRLMSectionPregnancyHistory.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMSectionPregnancyHistory.subSection",
      "path" : "FRLMSectionPregnancyHistory.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMSectionPregnancyHistory.entry.pregnancyStatus",
      "path" : "FRLMSectionPregnancyHistory.entry.pregnancyStatus",
      "short" : "Statut de grossesse",
      "definition" : "Statut de grossesse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyStatus"
      }]
    },
    {
      "id" : "FRLMSectionPregnancyHistory.entry.pregnancyHistory",
      "path" : "FRLMSectionPregnancyHistory.entry.pregnancyHistory",
      "short" : "Historique des grossesses. Exemple : nb d'enfants nés vivants, etc…",
      "definition" : "Historique des grossesses. Exemple : nb d'enfants nés vivants, etc…",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyHistory"
      }]
    },
    {
      "id" : "FRLMSectionPregnancyHistory.note",
      "path" : "FRLMSectionPregnancyHistory.note",
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
