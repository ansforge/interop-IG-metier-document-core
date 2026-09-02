# Logical model - FR LM QR Code - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM QR Code 

 
Section Codes à barres 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMQRCode)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMQRCode.csv), [Excel](../StructureDefinition-FRLMQRCode.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMQRCode",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode",
  "version" : "0.1.0",
  "name" : "FRLMQRCode",
  "title" : "Logical model - FR LM QR Code",
  "status" : "draft",
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Codes à barres",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMQRCode",
      "path" : "FRLMQRCode",
      "short" : "Logical model - FR LM QR Code",
      "definition" : "Section Codes à barres"
    },
    {
      "id" : "FRLMQRCode.subSection",
      "path" : "FRLMQRCode.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMQRCode.entry.observationMedia",
      "path" : "FRLMQRCode.entry.observationMedia",
      "short" : "Codes à barres : Entrée Image illustrative",
      "definition" : "Codes à barres : Entrée Image illustrative",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
      }]
    }]
  }
}

```
