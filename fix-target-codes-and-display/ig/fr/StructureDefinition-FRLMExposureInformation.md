# Logical model - FR LM Exposure Information - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Exposure Information 

 
Section Exposition aux radiations 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMExposureInformation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 1 élément
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 1 élément
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMExposureInformation.csv), [Excel](../StructureDefinition-FRLMExposureInformation.xlsx) 



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
  "date" : "2026-08-23T21:45:18+00:00",
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
      "id" : "FRLMExposureInformation.subSection.quantityExposure",
      "path" : "FRLMExposureInformation.subSection.quantityExposure",
      "short" : "Entrée Quantité",
      "definition" : "Entrée Quantité",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure"
      }]
    },
    {
      "id" : "FRLMExposureInformation.subSection.radiopharmaceuticalAdministration",
      "path" : "FRLMExposureInformation.subSection.radiopharmaceuticalAdministration",
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
