# Modèle logique métier - FR LM Adverse Drug Reaction - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Modèle logique métier - FR LM Adverse Drug Reaction 

 
Effet indésirable médicamenteux 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Predictable Adverse Drug Reaction](StructureDefinition-FRLMPredictableAdverseDrugReaction.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMAdverseDrugReaction)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMAdverseDrugReaction.csv), [Excel](../StructureDefinition-FRLMAdverseDrugReaction.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAdverseDrugReaction",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdverseDrugReaction",
  "version" : "0.1.0",
  "name" : "FRLMAdverseDrugReaction",
  "title" : "Modèle logique métier - FR LM Adverse Drug Reaction",
  "status" : "draft",
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Effet indésirable médicamenteux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdverseDrugReaction",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAdverseDrugReaction",
      "path" : "FRLMAdverseDrugReaction",
      "short" : "Modèle logique métier - FR LM Adverse Drug Reaction",
      "definition" : "Effet indésirable médicamenteux"
    },
    {
      "id" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "path" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "short" : "Type d'effet indésirable",
      "definition" : "Type d'effet indésirable",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Type d'effet indésirable provenant du jdv-origine-effet-indesirable-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMAdverseDrugReaction.detected",
      "path" : "FRLMAdverseDrugReaction.detected",
      "short" : "Date de détection de l'effet indésirable",
      "definition" : "Date de détection de l'effet indésirable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMAdverseDrugReaction.value",
      "path" : "FRLMAdverseDrugReaction.value",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMAdverseDrugReaction.medicationAdministration",
      "path" : "FRLMAdverseDrugReaction.medicationAdministration",
      "short" : "Médicament, substance incriminée, posologie",
      "definition" : "Médicament, substance incriminée, posologie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMAdverseDrugReaction.reaction",
      "path" : "FRLMAdverseDrugReaction.reaction",
      "short" : "Réaction observée",
      "definition" : "Réaction observée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMAdverseDrugReaction.causalityAssessment",
      "path" : "FRLMAdverseDrugReaction.causalityAssessment",
      "short" : "Imputabilité",
      "definition" : "Imputabilité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Niveau d'imputabilité provenant du jdv-imputabilite-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMAdverseDrugReaction.severity",
      "path" : "FRLMAdverseDrugReaction.severity",
      "short" : "Gravité",
      "definition" : "Gravité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Gravité provenant du jdv-gravite-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMAdverseDrugReaction.outcome",
      "path" : "FRLMAdverseDrugReaction.outcome",
      "short" : "Évolution de l'effet indésirable",
      "definition" : "Évolution de l'effet indésirable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Évolution de l'effet indésirable provenant du jdv-evolution-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260716085852"
      }
    }]
  }
}

```
