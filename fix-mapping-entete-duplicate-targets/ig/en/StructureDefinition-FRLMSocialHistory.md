# Logical model - FR LM SocialHistory - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM SocialHistory 

 
Section Habitus et modes de vie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMSocialHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMSocialHistory.csv), [Excel](../StructureDefinition-FRLMSocialHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSocialHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSocialHistory",
  "version" : "0.1.0",
  "name" : "FRLMSocialHistory",
  "title" : "Logical model - FR LM SocialHistory",
  "status" : "draft",
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Habitus et modes de vie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSocialHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSocialHistory",
      "path" : "FRLMSocialHistory",
      "short" : "Logical model - FR LM SocialHistory",
      "definition" : "Section Habitus et modes de vie"
    },
    {
      "id" : "FRLMSocialHistory.titleSection",
      "path" : "FRLMSocialHistory.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMSocialHistory.subSection",
      "path" : "FRLMSocialHistory.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMSocialHistory.entry.observationSocialHistory",
      "path" : "FRLMSocialHistory.entry.observationSocialHistory",
      "short" : "Entrée Habitus, Mode de vie",
      "definition" : "Entrée Habitus, Mode de vie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationSocialHistory"
      }]
    }]
  }
}

```
