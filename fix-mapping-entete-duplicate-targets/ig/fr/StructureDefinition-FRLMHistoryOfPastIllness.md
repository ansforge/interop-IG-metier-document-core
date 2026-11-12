# Logical model - FR LM FRLM History Of Past Illness - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM FRLM History Of Past Illness 

 
Section Antécédents médicaux 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMHistoryOfPastIllness)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMHistoryOfPastIllness.csv), [Excel](../StructureDefinition-FRLMHistoryOfPastIllness.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHistoryOfPastIllness",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
  "version" : "0.1.0",
  "name" : "FRLMHistoryOfPastIllness",
  "title" : "Logical model - FR LM FRLM History Of Past Illness",
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
  "description" : "Section Antécédents médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHistoryOfPastIllness",
      "path" : "FRLMHistoryOfPastIllness",
      "short" : "Logical model - FR LM FRLM History Of Past Illness",
      "definition" : "Section Antécédents médicaux"
    },
    {
      "id" : "FRLMHistoryOfPastIllness.titleSection",
      "path" : "FRLMHistoryOfPastIllness.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMHistoryOfPastIllness.subSection",
      "path" : "FRLMHistoryOfPastIllness.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMHistoryOfPastIllness.entry",
      "path" : "FRLMHistoryOfPastIllness.entry",
      "min" : 1
    },
    {
      "id" : "FRLMHistoryOfPastIllness.entry.problem",
      "path" : "FRLMHistoryOfPastIllness.entry.problem",
      "short" : "Entrée Problème",
      "definition" : "Entrée Problème",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    }]
  }
}

```
