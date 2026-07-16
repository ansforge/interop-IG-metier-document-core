# Logical model- FR LM Observation Social History - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Observation Social History 

 
Habitus Mode de vie 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM SocialHistory](StructureDefinition-fr-lm-social-history.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-observation-social-history)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-observation-social-history.csv), [Excel](../StructureDefinition-fr-lm-observation-social-history.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-observation-social-history",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-social-history",
  "version" : "0.1.0",
  "name" : "FRLMObservationSocialHistory",
  "title" : "Logical model- FR LM Observation Social History",
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
  "description" : "Habitus Mode de vie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-social-history",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-observation-social-history",
      "path" : "fr-lm-observation-social-history",
      "short" : "Logical model- FR LM Observation Social History",
      "definition" : "Habitus Mode de vie"
    },
    {
      "id" : "fr-lm-observation-social-history.header.status",
      "path" : "fr-lm-observation-social-history.header.status",
      "min" : 1
    },
    {
      "id" : "fr-lm-observation-social-history.observationDate[x]",
      "path" : "fr-lm-observation-social-history.observationDate[x]",
      "short" : "date de l'observation",
      "definition" : "date de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-observation-social-history.type",
      "path" : "fr-lm-observation-social-history.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-social-history-code-cisis (1.2.250.1.213.1.1.4.2.283.4)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-social-history-code-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-observation-social-history.result",
      "path" : "fr-lm-observation-social-history.result",
      "short" : "Résultat de l’observation effectuée : \n- Statut tabagique : jdv-statut-tabagique-cisis (1.2.250.1.213.1.1.5.667)\n- Consommation tabagique : {pack}/d ou {pack}/wk ou {pack}/a ou {cigarette}/d ou {cigarette}/wk ou {cigarette}/a\n- Consommation d’alcool : {drink}/d or {drink}/wk\n- Consommation de drogue non médicale : SNOMED CT concepts de la sous-hiérarchie 418149003 | substance psychoactive (substance)\n- Exercice physique : {times}/wk\n- Régime : LOINC Answer List LL3984-\n- Statut d'emploi : jdv-hl7-v2-0066-cisis (2.16.840.1.113883.21.29)",
      "definition" : "Résultat de l’observation effectuée : \n- Statut tabagique : jdv-statut-tabagique-cisis (1.2.250.1.213.1.1.5.667)\n- Consommation tabagique : {pack}/d ou {pack}/wk ou {pack}/a ou {cigarette}/d ou {cigarette}/wk ou {cigarette}/a\n- Consommation d’alcool : {drink}/d or {drink}/wk\n- Consommation de drogue non médicale : SNOMED CT concepts de la sous-hiérarchie 418149003 | substance psychoactive (substance)\n- Exercice physique : {times}/wk\n- Régime : LOINC Answer List LL3984-\n- Statut d'emploi : jdv-hl7-v2-0066-cisis (2.16.840.1.113883.21.29)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-observation-social-history.note",
      "path" : "fr-lm-observation-social-history.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
