# Logical model - FR LM Observation - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Observation 

 
Résultat d'une observation réalisée sur le patient ou un dispositif médical. 

**Utilisations:**

* Dérivé de ce Modèle logique: [Logical model - Laboratory Observation](StructureDefinition-FRLMLaboratoryObservation.md)
* Utilise ce/t/te Modèle logique: [Logical model - FR LM Admission Evaluation](StructureDefinition-FRLMAdmissionEvaluation.md), [Logical model - FR LM Attachments](StructureDefinition-FRLMAttachments.md), [Logical model - FR LM Conclusion](StructureDefinition-FRLMConclusion.md), [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md)... Show 16 more, [Logical model - FR LM Device use](StructureDefinition-FRLMDeviceUse.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Examination Report](StructureDefinition-FRLMExaminationReport.md), [Logical model - Laboratory Observation](StructureDefinition-FRLMLaboratoryObservation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-FRLMMedicationAdministration.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM ObservationResults](StructureDefinition-FRLMObservationResults.md), [Logical model - FR LM Order](StructureDefinition-FRLMOrder.md), [Logical model - FR LM Patient Education](StructureDefinition-FRLMPatientEducation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md), [Logical model- FR LM Pregnancy Status](StructureDefinition-FRLMPregnancyStatus.md), [Logical model- FR LM Procedure](StructureDefinition-FRLMProcedure.md), [Logical model - FR LM Reason for referral](StructureDefinition-FRLMReasonForReferral.md), [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md) and [Logical model - FR LM Supporting Information](StructureDefinition-FRLMSupportingInformation.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMObservation)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMObservation.csv), [Excel](../StructureDefinition-FRLMObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation",
  "version" : "0.1.0",
  "name" : "FRLMObservation",
  "title" : "Logical model - FR LM Observation",
  "status" : "draft",
  "date" : "2026-09-02T12:54:48+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservation",
      "path" : "FRLMObservation",
      "short" : "Logical model - FR LM Observation",
      "definition" : "Résultat d'une observation réalisée sur le patient ou un dispositif médical."
    },
    {
      "id" : "FRLMObservation.header.status",
      "path" : "FRLMObservation.header.status",
      "short" : "Statut de l'observation",
      "min" : 1
    },
    {
      "id" : "FRLMObservation.header.directSubject[x]",
      "path" : "FRLMObservation.header.directSubject[x]",
      "short" : "Sujet direct de l'observation si différent du patient, par exemple dans le cas d’une observation portant sur un dispositif implanté. D’autres types de sujets peuvent être autorisés selon les implémentations.",
      "definition" : "Sujet direct de l'observation si différent du patient, par exemple dans le cas d’une observation portant sur un dispositif implanté. D’autres types de sujets peuvent être autorisés selon les implémentations.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      }]
    },
    {
      "id" : "FRLMObservation.observationDate[x]",
      "path" : "FRLMObservation.observationDate[x]",
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
      "id" : "FRLMObservation.type",
      "path" : "FRLMObservation.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "LOINC (2.16.840.1.113883.6.1) ou autre"
      }
    },
    {
      "id" : "FRLMObservation.originalName",
      "path" : "FRLMObservation.originalName",
      "short" : "Nom de l'observation",
      "definition" : "Nom de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMObservation.method",
      "path" : "FRLMObservation.method",
      "short" : "Méthode utilisée pour l'observation",
      "definition" : "Méthode utilisée pour l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMObservation.specimen",
      "path" : "FRLMObservation.specimen",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMObservation.order",
      "path" : "FRLMObservation.order",
      "short" : "Demande d'examen correspondante",
      "definition" : "Demande d'examen correspondante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest"
      }]
    },
    {
      "id" : "FRLMObservation.bodySite",
      "path" : "FRLMObservation.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMObservation.result",
      "path" : "FRLMObservation.result",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMObservation.result.value[x]",
      "path" : "FRLMObservation.result.value[x]",
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
      "id" : "FRLMObservation.referenceRange",
      "path" : "FRLMObservation.referenceRange",
      "short" : "Intervalle de référence. Plusieurs intervalles de référence, de types différents, peuvent être fournis.",
      "definition" : "Intervalle de référence. Plusieurs intervalles de référence, de types différents, peuvent être fournis.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMObservation.referenceRange.low",
      "path" : "FRLMObservation.referenceRange.low",
      "short" : "Limite inférieure de l'intervalle",
      "definition" : "Limite inférieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): UCUM for units"
      }
    },
    {
      "id" : "FRLMObservation.referenceRange.high",
      "path" : "FRLMObservation.referenceRange.high",
      "short" : "Limite supérieure de l'intervalle",
      "definition" : "Limite supérieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): UCUM for units"
      }
    },
    {
      "id" : "FRLMObservation.referenceRange.normalValue",
      "path" : "FRLMObservation.referenceRange.normalValue",
      "short" : "Valeur normale si pertinente pour l'intervalle",
      "definition" : "Valeur normale si pertinente pour l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): SNOMED CT"
      }
    },
    {
      "id" : "FRLMObservation.referenceRange.type",
      "path" : "FRLMObservation.referenceRange.type",
      "short" : "Type d'intervalle de référence",
      "definition" : "Type d'intervalle de référence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): HL7 Observation Reference Range Meaning Codes"
      }
    },
    {
      "id" : "FRLMObservation.referenceRange.appliesTo",
      "path" : "FRLMObservation.referenceRange.appliesTo",
      "short" : "Population concernée pour cet intervalle",
      "definition" : "Population concernée pour cet intervalle",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): SNOMED CT, HL7 v3-Race"
      }
    },
    {
      "id" : "FRLMObservation.referenceRange.age",
      "path" : "FRLMObservation.referenceRange.age",
      "short" : "Tranche d'âge pour cet intervalle. (preferred): UCUM for units",
      "definition" : "Tranche d'âge pour cet intervalle. (preferred): UCUM for units",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "FRLMObservation.referenceRange.text",
      "path" : "FRLMObservation.referenceRange.text",
      "short" : "Texte libre",
      "definition" : "Texte libre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMObservation.interpretation",
      "path" : "FRLMObservation.interpretation",
      "short" : "Interprétation",
      "definition" : "Interprétation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "HL7 Observation Interpretation Codes",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ObservationInterpretation-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMObservation.note",
      "path" : "FRLMObservation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMObservation.component",
      "path" : "FRLMObservation.component",
      "short" : "Composant dans le cas d'une observation composée de plusieurs sous-observations",
      "definition" : "Composant dans le cas d'une observation composée de plusieurs sous-observations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMObservation.derivedFrom[x]",
      "path" : "FRLMObservation.derivedFrom[x]",
      "short" : "Référence de la resource à partir de laquelle l'observation a été faite. Par exemple, une image échographique à partir de laquelle une mesure fœtale est réalisée.",
      "definition" : "Référence de la resource à partir de laquelle l'observation a été faite. Par exemple, une image échographique à partir de laquelle une mesure fœtale est réalisée.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy"
      }]
    },
    {
      "id" : "FRLMObservation.hasMember[x]",
      "path" : "FRLMObservation.hasMember[x]",
      "short" : "Cette observation est un groupe d'observations (par exemple, une batterie de tests, un ensemble de mesures de signes vitaux).",
      "definition" : "Cette observation est un groupe d'observations (par exemple, une batterie de tests, un ensemble de mesures de signes vitaux).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
