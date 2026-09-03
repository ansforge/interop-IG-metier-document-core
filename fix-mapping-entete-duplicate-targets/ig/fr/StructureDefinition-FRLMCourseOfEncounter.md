# Logical model - FR LM Course of encounter - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Course of encounter 

 
Section Résultats d'événements 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMCourseOfEncounter)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMCourseOfEncounter.csv), [Excel](../StructureDefinition-FRLMCourseOfEncounter.xlsx) 



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
  "date" : "2026-09-03T10:35:28+00:00",
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
