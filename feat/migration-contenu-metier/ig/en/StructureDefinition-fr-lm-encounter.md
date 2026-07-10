# Logical model - FR LM Encounter - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Encounter 

 
Rencontre 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Admission Evaluation](StructureDefinition-fr-lm-admission-evaluation.md), [Logical model - FR LM Encounter Information](StructureDefinition-fr-lm-encounter-information.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)... Show 3 more, [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md) and [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-encounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-encounter.csv), [Excel](../StructureDefinition-fr-lm-encounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-encounter",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter",
  "version" : "0.1.0",
  "name" : "FRLMEncounter",
  "title" : "Logical model - FR LM Encounter",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-encounter",
      "path" : "fr-lm-encounter",
      "short" : "Logical model - FR LM Encounter",
      "definition" : "Rencontre"
    },
    {
      "id" : "fr-lm-encounter.header.author[x]",
      "path" : "fr-lm-encounter.header.author[x]",
      "short" : "Responsable de la rencontre"
    },
    {
      "id" : "fr-lm-encounter.header.participant[x]",
      "path" : "fr-lm-encounter.header.participant[x]",
      "max" : "0"
    },
    {
      "id" : "fr-lm-encounter.participant",
      "path" : "fr-lm-encounter.participant",
      "short" : "Personne impliquée dans la rencontre",
      "definition" : "Personne impliquée dans la rencontre",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-participant"
      }]
    },
    {
      "id" : "fr-lm-encounter.period",
      "path" : "fr-lm-encounter.period",
      "short" : "Date de début et de fin de la rencontre.",
      "definition" : "Date de début et de fin de la rencontre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-encounter.priority",
      "path" : "fr-lm-encounter.priority",
      "short" : "Priorité de la rencontre (ex : urgence, etc.).",
      "definition" : "Priorité de la rencontre (ex : urgence, etc.).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-encounter.type",
      "path" : "fr-lm-encounter.type",
      "short" : "Type de la rencontre (hospitalisation, soins à domicile, etc.).",
      "definition" : "Type de la rencontre (hospitalisation, soins à domicile, etc.).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-encounter.serviceProvider",
      "path" : "fr-lm-encounter.serviceProvider",
      "short" : "Organisation (établissement) responsable de cette rencontre",
      "definition" : "Organisation (établissement) responsable de cette rencontre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-encounter.referringProfessional",
      "path" : "fr-lm-encounter.referringProfessional",
      "short" : "Professionnel de santé référent",
      "definition" : "Professionnel de santé référent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-encounter.basedOn[x]",
      "path" : "fr-lm-encounter.basedOn[x]",
      "short" : "Référence à la demande ayant initié cette rencontre",
      "definition" : "Référence à la demande ayant initié cette rencontre",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plan"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
      }]
    },
    {
      "id" : "fr-lm-encounter.reason[x]",
      "path" : "fr-lm-encounter.reason[x]",
      "short" : "Motif(s) de l'admission, ex : problème, procédure ou constatation.",
      "definition" : "Motif(s) de l'admission, ex : problème, procédure ou constatation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-encounter.admission",
      "path" : "fr-lm-encounter.admission",
      "short" : "Détails de l'admission",
      "definition" : "Détails de l'admission",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-encounter.admission.admitter",
      "path" : "fr-lm-encounter.admission.admitter",
      "short" : "Professionnel de santé ayant admis le patient",
      "definition" : "Professionnel de santé ayant admis le patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-encounter.admission.admitSource",
      "path" : "fr-lm-encounter.admission.admitSource",
      "short" : "Modalité d'entrée d'un patient en ES (urgence, programmée, etc...).",
      "definition" : "Modalité d'entrée d'un patient en ES (urgence, programmée, etc...).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modalite-entree : Modalité d'entrée en établissement de santé",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-entree-cisis|20260619134043"
      }
    },
    {
      "id" : "fr-lm-encounter.dischargeDiagnosis[x]",
      "path" : "fr-lm-encounter.dischargeDiagnosis[x]",
      "short" : "Les diagnostics au moment de la sortie.",
      "definition" : "Les diagnostics au moment de la sortie.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-encounter.dischargeDestination",
      "path" : "fr-lm-encounter.dischargeDestination",
      "short" : "modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)",
      "definition" : "modalité de sortie du patient d'un ES (retour à domicile, EHPAD, HAD, etc...)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-encounter.dischargeDestination.type",
      "path" : "fr-lm-encounter.dischargeDestination.type",
      "short" : "Type de sortie",
      "definition" : "Type de sortie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "JDV_ModaliteSortie_CISIS (1.2.250.1.213.1.1.5.74) ou autre JDV spécifique à un volet"
      }
    },
    {
      "id" : "fr-lm-encounter.dischargeDestination.location[x]",
      "path" : "fr-lm-encounter.dischargeDestination.location[x]",
      "short" : "Le lieu ou l'organisation",
      "definition" : "Le lieu ou l'organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location"
      }]
    },
    {
      "id" : "fr-lm-encounter.serviceLocation",
      "path" : "fr-lm-encounter.serviceLocation",
      "short" : "Liste des lieux où le patient était présent pendant cette rencontre.",
      "definition" : "Liste des lieux où le patient était présent pendant cette rencontre.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-encounter.serviceLocation.period",
      "path" : "fr-lm-encounter.serviceLocation.period",
      "short" : "Période pendant laquelle le patient était présent au lieu",
      "definition" : "Période pendant laquelle le patient était présent au lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-encounter.serviceLocation.organisationPart[x]",
      "path" : "fr-lm-encounter.serviceLocation.organisationPart[x]",
      "short" : "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre.",
      "definition" : "Organisation ou partie d'une organisation (ex : département) où le patient était présent pendant la rencontre.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location"
      }]
    },
    {
      "id" : "fr-lm-encounter.subEncounter",
      "path" : "fr-lm-encounter.subEncounter",
      "short" : "référence aux rencontres considérées comme faisant partie de cette rencontre.",
      "definition" : "référence aux rencontres considérées comme faisant partie de cette rencontre.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    },
    {
      "id" : "fr-lm-encounter.note",
      "path" : "fr-lm-encounter.note",
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
