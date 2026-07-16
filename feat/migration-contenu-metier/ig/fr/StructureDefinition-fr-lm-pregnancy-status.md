# Logical model- FR LM Pregnancy Status - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Pregnancy Status 

 
Statut de grossesse 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Pregnancy History](StructureDefinition-fr-lm-section-pregnancy-history.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-pregnancy-status)

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

Obligatoire : 1 élément(4 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément(4 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-pregnancy-status.csv), [Excel](../StructureDefinition-fr-lm-pregnancy-status.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-pregnancy-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-status",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyStatus",
  "title" : "Logical model- FR LM Pregnancy Status",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Statut de grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-status",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-pregnancy-status",
      "path" : "fr-lm-pregnancy-status",
      "short" : "Logical model- FR LM Pregnancy Status",
      "definition" : "Statut de grossesse"
    },
    {
      "id" : "fr-lm-pregnancy-status.header.status",
      "path" : "fr-lm-pregnancy-status.header.status",
      "min" : 1
    },
    {
      "id" : "fr-lm-pregnancy-status.observationDate[x]",
      "path" : "fr-lm-pregnancy-status.observationDate[x]",
      "short" : "Date ou periode de l'observation",
      "definition" : "Date ou periode de l'observation",
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
      "id" : "fr-lm-pregnancy-status.type",
      "path" : "fr-lm-pregnancy-status.type",
      "short" : "LOINC 11449-6 'Pregnancy status'",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.result",
      "path" : "fr-lm-pregnancy-status.result",
      "short" : "Resultat de l'observation",
      "definition" : "Resultat de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.result.value[x]",
      "path" : "fr-lm-pregnancy-status.result.value[x]",
      "short" : "Valeur du resultat",
      "definition" : "Valeur du resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Ratio"
      },
      {
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Statut de grossesse de la patiente (enceinte, pas enceinte, etc.)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-grossesse-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-pregnancy-status.result.uncertainty",
      "path" : "fr-lm-pregnancy-status.result.uncertainty",
      "short" : "Incertitude associée au resultat",
      "definition" : "Incertitude associée au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.result.uncertainty.value",
      "path" : "fr-lm-pregnancy-status.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.result.uncertainty.type",
      "path" : "fr-lm-pregnancy-status.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.result.dataAbsentReason",
      "path" : "fr-lm-pregnancy-status.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.note",
      "path" : "fr-lm-pregnancy-status.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.hasMember[x]",
      "path" : "fr-lm-pregnancy-status.hasMember[x]",
      "short" : "Observations rattachées a cette entrée",
      "definition" : "Observations rattachées a cette entrée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.hasMember[x].hasMemberFRLMLaboratoryObservation",
      "path" : "fr-lm-pregnancy-status.hasMember[x].hasMemberFRLMLaboratoryObservation",
      "short" : "Observation de laboratoire associée",
      "definition" : "Observation de laboratoire associée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-status.hasMember[x].hasMemberEstimatedDeliveryDate",
      "path" : "fr-lm-pregnancy-status.hasMember[x].hasMemberEstimatedDeliveryDate",
      "short" : "Observation associée a la date d'accouchement",
      "definition" : "Observation associée a la date d'accouchement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }],
      "binding" : {
        "description" : "jdv-date-accouchement-cisis (1.2.250.1.213.1.1.5.853)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-date-accouchement-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-pregnancy-status.hasMember[x].hasMemberGestationalAge",
      "path" : "fr-lm-pregnancy-status.hasMember[x].hasMemberGestationalAge",
      "short" : "Observation associée a l'age gestationnel",
      "definition" : "Observation associée a l'age gestationnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }],
      "binding" : {
        "description" : "jdv-age-gestationnel-cisis (1.2.250.1.213.1.1.5.854)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-age-gestationnel-cisis|20260619134042"
      }
    }]
  }
}

```
