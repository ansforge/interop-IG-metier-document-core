# Logical model - FR LM Observation Vital Sign - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Observation Vital Sign 

 
Signe vital observé 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Vital Signs](StructureDefinition-fr-lm-vital-signs.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-observation-vital-sign)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-observation-vital-sign.csv), [Excel](../StructureDefinition-fr-lm-observation-vital-sign.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-observation-vital-sign",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-vital-sign",
  "version" : "0.1.0",
  "name" : "FRLMObservationVitalSign",
  "title" : "Logical model - FR LM Observation Vital Sign",
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
  "description" : "Signe vital observé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-vital-sign",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-observation-vital-sign",
      "path" : "fr-lm-observation-vital-sign",
      "short" : "Logical model - FR LM Observation Vital Sign",
      "definition" : "Signe vital observé"
    },
    {
      "id" : "fr-lm-observation-vital-sign.header.status",
      "path" : "fr-lm-observation-vital-sign.header.status",
      "min" : 1
    },
    {
      "id" : "fr-lm-observation-vital-sign.observationDate[x]",
      "path" : "fr-lm-observation-vital-sign.observationDate[x]",
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
      "id" : "fr-lm-observation-vital-sign.type",
      "path" : "fr-lm-observation-vital-sign.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Valeur issue du jdv-signe-vital-cisis (1.2.250.1.213.1.1.5.171)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis|20260619134043"
      }
    },
    {
      "id" : "fr-lm-observation-vital-sign.method",
      "path" : "fr-lm-observation-vital-sign.method",
      "short" : "Méthode utilisée pour l'observation",
      "definition" : "Méthode utilisée pour l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-observation-vital-sign.bodySite",
      "path" : "fr-lm-observation-vital-sign.bodySite",
      "short" : "Site de l'observation",
      "definition" : "Site de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-observation-vital-sign.result",
      "path" : "fr-lm-observation-vital-sign.result",
      "short" : "Résultat de l'observation effectuée: unité de la mesure codée à partir de UCUM (2.16.840.1.113883.6.8)",
      "definition" : "Résultat de l'observation effectuée: unité de la mesure codée à partir de UCUM (2.16.840.1.113883.6.8)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-observation-vital-sign.interpretation",
      "path" : "fr-lm-observation-vital-sign.interpretation",
      "short" : "Interprétation",
      "definition" : "Interprétation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Valeur issue du jdv-hl7-v3-ObservationInterpretation-cisis (2.16.840.1.113883.1.113883.5.1170)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-observation-vital-sign.note",
      "path" : "fr-lm-observation-vital-sign.note",
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
