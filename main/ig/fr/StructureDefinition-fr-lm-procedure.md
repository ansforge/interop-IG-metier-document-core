# Logical model- FR LM Procedure - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Procedure 

 
Acte 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Course of encounter](StructureDefinition-fr-lm-course-of-encounter.md), [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md)... Show 7 more, [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Patient Education](StructureDefinition-fr-lm-patient-education.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [logical model - FR LM Procedures](StructureDefinition-fr-lm-procedures.md) and [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-procedure)

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

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

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

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-procedure.csv), [Excel](../StructureDefinition-fr-lm-procedure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-procedure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure",
  "version" : "0.1.0",
  "name" : "FRLMProcedure",
  "title" : "Logical model- FR LM Procedure",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-procedure",
      "path" : "fr-lm-procedure",
      "short" : "Logical model- FR LM Procedure",
      "definition" : "Acte"
    },
    {
      "id" : "fr-lm-procedure.header.status",
      "path" : "fr-lm-procedure.header.status",
      "short" : "Statut de l'acte",
      "min" : 1,
      "binding" : {
        "description" : "jdv-hl7-v3-ActStatus-cisis (2.16.840.1.113883.1.11.15933)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActStatus-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-procedure.code",
      "path" : "fr-lm-procedure.code",
      "short" : "Code de l'acte",
      "definition" : "Code de l'acte",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "CCAM (1.2.250.1.215.300.1)"
      }
    },
    {
      "id" : "fr-lm-procedure.procedureDate[x]",
      "path" : "fr-lm-procedure.procedureDate[x]",
      "short" : "Période de l'acte",
      "definition" : "Période de l'acte",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "fr-lm-procedure.procedureDate[x].procedureDateDateTime",
      "path" : "fr-lm-procedure.procedureDate[x].procedureDateDateTime",
      "short" : "Date de début de l'acte",
      "definition" : "Date de début de l'acte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-procedure.procedureDate[x].procedureDatePeriod",
      "path" : "fr-lm-procedure.procedureDate[x].procedureDatePeriod",
      "short" : "Date de fin de l'acte",
      "definition" : "Date de fin de l'acte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-procedure.priority",
      "path" : "fr-lm-procedure.priority",
      "short" : "Priorité",
      "definition" : "Priorité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-v3-ActPriority-cisis (2.16.840.1.113883.1.11.16866) ou autre JDV"
      }
    },
    {
      "id" : "fr-lm-procedure.bodySite",
      "path" : "fr-lm-procedure.bodySite",
      "short" : "localisation anatomique",
      "definition" : "localisation anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }],
      "binding" : {
        "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
      }
    },
    {
      "id" : "fr-lm-procedure.approachSiteCode",
      "path" : "fr-lm-procedure.approachSiteCode",
      "short" : "Voie d’abord",
      "definition" : "Voie d’abord",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
      }
    },
    {
      "id" : "fr-lm-procedure.difficulty",
      "path" : "fr-lm-procedure.difficulty",
      "short" : "Difficulté",
      "definition" : "Difficulté",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-procedure.reason[x]",
      "path" : "fr-lm-procedure.reason[x]",
      "short" : "Motif de l’acte.\n- motif codé (spécifique à un  contexte)\n- motif : un problème\n- motif : une observation\n- motif : un acte\n- motif : une rencontre (consultation, etc…)",
      "definition" : "Motif de l’acte.\n- motif codé (spécifique à un  contexte)\n- motif : un problème\n- motif : une observation\n- motif : un acte\n- motif : une rencontre (consultation, etc…)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    },
    {
      "id" : "fr-lm-procedure.outcome",
      "path" : "fr-lm-procedure.outcome",
      "short" : "Résultat immédiat de l'acte (succès, échec, ...). Ne concerne pas l'évaluation sur une période plus longue.",
      "definition" : "Résultat immédiat de l'acte (succès, échec, ...). Ne concerne pas l'évaluation sur une période plus longue.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-procedure.complication",
      "path" : "fr-lm-procedure.complication",
      "short" : "Complication survenue pendant l'acte ou immédiatement après uniquement.",
      "definition" : "Complication survenue pendant l'acte ou immédiatement après uniquement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): ICD-10, SNOMED CT"
      }
    },
    {
      "id" : "fr-lm-procedure.deviceUsed",
      "path" : "fr-lm-procedure.deviceUsed",
      "short" : "Dispositif médical utilisé pendant l'acte",
      "definition" : "Dispositif médical utilisé pendant l'acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-procedure.focalDevice",
      "path" : "fr-lm-procedure.focalDevice",
      "short" : "Dispositif implanté, retiré ou manipulé chez le patient (étalonnage, remplacement de la batterie, pose d'une prothèse, fixation d'un système de drainage des plaies par aspiration, etc.).",
      "definition" : "Dispositif implanté, retiré ou manipulé chez le patient (étalonnage, remplacement de la batterie, pose d'une prothèse, fixation d'un système de drainage des plaies par aspiration, etc.).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-procedure.note",
      "path" : "fr-lm-procedure.note",
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
