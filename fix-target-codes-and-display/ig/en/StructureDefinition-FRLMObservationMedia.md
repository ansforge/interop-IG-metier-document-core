# Logical model - FR LM ObservationMedia - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM ObservationMedia 

 
Image illustrative. 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-FRLMBatterieExamensBiologieMedicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-FRLMIsolatMicrobiologique.md), [Logical model - FR LM QR Code](StructureDefinition-FRLMQRCode.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMObservationMedia.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMObservationMedia.csv), [Excel](../StructureDefinition-FRLMObservationMedia.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservationMedia",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
  "version" : "0.1.0",
  "name" : "FRLMObservationMedia",
  "title" : "Logical model - FR LM ObservationMedia",
  "status" : "draft",
  "date" : "2026-08-20T15:08:45+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservationMedia",
      "path" : "FRLMObservationMedia",
      "short" : "Logical model - FR LM ObservationMedia",
      "definition" : "Image illustrative."
    },
    {
      "id" : "FRLMObservationMedia.content",
      "path" : "FRLMObservationMedia.content",
      "short" : "Image encodée en Base64",
      "definition" : "Image encodée en Base64",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    },
    {
      "id" : "FRLMObservationMedia.content.contentType",
      "path" : "FRLMObservationMedia.content.contentType",
      "min" : 1
    },
    {
      "id" : "FRLMObservationMedia.content.data",
      "path" : "FRLMObservationMedia.content.data",
      "min" : 1
    },
    {
      "id" : "FRLMObservationMedia.subject[x]",
      "path" : "FRLMObservationMedia.subject[x]",
      "short" : "Patient ou spécimen concerné par l’image",
      "definition" : "Patient ou spécimen concerné par l’image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient|0.1.0",
        "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen|0.1.0"]
      }]
    },
    {
      "id" : "FRLMObservationMedia.note",
      "path" : "FRLMObservationMedia.note",
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
