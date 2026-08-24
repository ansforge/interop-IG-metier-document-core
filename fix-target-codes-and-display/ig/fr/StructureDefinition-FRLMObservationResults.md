# Logical model - FR LM ObservationResults - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM ObservationResults 

 
Section Résultats 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMObservationResults)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMObservationResults.csv), [Excel](../StructureDefinition-FRLMObservationResults.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservationResults",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
  "version" : "0.1.0",
  "name" : "FRLMObservationResults",
  "title" : "Logical model - FR LM ObservationResults",
  "status" : "draft",
  "date" : "2026-08-24T13:13:01+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Résultats",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservationResults",
      "path" : "FRLMObservationResults",
      "short" : "Logical model - FR LM ObservationResults",
      "definition" : "Section Résultats"
    },
    {
      "id" : "FRLMObservationResults.titleSection",
      "path" : "FRLMObservationResults.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMObservationResults.subSection",
      "path" : "FRLMObservationResults.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMObservationResults.entry.observationResult",
      "path" : "FRLMObservationResults.entry.observationResult",
      "short" : "Entrée Resultats",
      "definition" : "Entrée Resultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
