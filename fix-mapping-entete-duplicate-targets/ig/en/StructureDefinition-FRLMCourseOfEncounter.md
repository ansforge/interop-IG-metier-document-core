# Logical model - FR LM Course of encounter - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Course of encounter 

 
Section Résultats d'événements 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMCourseOfEncounter.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMCourseOfEncounter.csv), [Excel](../StructureDefinition-FRLMCourseOfEncounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMCourseOfEncounter",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCourseOfEncounter",
  "version" : "0.1.0",
  "name" : "FRLMCourseOfEncounter",
  "title" : "Logical model - FR LM Course of encounter",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCourseOfEncounter",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMCourseOfEncounter",
      "path" : "FRLMCourseOfEncounter",
      "short" : "Logical model - FR LM Course of encounter",
      "definition" : "Section Résultats d'événements"
    },
    {
      "id" : "FRLMCourseOfEncounter.subSection",
      "path" : "FRLMCourseOfEncounter.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.testResults",
      "path" : "FRLMCourseOfEncounter.entry.testResults",
      "short" : "Résultats",
      "definition" : "Résultats",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.patientTransfer",
      "path" : "FRLMCourseOfEncounter.entry.patientTransfer",
      "short" : "Transfert du patient",
      "definition" : "Transfert du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientTransfer"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.diagnosticSummary",
      "path" : "FRLMCourseOfEncounter.entry.diagnosticSummary",
      "short" : "Problème",
      "definition" : "Problème",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.procedures",
      "path" : "FRLMCourseOfEncounter.entry.procedures",
      "short" : "Acte",
      "definition" : "Acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.medicalDevicesAndImplants",
      "path" : "FRLMCourseOfEncounter.entry.medicalDevicesAndImplants",
      "short" : "Dispositif médical et implant",
      "definition" : "Dispositif médical et implant",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.medications",
      "path" : "FRLMCourseOfEncounter.entry.medications",
      "short" : "Traitement administré pendant le séjour",
      "definition" : "Traitement administré pendant le séjour",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.reactions",
      "path" : "FRLMCourseOfEncounter.entry.reactions",
      "short" : "événement indésirable",
      "definition" : "événement indésirable",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.reactions.reactionDuringEncounter",
      "path" : "FRLMCourseOfEncounter.entry.reactions.reactionDuringEncounter",
      "short" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation",
      "definition" : "Description sous forme textuelle des évènements indésirables survenus pendant l'hospitalisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.reactions.reactionFollowingAdministrationBloodDerivatives",
      "path" : "FRLMCourseOfEncounter.entry.reactions.reactionFollowingAdministrationBloodDerivatives",
      "short" : "Description sous forme textuelle des réactions indésirables survenues après l'administration de dérivés sanguins",
      "definition" : "Description sous forme textuelle des réactions indésirables survenues après l'administration de dérivés sanguins",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMCourseOfEncounter.entry.notes",
      "path" : "FRLMCourseOfEncounter.entry.notes",
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
