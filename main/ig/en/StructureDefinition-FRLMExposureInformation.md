# Logical model - FR LM Exposure Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Exposure Information 

 
Section Exposition aux radiations 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMExposureInformation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMExposureInformation.csv), [Excel](../StructureDefinition-FRLMExposureInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMExposureInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExposureInformation",
  "version" : "0.1.0",
  "name" : "FRLMExposureInformation",
  "title" : "Logical model - FR LM Exposure Information",
  "status" : "draft",
  "date" : "2026-09-04T14:19:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Exposition aux radiations",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExposureInformation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMExposureInformation",
      "path" : "FRLMExposureInformation",
      "short" : "Logical model - FR LM Exposure Information",
      "definition" : "Section Exposition aux radiations"
    },
    {
      "id" : "FRLMExposureInformation.titleSection",
      "path" : "FRLMExposureInformation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMExposureInformation.subSection",
      "path" : "FRLMExposureInformation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMExposureInformation.entry.quantityExposure",
      "path" : "FRLMExposureInformation.entry.quantityExposure",
      "short" : "Entrée Quantité",
      "definition" : "Entrée Quantité",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure"
      }]
    },
    {
      "id" : "FRLMExposureInformation.entry.radiopharmaceuticalAdministration",
      "path" : "FRLMExposureInformation.entry.radiopharmaceuticalAdministration",
      "short" : "Entrée administration des produits radiopharmaceutiques",
      "definition" : "Entrée administration des produits radiopharmaceutiques",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    }]
  }
}

```
