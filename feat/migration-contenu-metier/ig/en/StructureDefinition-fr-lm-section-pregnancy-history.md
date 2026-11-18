# Logical model - FR LM Pregnancy History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Pregnancy History 

 
Section Historique des grossesses 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-section-pregnancy-history.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-section-pregnancy-history.csv), [Excel](../StructureDefinition-fr-lm-section-pregnancy-history.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-section-pregnancy-history",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-pregnancy-history",
  "version" : "0.1.0",
  "name" : "FRLMSectionPregnancyHistory",
  "title" : "Logical model  - FR LM Pregnancy History",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section-pregnancy-history",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-section-pregnancy-history",
      "path" : "fr-lm-section-pregnancy-history",
      "short" : "Logical model  - FR LM Pregnancy History",
      "definition" : "Section Historique des grossesses"
    },
    {
      "id" : "fr-lm-section-pregnancy-history.titleSection",
      "path" : "fr-lm-section-pregnancy-history.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-section-pregnancy-history.subSection",
      "path" : "fr-lm-section-pregnancy-history.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-section-pregnancy-history.entry.pregnancyStatus",
      "path" : "fr-lm-section-pregnancy-history.entry.pregnancyStatus",
      "short" : "Statut de grossesse",
      "definition" : "Statut de grossesse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-status"
      }]
    },
    {
      "id" : "fr-lm-section-pregnancy-history.entry.pregnancyHistory",
      "path" : "fr-lm-section-pregnancy-history.entry.pregnancyHistory",
      "short" : "Historique des grossesses. Exemple : nb d'enfants nés vivants, etc…",
      "definition" : "Historique des grossesses. Exemple : nb d'enfants nés vivants, etc…",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-history"
      }]
    },
    {
      "id" : "fr-lm-section-pregnancy-history.note",
      "path" : "fr-lm-section-pregnancy-history.note",
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
