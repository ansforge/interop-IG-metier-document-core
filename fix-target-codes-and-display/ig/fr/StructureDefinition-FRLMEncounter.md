# Logical model - FR LM Encounter - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Encounter 

 
Rencontre 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Admission Evaluation](StructureDefinition-FRLMAdmissionEvaluation.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Encounter Information](StructureDefinition-FRLMEncounterInformation.md), [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)... Show 3 more, [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md), [Logical model- FR LM Procedure](StructureDefinition-FRLMProcedure.md) and [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMEncounter)

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

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMEncounter.csv), [Excel](../StructureDefinition-FRLMEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMEncounter",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter",
  "version" : "0.1.0",
  "name" : "FRLMEncounter",
  "title" : "Logical model - FR LM Encounter",
  "status" : "draft",
  "date" : "2026-08-25T11:34:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Rencontre",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMEncounter",
      "path" : "FRLMEncounter",
      "short" : "Logical model - FR LM Encounter",
      "definition" : "Rencontre"
    },
    {
      "id" : "FRLMEncounter.header.author[x]",
      "path" : "FRLMEncounter.header.author[x]",
      "short" : "Responsable de la rencontre"
    },
    {
      "id" : "FRLMEncounter.header.participant[x]",
      "path" : "FRLMEncounter.header.participant[x]",
      "max" : "0"
    },
    {
      "id" : "FRLMEncounter.participant",
      "path" : "FRLMEncounter.participant",
      "short" : "Personne impliquée dans la rencontre",
      "definition" : "Personne impliquée dans la rencontre",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
      }]
    },
    {
      "id" : "FRLMEncounter.period",
      "path" : "FRLMEncounter.period",
      "short" : "Date de début et de fin de la rencontre.",
      "definition" : "Date de début et de fin de la rencontre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMEncounter.priority",
      "path" : "FRLMEncounter.priority",
      "short" : "Priorité de la rencontre (ex : urgence, etc.).",
      "definition" : "Priorité de la rencontre (ex : urgence, etc.).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMEncounter.type",
      "path" : "FRLMEncounter.type",
      "short" : "Type de la rencontre (hospitalisation, soins à domicile, etc.).",
      "definition" : "Type de la rencontre (hospitalisation, soins à domicile, etc.).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMEncounter.serviceProvider",
      "path" : "FRLMEncounter.serviceProvider",
      "short" : "Organisation (établissement) responsable de cette rencontre",
      "definition" : "Organisation (établissement) responsable de cette rencontre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMEncounter.referringProfessional",
      "path" : "FRLMEncounter.referringProfessional",
      "short" : "Professionnel de santé référent",
      "definition" : "Professionnel de santé référent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      }]
    },
    {
      "id" : "FRLMEncounter.basedOn[x]",
      "path" : "FRLMEncounter.basedOn[x]",
      "short" : "Référence à la demande ayant initié cette rencontre",
      "definition" : "Référence à la demande ayant initié cette rencontre",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest"
      }]
    },
    {
      "id" : "FRLMEncounter.reason[x]",
      "path" : "FRLMEncounter.reason[x]",
      "short" : "Motif(s) de l'admission, ex : problème, procédure ou constatation.",
      "definition" : "Motif(s) de l'admission, ex : problème, procédure ou constatation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMEncounter.admission",
      "path" : "FRLMEncounter.admission",
      "short" : "Détails de l'admission",
      "definition" : "Détails de l'admission",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMEncounter.admission.admitter",
      "path" : "FRLMEncounter.admission.admitter",
      "short" : "Professionnel de santé ayant admis le patient",
      "definition" : "Professionnel de santé ayant admis le patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      }]
    },
    {
      "id" : "FRLMEncounter.admission.admitSource",
      "path" : "FRLMEncounter.admission.admitSource",
      "short" : "Modalité d'entrée d'un patient en ES (urgence, programmée, etc...).",
      "definition" : "Modalité d'entrée d'un patient en ES (urgence, programmée, etc...).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-modalite-entree : Modalité d'entrée en établissement de santé",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMEncounter.dischargeDiagnosis[x]",
      "path" : "FRLMEncounter.dischargeDiagnosis[x]",
      "short" : "Les diagnostics au moment de la sortie.",
      "definition" : "Les diagnostics au moment de la sortie.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMEncounter.dischargeDestination",
      "path" : "FRLMEncounter.dischargeDestination",
      "short" : "modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)",
      "definition" : "modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMEncounter.dischargeDestination.type",
      "path" : "FRLMEncounter.dischargeDestination.type",
      "short" : "Type de sortie",
      "definition" : "Type de sortie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "JDV_ModaliteSortie_CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
      }
    },
    {
      "id" : "FRLMEncounter.dischargeDestination.location[x]",
      "path" : "FRLMEncounter.dischargeDestination.location[x]",
      "short" : "Le lieu ou l'organisation",
      "definition" : "Le lieu ou l'organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation"
      }]
    },
    {
      "id" : "FRLMEncounter.serviceLocation",
      "path" : "FRLMEncounter.serviceLocation",
      "short" : "Liste des lieux où le patient était présent pendant cette rencontre.",
      "definition" : "Liste des lieux où le patient était présent pendant cette rencontre.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMEncounter.serviceLocation.period",
      "path" : "FRLMEncounter.serviceLocation.period",
      "short" : "Période pendant laquelle le patient était présent au lieu",
      "definition" : "Période pendant laquelle le patient était présent au lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMEncounter.serviceLocation.organisationPart[x]",
      "path" : "FRLMEncounter.serviceLocation.organisationPart[x]",
      "short" : "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre.",
      "definition" : "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation"
      }]
    },
    {
      "id" : "FRLMEncounter.subEncounter",
      "path" : "FRLMEncounter.subEncounter",
      "short" : "référence aux rencontres considérées comme faisant partie de cette rencontre.",
      "definition" : "référence aux rencontres considérées comme faisant partie de cette rencontre.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMEncounter.note",
      "path" : "FRLMEncounter.note",
      "short" : "Notes",
      "definition" : "Notes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
