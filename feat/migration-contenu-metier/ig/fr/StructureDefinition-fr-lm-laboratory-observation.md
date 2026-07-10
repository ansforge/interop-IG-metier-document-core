# Logical model - Laboratory Observation - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - Laboratory Observation 

 
Résultats d'examen de biologie médicale 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - Laboratory Observation](StructureDefinition-fr-lm-laboratory-observation.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md) and [Logical model- FR LM Pregnancy Status](StructureDefinition-fr-lm-pregnancy-status.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-laboratory-observation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMObservation](StructureDefinition-fr-lm-observation.md) 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMObservation](StructureDefinition-fr-lm-observation.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [FRLMObservation](StructureDefinition-fr-lm-observation.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMObservation](StructureDefinition-fr-lm-observation.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-laboratory-observation.csv), [Excel](../StructureDefinition-fr-lm-laboratory-observation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-laboratory-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation",
  "version" : "0.1.0",
  "name" : "FRLMLaboratoryObservation",
  "title" : "Logical model - Laboratory Observation",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Résultats d'examen de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-laboratory-observation",
      "path" : "fr-lm-laboratory-observation",
      "short" : "Logical model - Laboratory Observation",
      "definition" : "Résultats d'examen de biologie médicale"
    },
    {
      "id" : "fr-lm-laboratory-observation.result",
      "path" : "fr-lm-laboratory-observation.result",
      "short" : "Résultats d'examen"
    },
    {
      "id" : "fr-lm-laboratory-observation.triggeredBy[x]",
      "path" : "fr-lm-laboratory-observation.triggeredBy[x]",
      "short" : "Référence à l'observation ayant déclenché la réalisation de cette observation.",
      "definition" : "Référence à l'observation ayant déclenché la réalisation de cette observation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-laboratory-observation.testKit",
      "path" : "fr-lm-laboratory-observation.testKit",
      "short" : "Test Kit utilisé pour la réalisation de l'observation.",
      "definition" : "Test Kit utilisé pour la réalisation de l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-laboratory-observation.calibrator",
      "path" : "fr-lm-laboratory-observation.calibrator",
      "short" : "Identifiant du calibrateur utilisé pour la réalisation de l'observation.",
      "definition" : "Identifiant du calibrateur utilisé pour la réalisation de l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-laboratory-observation.accreditationStatus",
      "path" : "fr-lm-laboratory-observation.accreditationStatus",
      "short" : "Statut d'accréditation du laboratoire pour l'observation.",
      "definition" : "Statut d'accréditation du laboratoire pour l'observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-laboratory-observation.previousResults",
      "path" : "fr-lm-laboratory-observation.previousResults",
      "short" : "Résultats précédents de la même observation",
      "definition" : "Résultats précédents de la même observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation"
      }]
    },
    {
      "id" : "fr-lm-laboratory-observation.pointOfCareTest",
      "path" : "fr-lm-laboratory-observation.pointOfCareTest",
      "short" : "Indique si l'observation est un test de point de soins ou non.",
      "definition" : "Indique si l'observation est un test de point de soins ou non.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
