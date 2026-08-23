# Logical model - FR LM Attachments - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Attachments 

 
Section Documents ajoutés 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAttachments.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAttachments.csv), [Excel](../StructureDefinition-FRLMAttachments.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAttachments",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments",
  "version" : "0.1.0",
  "name" : "FRLMAttachments",
  "title" : "Logical model - FR LM Attachments",
  "status" : "draft",
  "date" : "2026-08-23T21:45:18+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Documents ajoutés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAttachments",
      "path" : "FRLMAttachments",
      "short" : "Logical model - FR LM Attachments",
      "definition" : "Section Documents ajoutés"
    },
    {
      "id" : "FRLMAttachments.subSection",
      "path" : "FRLMAttachments.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAttachments.entry.observation",
      "path" : "FRLMAttachments.entry.observation",
      "short" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
      "definition" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMAttachments.entry.attachment",
      "path" : "FRLMAttachments.entry.attachment",
      "short" : "Entrée Document attaché",
      "definition" : "Entrée Document attaché",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    }]
  }
}

```
