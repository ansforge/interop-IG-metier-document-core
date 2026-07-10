# Logical model - FR LM Condition - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Condition 

 
Problème 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Admission Evaluation](StructureDefinition-fr-lm-admission-evaluation.md), [Modèle logique métier - FR LM Adverse Drug Reaction](StructureDefinition-fr-lm-adverse-drug-reaction.md), [Logical model - FR LM Care Plan](StructureDefinition-fr-lm-care-plan.md), [Logical model - FR LM Conclusion](StructureDefinition-fr-lm-conclusion.md)... Show 12 more, [Logical model - FR LM Course of encounter](StructureDefinition-fr-lm-course-of-encounter.md), [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM FRLM History Of Past Illness](StructureDefinition-fr-lm-history-of-past-illness.md), [Logical model - FR LM Immunisation](StructureDefinition-fr-lm-immunisation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-fr-lm-medication-administration.md), [Logical model - FR LM Order](StructureDefinition-fr-lm-order.md), [Logical model - FR LM Problems](StructureDefinition-fr-lm-problems.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [Logical model - FR LM Reason for referral](StructureDefinition-fr-lm-reason-for-referral.md), [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md) and [Logical model - FR LM Supporting Information](StructureDefinition-fr-lm-supporting-information.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-condition)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-condition.csv), [Excel](../StructureDefinition-fr-lm-condition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-condition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition",
  "version" : "0.1.0",
  "name" : "FRLMCondition",
  "title" : "Logical model - FR LM Condition",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-condition",
      "path" : "fr-lm-condition",
      "short" : "Logical model - FR LM Condition",
      "definition" : "Problème"
    },
    {
      "id" : "fr-lm-condition.header.status",
      "path" : "fr-lm-condition.header.status",
      "short" : "Statut du problème",
      "binding" : {
        "description" : "Valeur issue du jdv-hl7-condition-clinical-cisis (2.16.840.1.113883.4.642.3.164)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-clinical-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-condition.type",
      "path" : "fr-lm-condition.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Valeur issue du jdv-code-probleme-cisis (1.2.250.1.213.1.1.5.172)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-code-probleme-cisis|20260619134043"
      }
    },
    {
      "id" : "fr-lm-condition.problem",
      "path" : "fr-lm-condition.problem",
      "short" : "Problème observé :\n - CIM-10 (2.16.840.1.113883.6.3) ; \n - CISP-2 (2.16.840.1.113883.6.139) ;\n - CISP-3 / DRC (1.2.250.1.213.2.9) ;\n - OrphaCodes (1.2.250.1.213.2.49)",
      "definition" : "Problème observé :\n - CIM-10 (2.16.840.1.113883.6.3) ; \n - CISP-2 (2.16.840.1.113883.6.139) ;\n - CISP-3 / DRC (1.2.250.1.213.2.9) ;\n - OrphaCodes (1.2.250.1.213.2.49)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-condition.period",
      "path" : "fr-lm-condition.period",
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
      "id" : "fr-lm-condition.period.onsetDate",
      "path" : "fr-lm-condition.period.onsetDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-condition.period.endDate",
      "path" : "fr-lm-condition.period.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-condition.severity",
      "path" : "fr-lm-condition.severity",
      "short" : "Sévérité de la manifestion",
      "definition" : "Sévérité de la manifestion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): SNOMED_CT => Valeur issue du jdv-severite-observation-cisis (1.2.250.1.213.1.1.5.675)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-condition.clinicalStatus",
      "path" : "fr-lm-condition.clinicalStatus",
      "short" : "Statut clinique du patient",
      "definition" : "Statut clinique du patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-condition.bodySite",
      "path" : "fr-lm-condition.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-condition.stage",
      "path" : "fr-lm-condition.stage",
      "short" : "Stade/Grade. codeSystem spécifique au contexte.\nBinding Description: (preferred): e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …",
      "definition" : "Stade/Grade. codeSystem spécifique au contexte.\nBinding Description: (preferred): e.g. TNM, ICD-O-3, Bi-Rads, Li-Rads, …",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-condition.diagnosisAssertionStatus",
      "path" : "fr-lm-condition.diagnosisAssertionStatus",
      "short" : "Certitude",
      "definition" : "Certitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Valeur issue du jdv-hl7-condition-ver-status-cisis (2.16.840.1.113883.4.642.3.166)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-condition.reference",
      "path" : "fr-lm-condition.reference",
      "short" : "Cet élément contient l’URL du document",
      "definition" : "Cet élément contient l’URL du document",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "fr-lm-condition.note",
      "path" : "fr-lm-condition.note",
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
