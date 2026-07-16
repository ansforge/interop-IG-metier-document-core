# Logical model - FR LM ObservationMedia - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM ObservationMedia 

 
Image illustrative. 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md), [Logical model - FR LM QR Code](StructureDefinition-fr-lm-qr-code.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-observation-media.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-observation-media.csv), [Excel](../StructureDefinition-fr-lm-observation-media.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-observation-media",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media",
  "version" : "0.1.0",
  "name" : "FRLMObservationMedia",
  "title" : "Logical model - FR LM ObservationMedia",
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
  "description" : "Image illustrative.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-observation-media",
      "path" : "fr-lm-observation-media",
      "short" : "Logical model - FR LM ObservationMedia",
      "definition" : "Image illustrative."
    },
    {
      "id" : "fr-lm-observation-media.content",
      "path" : "fr-lm-observation-media.content",
      "short" : "Image encodée en Base64",
      "definition" : "Image encodée en Base64",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment"
      }]
    },
    {
      "id" : "fr-lm-observation-media.content.contentType",
      "path" : "fr-lm-observation-media.content.contentType",
      "min" : 1
    },
    {
      "id" : "fr-lm-observation-media.content.data",
      "path" : "fr-lm-observation-media.content.data",
      "min" : 1
    },
    {
      "id" : "fr-lm-observation-media.subject[x]",
      "path" : "fr-lm-observation-media.subject[x]",
      "short" : "Patient ou spécimen concerné par l’image",
      "definition" : "Patient ou spécimen concerné par l’image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient|0.1.0",
        "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen|0.1.0"]
      }]
    },
    {
      "id" : "fr-lm-observation-media.note",
      "path" : "fr-lm-observation-media.note",
      "short" : "Précondition",
      "definition" : "Précondition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
