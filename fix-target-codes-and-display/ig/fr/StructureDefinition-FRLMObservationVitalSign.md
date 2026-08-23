# Logical model - FR LM Observation Vital Sign - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Observation Vital Sign 

 
Signe vital observé 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Vital Signs](StructureDefinition-FRLMVitalSigns.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMObservationVitalSign)

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

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMObservationVitalSign.csv), [Excel](../StructureDefinition-FRLMObservationVitalSign.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservationVitalSign",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign",
  "version" : "0.1.0",
  "name" : "FRLMObservationVitalSign",
  "title" : "Logical model - FR LM Observation Vital Sign",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservationVitalSign",
      "path" : "FRLMObservationVitalSign",
      "short" : "Logical model - FR LM Observation Vital Sign",
      "definition" : "Signe vital observé"
    },
    {
      "id" : "FRLMObservationVitalSign.header.status",
      "path" : "FRLMObservationVitalSign.header.status",
      "min" : 1
    },
    {
      "id" : "FRLMObservationVitalSign.observationDate[x]",
      "path" : "FRLMObservationVitalSign.observationDate[x]",
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
      "id" : "FRLMObservationVitalSign.type",
      "path" : "FRLMObservationVitalSign.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du jdv-signe-vital-cisis (1.2.250.1.213.1.1.5.171)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-signe-vital-cisis|20260716085853"
      }
    },
    {
      "id" : "FRLMObservationVitalSign.method",
      "path" : "FRLMObservationVitalSign.method",
      "short" : "Méthode utilisée pour l'observation",
      "definition" : "Méthode utilisée pour l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMObservationVitalSign.bodySite",
      "path" : "FRLMObservationVitalSign.bodySite",
      "short" : "Site de l'observation",
      "definition" : "Site de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMObservationVitalSign.result",
      "path" : "FRLMObservationVitalSign.result",
      "short" : "Résultat de l'observation effectuée: unité de la mesure codée à partir de UCUM (2.16.840.1.113883.6.8)",
      "definition" : "Résultat de l'observation effectuée: unité de la mesure codée à partir de UCUM (2.16.840.1.113883.6.8)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMObservationVitalSign.interpretation",
      "path" : "FRLMObservationVitalSign.interpretation",
      "short" : "Interprétation",
      "definition" : "Interprétation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du jdv-hl7-v3-ObservationInterpretation-cisis (2.16.840.1.113883.1.113883.5.1170)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMObservationVitalSign.note",
      "path" : "FRLMObservationVitalSign.note",
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
