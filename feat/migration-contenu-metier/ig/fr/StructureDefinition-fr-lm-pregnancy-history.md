# Logical model- FR LM Pregnancy History - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Pregnancy History 

 
Historique de la grossesse 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Pregnancy History](StructureDefinition-fr-lm-section-pregnancy-history.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-pregnancy-history)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-pregnancy-history.csv), [Excel](../StructureDefinition-fr-lm-pregnancy-history.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-pregnancy-history",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-history",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyHistory",
  "title" : "Logical model- FR LM Pregnancy History",
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
  "description" : "Historique de la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-history",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-pregnancy-history",
      "path" : "fr-lm-pregnancy-history",
      "short" : "Logical model- FR LM Pregnancy History",
      "definition" : "Historique de la grossesse"
    },
    {
      "id" : "fr-lm-pregnancy-history.header.status",
      "path" : "fr-lm-pregnancy-history.header.status",
      "min" : 1
    },
    {
      "id" : "fr-lm-pregnancy-history.directSubject[x]",
      "path" : "fr-lm-pregnancy-history.directSubject[x]",
      "short" : "Sujet de l'observation (si différent du patient)",
      "definition" : "Sujet de l'observation (si différent du patient)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.observationDate[x]",
      "path" : "fr-lm-pregnancy-history.observationDate[x]",
      "short" : "Période de la grossesse",
      "definition" : "Période de la grossesse",
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
      "id" : "fr-lm-pregnancy-history.type",
      "path" : "fr-lm-pregnancy-history.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-historique-grossesses-cisis (1.2.250.1.213.1.1.5.852)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-historique-grossesses-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-pregnancy-history.method",
      "path" : "fr-lm-pregnancy-history.method",
      "short" : "Methode utilisée",
      "definition" : "Methode utilisée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result",
      "path" : "fr-lm-pregnancy-history.result",
      "short" : "Resultat de l'observation sur l'historique de grossesse",
      "definition" : "Resultat de l'observation sur l'historique de grossesse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result.value[x]",
      "path" : "fr-lm-pregnancy-history.result.value[x]",
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
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result.uncertainty",
      "path" : "fr-lm-pregnancy-history.result.uncertainty",
      "short" : "Incertitude associée au resultat",
      "definition" : "Incertitude associée au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result.uncertainty.value",
      "path" : "fr-lm-pregnancy-history.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result.uncertainty.type",
      "path" : "fr-lm-pregnancy-history.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.result.dataAbsentReason",
      "path" : "fr-lm-pregnancy-history.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.interpretation",
      "path" : "fr-lm-pregnancy-history.interpretation",
      "short" : "Interpretation du resultat",
      "definition" : "Interpretation du resultat",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.note",
      "path" : "fr-lm-pregnancy-history.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.component",
      "path" : "fr-lm-pregnancy-history.component",
      "short" : "Composant detaillé de l'observation",
      "definition" : "Composant detaillé de l'observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.derivedFrom[x]",
      "path" : "fr-lm-pregnancy-history.derivedFrom[x]",
      "short" : "Observation ou examen source dont derive cette information",
      "definition" : "Observation ou examen source dont derive cette information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-history.hasMember[x]",
      "path" : "fr-lm-pregnancy-history.hasMember[x]",
      "short" : "Observations associées et rattachées à cette entree",
      "definition" : "Observations associées et rattachées à cette entree",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratory-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    }]
  }
}

```
