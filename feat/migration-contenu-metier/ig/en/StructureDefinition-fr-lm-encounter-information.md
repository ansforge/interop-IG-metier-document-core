# Logical model - FR LM Encounter Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Encounter Information 

 
Section Informations sur la rencontre 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-encounter-information.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-encounter-information.csv), [Excel](../StructureDefinition-fr-lm-encounter-information.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-encounter-information",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter-information",
  "version" : "0.1.0",
  "name" : "FRLMEncounterInformation",
  "title" : "Logical model - FR LM Encounter Information",
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
  "description" : "Section Informations sur la rencontre",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter-information",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-encounter-information",
      "path" : "fr-lm-encounter-information",
      "short" : "Logical model - FR LM Encounter Information",
      "definition" : "Section Informations sur la rencontre"
    },
    {
      "id" : "fr-lm-encounter-information.titleSection",
      "path" : "fr-lm-encounter-information.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-encounter-information.subSection",
      "path" : "fr-lm-encounter-information.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-encounter-information.entry.encounterInformation",
      "path" : "fr-lm-encounter-information.entry.encounterInformation",
      "short" : "Entrée Informations sur la rencontre",
      "definition" : "Entrée Informations sur la rencontre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    },
    {
      "id" : "fr-lm-encounter-information.entry.note",
      "path" : "fr-lm-encounter-information.entry.note",
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
