# Logical model - FR LM Patient Story - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Patient Story 

 
Récit du patient 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-patient-story.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-patient-story.csv), [Excel](../StructureDefinition-fr-lm-patient-story.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-patient-story",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-story",
  "version" : "0.1.0",
  "name" : "FRLMPatientStory",
  "title" : "Logical model - FR LM Patient Story",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-story",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-patient-story",
      "path" : "fr-lm-patient-story",
      "short" : "Logical model - FR LM Patient Story",
      "definition" : "Récit du patient"
    },
    {
      "id" : "fr-lm-patient-story.titleSection",
      "path" : "fr-lm-patient-story.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-patient-story.subSection",
      "path" : "fr-lm-patient-story.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-patient-story.entry",
      "path" : "fr-lm-patient-story.entry",
      "max" : "0"
    },
    {
      "id" : "fr-lm-patient-story.note",
      "path" : "fr-lm-patient-story.note",
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
