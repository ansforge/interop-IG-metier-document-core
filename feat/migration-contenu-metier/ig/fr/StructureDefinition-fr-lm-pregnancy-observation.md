# Logical model- FR LM Pregnancy Observation - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Pregnancy Observation 

 
Observation sur la grossesse 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Supporting Information](StructureDefinition-fr-lm-supporting-information.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-pregnancy-observation)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-pregnancy-observation.csv), [Excel](../StructureDefinition-fr-lm-pregnancy-observation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-pregnancy-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-observation",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyObservation",
  "title" : "Logical model- FR LM Pregnancy Observation",
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
  "description" : "Observation sur la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-pregnancy-observation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-pregnancy-observation",
      "path" : "fr-lm-pregnancy-observation",
      "short" : "Logical model- FR LM Pregnancy Observation",
      "definition" : "Observation sur la grossesse"
    },
    {
      "id" : "fr-lm-pregnancy-observation.header.status",
      "path" : "fr-lm-pregnancy-observation.header.status",
      "short" : "Statut de l'observation",
      "min" : 1
    },
    {
      "id" : "fr-lm-pregnancy-observation.directSubject[x]",
      "path" : "fr-lm-pregnancy-observation.directSubject[x]",
      "short" : "Sujet de l'observation (si different du patient)",
      "definition" : "Sujet de l'observation (si different du patient)",
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
      "id" : "fr-lm-pregnancy-observation.observationDate[x]",
      "path" : "fr-lm-pregnancy-observation.observationDate[x]",
      "short" : "Date de l'observation",
      "definition" : "Date de l'observation",
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
      "id" : "fr-lm-pregnancy-observation.type",
      "path" : "fr-lm-pregnancy-observation.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-issue-grossesse-cisis (1.2.250.1.213.1.1.5.731)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-issue-grossesse-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-pregnancy-observation.method",
      "path" : "fr-lm-pregnancy-observation.method",
      "short" : "Methode utilisee",
      "definition" : "Methode utilisee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-mode-accouchement-cisis (1.2.250.1.213.1.1.5.735)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-accouchement-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-pregnancy-observation.result",
      "path" : "fr-lm-pregnancy-observation.result",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.value[x]",
      "path" : "fr-lm-pregnancy-observation.result.value[x]",
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
      "id" : "fr-lm-pregnancy-observation.result.uncertainty",
      "path" : "fr-lm-pregnancy-observation.result.uncertainty",
      "short" : "Incertitude associee au resultat",
      "definition" : "Incertitude associee au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.uncertainty.value",
      "path" : "fr-lm-pregnancy-observation.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.uncertainty.type",
      "path" : "fr-lm-pregnancy-observation.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.dataAbsentReason",
      "path" : "fr-lm-pregnancy-observation.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange",
      "short" : "Intervalle de reference",
      "definition" : "Intervalle de reference",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.low",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.low",
      "short" : "Limite inférieure de l'intervalle",
      "definition" : "Limite inférieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.high",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.high",
      "short" : "Limite supérieure de l'intervalle",
      "definition" : "Limite supérieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.normalValue",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.normalValue",
      "short" : "Valeur normale",
      "definition" : "Valeur normale",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.type",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.type",
      "short" : "Type d'intervalle de reference",
      "definition" : "Type d'intervalle de reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.appliesTo",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.appliesTo",
      "short" : "Population ou contexte d'application",
      "definition" : "Population ou contexte d'application",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.age",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.age",
      "short" : "Tranche d'age",
      "definition" : "Tranche d'age",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.result.referenceRange.text",
      "path" : "fr-lm-pregnancy-observation.result.referenceRange.text",
      "short" : "Texte libre de l'intervalle de reference",
      "definition" : "Texte libre de l'intervalle de reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.interpretation",
      "path" : "fr-lm-pregnancy-observation.interpretation",
      "short" : "Interpretation du resultat",
      "definition" : "Interpretation du resultat",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.note",
      "path" : "fr-lm-pregnancy-observation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.component",
      "path" : "fr-lm-pregnancy-observation.component",
      "short" : "Composant detaillé de l'observation",
      "definition" : "Composant detaillé de l'observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-pregnancy-observation.derivedFrom[x]",
      "path" : "fr-lm-pregnancy-observation.derivedFrom[x]",
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
      "id" : "fr-lm-pregnancy-observation.hasMember[x]",
      "path" : "fr-lm-pregnancy-observation.hasMember[x]",
      "short" : "Observations associees rattachees a cette entree",
      "definition" : "Observations associees rattachees a cette entree",
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
