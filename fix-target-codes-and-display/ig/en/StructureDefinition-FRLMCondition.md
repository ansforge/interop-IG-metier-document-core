# Logical model - FR LM Condition - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Condition 

 
Problème 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Admission Evaluation](StructureDefinition-FRLMAdmissionEvaluation.md), [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-FRLMAdverseDrugReaction.md), [Logical model - FR LM Care Plan](StructureDefinition-FRLMCarePlan.md), [Logical model - FR LM Conclusion](StructureDefinition-FRLMConclusion.md)... Show 12 more, [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md), [Logical model - FR LM Device use](StructureDefinition-FRLMDeviceUse.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM FRLM History Of Past Illness](StructureDefinition-FRLMHistoryOfPastIllness.md), [Logical model - FR LM Immunisation](StructureDefinition-FRLMImmunisation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-FRLMMedicationAdministration.md), [Logical model - FR LM Order](StructureDefinition-FRLMOrder.md), [Logical model - FR LM Problems](StructureDefinition-FRLMProblems.md), [Logical model- FR LM Procedure](StructureDefinition-FRLMProcedure.md), [Logical model - FR LM Reason for referral](StructureDefinition-FRLMReasonForReferral.md), [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md) and [Logical model - FR LM Supporting Information](StructureDefinition-FRLMSupportingInformation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMCondition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMCondition.csv), [Excel](../StructureDefinition-FRLMCondition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMCondition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition",
  "version" : "0.1.0",
  "name" : "FRLMCondition",
  "title" : "Logical model - FR LM Condition",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Problème",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMCondition",
      "path" : "FRLMCondition",
      "short" : "Logical model - FR LM Condition",
      "definition" : "Problème"
    },
    {
      "id" : "FRLMCondition.header.status",
      "path" : "FRLMCondition.header.status",
      "short" : "Statut du problème",
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du jdv-hl7-condition-clinical-cisis (2.16.840.1.113883.4.642.3.164)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-clinical-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMCondition.type",
      "path" : "FRLMCondition.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du jdv-code-probleme-cisis (1.2.250.1.213.1.1.5.172)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis|20260716085853"
      }
    },
    {
      "id" : "FRLMCondition.problem",
      "path" : "FRLMCondition.problem",
      "short" : "Problème observé :\n - CIM-10 (2.16.840.1.113883.6.3) ; \n - CISP-2 (2.16.840.1.113883.6.139) ;\n - CISP-3 / DRC (1.2.250.1.213.2.9) ;\n - OrphaCodes (1.2.250.1.213.2.49)",
      "definition" : "Problème observé :\n - CIM-10 (2.16.840.1.113883.6.3) ; \n - CISP-2 (2.16.840.1.113883.6.139) ;\n - CISP-3 / DRC (1.2.250.1.213.2.9) ;\n - OrphaCodes (1.2.250.1.213.2.49)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMCondition.period",
      "path" : "FRLMCondition.period",
      "short" : "Période",
      "definition" : "Période",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "FRLMCondition.period.onsetDate",
      "path" : "FRLMCondition.period.onsetDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMCondition.period.endDate",
      "path" : "FRLMCondition.period.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMCondition.severity",
      "path" : "FRLMCondition.severity",
      "short" : "Sévérité de la manifestion",
      "definition" : "Sévérité de la manifestion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SNOMED_CT => Valeur issue du jdv-severite-observation-cisis (1.2.250.1.213.1.1.5.675)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMCondition.clinicalStatus",
      "path" : "FRLMCondition.clinicalStatus",
      "short" : "Statut clinique du patient",
      "definition" : "Statut clinique du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMCondition.bodySite",
      "path" : "FRLMCondition.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMCondition.stage",
      "path" : "FRLMCondition.stage",
      "short" : "Stade/Grade. codeSystem spécifique au contexte.\nBinding Description: (preferred): e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …",
      "definition" : "Stade/Grade. codeSystem spécifique au contexte.\nBinding Description: (preferred): e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMCondition.diagnosisAssertionStatus",
      "path" : "FRLMCondition.diagnosisAssertionStatus",
      "short" : "Certitude",
      "definition" : "Certitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du jdv-hl7-condition-ver-status-cisis (2.16.840.1.113883.4.642.3.166)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMCondition.reference",
      "path" : "FRLMCondition.reference",
      "short" : "Cet élément contient l’URL du document",
      "definition" : "Cet élément contient l’URL du document",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "FRLMCondition.note",
      "path" : "FRLMCondition.note",
      "short" : "commentaire",
      "definition" : "commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
