# Logical model - FR LM Course of encounter - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Course of encounter 

 
Section Résultats d'événements 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-course-of-encounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-course-of-encounter.csv), [Excel](../StructureDefinition-fr-lm-course-of-encounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-course-of-encounter",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-course-of-encounter",
  "version" : "0.1.0",
  "name" : "FRLMCourseOfEncounter",
  "title" : "Logical model - FR LM Course of encounter",
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
  "description" : "Section Résultats d'événements",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-course-of-encounter",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-course-of-encounter",
      "path" : "fr-lm-course-of-encounter",
      "short" : "Logical model - FR LM Course of encounter",
      "definition" : "Section Résultats d'événements"
    },
    {
      "id" : "fr-lm-course-of-encounter.subSection",
      "path" : "fr-lm-course-of-encounter.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.testResults",
      "path" : "fr-lm-course-of-encounter.entry.testResults",
      "short" : "Résultats",
      "definition" : "Résultats",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.patientTransfer",
      "path" : "fr-lm-course-of-encounter.entry.patientTransfer",
      "short" : "Transfert du patient",
      "definition" : "Transfert du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-transfer"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.diagnosticSummary",
      "path" : "fr-lm-course-of-encounter.entry.diagnosticSummary",
      "short" : "Problème",
      "definition" : "Problème",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.procedures",
      "path" : "fr-lm-course-of-encounter.entry.procedures",
      "short" : "Acte",
      "definition" : "Acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.medicalDevicesAndImplants",
      "path" : "fr-lm-course-of-encounter.entry.medicalDevicesAndImplants",
      "short" : "Dispositif médical et implant",
      "definition" : "Dispositif médical et implant",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device-use"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.medications",
      "path" : "fr-lm-course-of-encounter.entry.medications",
      "short" : "Traitement administré pendant le séjour",
      "definition" : "Traitement administré pendant le séjour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.reactions",
      "path" : "fr-lm-course-of-encounter.entry.reactions",
      "short" : "événement indésirable",
      "definition" : "événement indésirable",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.reactions.reactionDuringEncounter",
      "path" : "fr-lm-course-of-encounter.entry.reactions.reactionDuringEncounter",
      "short" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation",
      "definition" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.reactions.reactionFollowingAdministrationBloodDerivatives",
      "path" : "fr-lm-course-of-encounter.entry.reactions.reactionFollowingAdministrationBloodDerivatives",
      "short" : "Description sous forme textuelle des réactions indésirables survenues après l'administration de dérivés sanguins",
      "definition" : "Description sous forme textuelle des réactions indésirables survenues après l'administration de dérivés sanguins",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-course-of-encounter.entry.notes",
      "path" : "fr-lm-course-of-encounter.entry.notes",
      "short" : "Note",
      "definition" : "Note",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
