# Logical model - FR LM Observation - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Observation 

 
Résultat d'une observation réalisée sur le patient ou un dispositif médical. 

**Utilisations:**

* Dérivé de ce Modèle logique: [Logical model - Laboratory Observation](StructureDefinition-fr-lm-laboratory-observation.md)
* Utilise ce/t/te Modèle logique: [Logical model - FR LM Admission Evaluation](StructureDefinition-fr-lm-admission-evaluation.md), [Logical model - FR LM Attachments](StructureDefinition-fr-lm-attachments.md), [Logical model - FR LM Conclusion](StructureDefinition-fr-lm-conclusion.md), [Logical model - FR LM Course of encounter](StructureDefinition-fr-lm-course-of-encounter.md)... Show 16 more, [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md), [Logical model - Laboratory Observation](StructureDefinition-fr-lm-laboratory-observation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-fr-lm-medication-administration.md), [Logical model - FR LM ObservationResults](StructureDefinition-fr-lm-observation-results.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Order](StructureDefinition-fr-lm-order.md), [Logical model - FR LM Patient Education](StructureDefinition-fr-lm-patient-education.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model- FR LM Pregnancy Status](StructureDefinition-fr-lm-pregnancy-status.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [Logical model - FR LM Reason for referral](StructureDefinition-fr-lm-reason-for-referral.md), [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md) and [Logical model - FR LM Supporting Information](StructureDefinition-fr-lm-supporting-information.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-observation)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-observation.csv), [Excel](../StructureDefinition-fr-lm-observation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation",
  "version" : "0.1.0",
  "name" : "FRLMObservation",
  "title" : "Logical model - FR LM Observation",
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
  "description" : "Résultat d'une observation réalisée sur le patient ou un dispositif médical.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-observation",
      "path" : "fr-lm-observation",
      "short" : "Logical model - FR LM Observation",
      "definition" : "Résultat d'une observation réalisée sur le patient ou un dispositif médical."
    },
    {
      "id" : "fr-lm-observation.header.status",
      "path" : "fr-lm-observation.header.status",
      "short" : "Statut de l'observation",
      "min" : 1
    },
    {
      "id" : "fr-lm-observation.directSubject[x]",
      "path" : "fr-lm-observation.directSubject[x]",
      "short" : "Sujet direct de l'observation si différent du patient, par exemple dans le cas d’une observation portant sur un dispositif implanté. D’autres types de sujets peuvent être autorisés selon les implémentations.",
      "definition" : "Sujet direct de l'observation si différent du patient, par exemple dans le cas d’une observation portant sur un dispositif implanté. D’autres types de sujets peuvent être autorisés selon les implémentations.",
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
      "id" : "fr-lm-observation.observationDate[x]",
      "path" : "fr-lm-observation.observationDate[x]",
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
      "id" : "fr-lm-observation.type",
      "path" : "fr-lm-observation.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "LOINC (2.16.840.1.113883.6.1) ou autre"
      }
    },
    {
      "id" : "fr-lm-observation.originalName",
      "path" : "fr-lm-observation.originalName",
      "short" : "Nom de l'observation",
      "definition" : "Nom de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-observation.method",
      "path" : "fr-lm-observation.method",
      "short" : "Méthode utilisée pour l'observation",
      "definition" : "Méthode utilisée pour l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-observation.specimen",
      "path" : "fr-lm-observation.specimen",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-observation.order",
      "path" : "fr-lm-observation.order",
      "short" : "Demande d'examen correspondante",
      "definition" : "Demande d'examen correspondante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
      }]
    },
    {
      "id" : "fr-lm-observation.bodySite",
      "path" : "fr-lm-observation.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-observation.result",
      "path" : "fr-lm-observation.result",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-observation.result.Value[x]",
      "path" : "fr-lm-observation.result.Value[x]",
      "short" : "Valeur de l'observation. Le type de donnée doit être adapté au type d'observation.",
      "definition" : "Valeur de l'observation. Le type de donnée doit être adapté au type d'observation.",
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
      },
      {
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-observation.referenceRange",
      "path" : "fr-lm-observation.referenceRange",
      "short" : "Intervalle de référence. Plusieurs intervalles de référence, de types différents, peuvent être fournis.",
      "definition" : "Intervalle de référence. Plusieurs intervalles de référence, de types différents, peuvent être fournis.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-observation.referenceRange.low",
      "path" : "fr-lm-observation.referenceRange.low",
      "short" : "Limite inférieure de l'intervalle",
      "definition" : "Limite inférieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "description" : "(preferred): UCUM for units"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.high",
      "path" : "fr-lm-observation.referenceRange.high",
      "short" : "Limite supérieure de l'intervalle",
      "definition" : "Limite supérieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "description" : "(preferred): UCUM for units"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.normalValue",
      "path" : "fr-lm-observation.referenceRange.normalValue",
      "short" : "Valeur normale si pertinente pour l'intervalle",
      "definition" : "Valeur normale si pertinente pour l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): SNOMED CT"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.type",
      "path" : "fr-lm-observation.referenceRange.type",
      "short" : "Type d'intervalle de référence",
      "definition" : "Type d'intervalle de référence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): HL7 Observation Reference Range Meaning Codes"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.appliesTo",
      "path" : "fr-lm-observation.referenceRange.appliesTo",
      "short" : "Population concernée pour cet intervalle",
      "definition" : "Population concernée pour cet intervalle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): SNOMED CT, HL7 v3-Race"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.age",
      "path" : "fr-lm-observation.referenceRange.age",
      "short" : "Tranche d'âge pour cet intervalle",
      "definition" : "Tranche d'âge pour cet intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }],
      "binding" : {
        "description" : "(preferred): UCUM for units"
      }
    },
    {
      "id" : "fr-lm-observation.referenceRange.text",
      "path" : "fr-lm-observation.referenceRange.text",
      "short" : "Texte libre",
      "definition" : "Texte libre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-observation.interpretation",
      "path" : "fr-lm-observation.interpretation",
      "short" : "Interprétation",
      "definition" : "Interprétation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): HL7 Observation Interpretation Codes",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-observation.note",
      "path" : "fr-lm-observation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-observation.component",
      "path" : "fr-lm-observation.component",
      "short" : "Composant dans le cas d'une observation composée de plusieurs sous-observations",
      "definition" : "Composant dans le cas d'une observation composée de plusieurs sous-observations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-observation.derivedFrom[x]",
      "path" : "fr-lm-observation.derivedFrom[x]",
      "short" : "Référence de la resource à partir de laquelle l'observation a été faite. Par exemple, une image échographique à partir de laquelle une mesure fœtale est réalisée.",
      "definition" : "Référence de la resource à partir de laquelle l'observation a été faite. Par exemple, une image échographique à partir de laquelle une mesure fœtale est réalisée.",
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
      "id" : "fr-lm-observation.hasMember[x]",
      "path" : "fr-lm-observation.hasMember[x]",
      "short" : "Cette observation est un groupe d'observations (par exemple, une batterie de tests, un ensemble de mesures de signes vitaux).",
      "definition" : "Cette observation est un groupe d'observations (par exemple, une batterie de tests, un ensemble de mesures de signes vitaux).",
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
