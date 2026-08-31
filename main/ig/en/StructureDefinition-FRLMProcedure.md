# Logical model- FR LM Procedure - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Procedure 

 
Acte 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md), [Logical model - FR LM Device use](StructureDefinition-FRLMDeviceUse.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Examination Report](StructureDefinition-FRLMExaminationReport.md)... Show 7 more, [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Patient Education](StructureDefinition-FRLMPatientEducation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md), [Logical model- FR LM Procedure](StructureDefinition-FRLMProcedure.md), [logical model - FR LM Procedures](StructureDefinition-FRLMProcedures.md) and [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMProcedure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMProcedure.csv), [Excel](../StructureDefinition-FRLMProcedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMProcedure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure",
  "version" : "0.1.0",
  "name" : "FRLMProcedure",
  "title" : "Logical model- FR LM Procedure",
  "status" : "draft",
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Acte",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMProcedure",
      "path" : "FRLMProcedure",
      "short" : "Logical model- FR LM Procedure",
      "definition" : "Acte"
    },
    {
      "id" : "FRLMProcedure.header.status",
      "path" : "FRLMProcedure.header.status",
      "short" : "Statut de l'acte",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMProcedure.code",
      "path" : "FRLMProcedure.code",
      "short" : "Code de l'acte",
      "definition" : "Code de l'acte",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "CCAM (1.2.250.1.215.300.1)"
      }
    },
    {
      "id" : "FRLMProcedure.procedureDate[x]",
      "path" : "FRLMProcedure.procedureDate[x]",
      "short" : "Période de l'acte. Si Period : porte la date de début et de fin de l'acte.",
      "definition" : "Période de l'acte. Si Period : porte la date de début et de fin de l'acte.",
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
      "id" : "FRLMProcedure.priority",
      "path" : "FRLMProcedure.priority",
      "short" : "Priorité",
      "definition" : "Priorité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-hl7-v3-ActPriority-cisis (2.16.840.1.113883.1.11.16866) ou autre JDV"
      }
    },
    {
      "id" : "FRLMProcedure.bodySite",
      "path" : "FRLMProcedure.bodySite",
      "short" : "localisation anatomique. Le code de la localisation doit être issu de SNOMED CT (2.16.840.1.113883.6.96)",
      "definition" : "localisation anatomique. Le code de la localisation doit être issu de SNOMED CT (2.16.840.1.113883.6.96)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMProcedure.approachSiteCode",
      "path" : "FRLMProcedure.approachSiteCode",
      "short" : "Voie d’abord",
      "definition" : "Voie d’abord",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
      }
    },
    {
      "id" : "FRLMProcedure.difficulty",
      "path" : "FRLMProcedure.difficulty",
      "short" : "Difficulté",
      "definition" : "Difficulté",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMProcedure.reason[x]",
      "path" : "FRLMProcedure.reason[x]",
      "short" : "Motif de l’acte.\n- motif codé (spécifique à un  contexte)\n- motif : un problème\n- motif : une observation\n- motif : un acte\n- motif : une rencontre (consultation, etc…)",
      "definition" : "Motif de l’acte.\n- motif codé (spécifique à un  contexte)\n- motif : un problème\n- motif : une observation\n- motif : un acte\n- motif : une rencontre (consultation, etc…)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMProcedure.outcome",
      "path" : "FRLMProcedure.outcome",
      "short" : "Résultat immédiat de l'acte (succès, échec, ...). Ne concerne pas l'évaluation sur une période plus longue.",
      "definition" : "Résultat immédiat de l'acte (succès, échec, ...). Ne concerne pas l'évaluation sur une période plus longue.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMProcedure.complication",
      "path" : "FRLMProcedure.complication",
      "short" : "Complication survenue pendant l'acte ou immédiatement après uniquement.",
      "definition" : "Complication survenue pendant l'acte ou immédiatement après uniquement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): ICD-10, SNOMED CT"
      }
    },
    {
      "id" : "FRLMProcedure.deviceUsed",
      "path" : "FRLMProcedure.deviceUsed",
      "short" : "Dispositif médical utilisé pendant l'acte",
      "definition" : "Dispositif médical utilisé pendant l'acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMProcedure.focalDevice",
      "path" : "FRLMProcedure.focalDevice",
      "short" : "Dispositif implanté, retiré ou manipulé chez le patient (étalonnage, remplacement de la batterie, pose d'une prothèse, fixation d'un système de drainage des plaies par aspiration, etc.).",
      "definition" : "Dispositif implanté, retiré ou manipulé chez le patient (étalonnage, remplacement de la batterie, pose d'une prothèse, fixation d'un système de drainage des plaies par aspiration, etc.).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMProcedure.note",
      "path" : "FRLMProcedure.note",
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
