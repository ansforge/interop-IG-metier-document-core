# Logical model - FR LM Supporting Information - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Supporting Information 

 
Section Informations Cliniques 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMSupportingInformation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMSupportingInformation.csv), [Excel](../StructureDefinition-FRLMSupportingInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSupportingInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
  "version" : "0.1.0",
  "name" : "FRLMSupportingInformation",
  "title" : "Logical model - FR LM Supporting Information",
  "status" : "draft",
  "date" : "2026-08-23T21:45:18+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Informations Cliniques",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSupportingInformation",
      "path" : "FRLMSupportingInformation",
      "short" : "Logical model - FR LM Supporting Information",
      "definition" : "Section Informations Cliniques"
    },
    {
      "id" : "FRLMSupportingInformation.titleSection",
      "path" : "FRLMSupportingInformation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMSupportingInformation.subSection",
      "path" : "FRLMSupportingInformation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMSupportingInformation.entry",
      "path" : "FRLMSupportingInformation.entry",
      "min" : 1
    },
    {
      "id" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "path" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "short" : "Résultats d'examens antérieurs pertinents",
      "definition" : "Résultats d'examens antérieurs pertinents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "path" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "path" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.contraIndication",
      "path" : "FRLMSupportingInformation.entry.contraIndication",
      "short" : "Observation",
      "definition" : "Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.condition",
      "path" : "FRLMSupportingInformation.entry.condition",
      "short" : "Problème",
      "definition" : "Problème",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.device",
      "path" : "FRLMSupportingInformation.entry.device",
      "short" : "Dispositif médical",
      "definition" : "Dispositif médical",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "path" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "short" : "Statut grossesse",
      "definition" : "Statut grossesse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "path" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "short" : "Produits de santé administré avant l'examen d'imagerie",
      "definition" : "Produits de santé administré avant l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDICOMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "path" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "short" : "Sexe Clinique",
      "definition" : "Sexe Clinique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
