# Logical model - FR LM Attachments - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Attachments 

 
Section Documents ajoutés 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-attachments.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-attachments.csv), [Excel](../StructureDefinition-fr-lm-attachments.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-attachments",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachments",
  "version" : "0.1.0",
  "name" : "FRLMAttachments",
  "title" : "Logical model - FR LM Attachments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachments",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-attachments",
      "path" : "fr-lm-attachments",
      "short" : "Logical model - FR LM Attachments",
      "definition" : "Section Documents ajoutés"
    },
    {
      "id" : "fr-lm-attachments.subSection",
      "path" : "fr-lm-attachments.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-attachments.entry.observation",
      "path" : "fr-lm-attachments.entry.observation",
      "short" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
      "definition" : "Entrée Simple observation : Permet d'indiquer la nature des documents ajoutés",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-attachments.entry.attachment",
      "path" : "fr-lm-attachments.entry.attachment",
      "short" : "Entrée Document attaché",
      "definition" : "Entrée Document attaché",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment"
      }]
    }]
  }
}

```
