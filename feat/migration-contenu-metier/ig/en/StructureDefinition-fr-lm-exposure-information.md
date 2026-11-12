# Logical model - FR LM Exposure Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Exposure Information 

 
Section Exposition aux radiations 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-exposure-information.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-exposure-information.csv), [Excel](../StructureDefinition-fr-lm-exposure-information.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-exposure-information",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-exposure-information",
  "version" : "0.1.0",
  "name" : "FRLMExposureInformation",
  "title" : "Logical model - FR LM Exposure Information",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-exposure-information",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-exposure-information",
      "path" : "fr-lm-exposure-information",
      "short" : "Logical model - FR LM Exposure Information",
      "definition" : "Section Exposition aux radiations"
    },
    {
      "id" : "fr-lm-exposure-information.titleSection",
      "path" : "fr-lm-exposure-information.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-exposure-information.subSection",
      "path" : "fr-lm-exposure-information.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-exposure-information.subSection.quantityExposure",
      "path" : "fr-lm-exposure-information.subSection.quantityExposure",
      "short" : "Entrée Quantité",
      "definition" : "Entrée Quantité",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-quantity-exposure"
      }]
    },
    {
      "id" : "fr-lm-exposure-information.subSection.radiopharmaceuticalAdministration",
      "path" : "fr-lm-exposure-information.subSection.radiopharmaceuticalAdministration",
      "short" : "Entrée administration des produits radiopharmaceutiques",
      "definition" : "Entrée administration des produits radiopharmaceutiques",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    }]
  }
}

```
