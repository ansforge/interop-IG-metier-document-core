# Logical model - FR LM Care Plan - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Care Plan 

 
Plan de soins 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM CarePlans](StructureDefinition-fr-lm-care-plans.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md) and [Logical model - FR LM Recommendation](StructureDefinition-fr-lm-recommendation.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-care-plan)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-care-plan.csv), [Excel](../StructureDefinition-fr-lm-care-plan.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-care-plan",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plan",
  "version" : "0.1.0",
  "name" : "FRLMCarePlan",
  "title" : "Logical model - FR LM Care Plan",
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
  "description" : "Plan de soins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plan",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-care-plan",
      "path" : "fr-lm-care-plan",
      "short" : "Logical model - FR LM Care Plan",
      "definition" : "Plan de soins"
    },
    {
      "id" : "fr-lm-care-plan.header.status",
      "path" : "fr-lm-care-plan.header.status",
      "short" : "Statut du plan de soin (projet, actif, suspendu, annulé, terminé, erreur, inconnu)",
      "min" : 1
    },
    {
      "id" : "fr-lm-care-plan.addresses",
      "path" : "fr-lm-care-plan.addresses",
      "short" : "Problèmes de santé traités par ce plan",
      "definition" : "Problèmes de santé traités par ce plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-care-plan.goal",
      "path" : "fr-lm-care-plan.goal",
      "short" : "Résultat souhaité du plan",
      "definition" : "Résultat souhaité du plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-care-plan.activity",
      "path" : "fr-lm-care-plan.activity",
      "short" : "Action incluse dans ce plan de soins",
      "definition" : "Action incluse dans ce plan de soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
