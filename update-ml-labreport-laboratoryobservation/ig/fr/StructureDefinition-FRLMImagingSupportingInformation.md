# Logical model - FR LM Imaging Supporting Information - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Imaging Supporting Information 

 
Section Informations Cliniques 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMImagingSupportingInformation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMImagingSupportingInformation.csv), [Excel](../StructureDefinition-FRLMImagingSupportingInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMImagingSupportingInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation",
  "version" : "0.1.0",
  "name" : "FRLMImagingSupportingInformation",
  "title" : "Logical model - FR LM Imaging Supporting Information",
  "status" : "draft",
  "date" : "2026-09-14T13:28:49+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMImagingSupportingInformation",
      "path" : "FRLMImagingSupportingInformation",
      "short" : "Logical model - FR LM Imaging Supporting Information",
      "definition" : "Section Informations Cliniques"
    },
    {
      "id" : "FRLMImagingSupportingInformation.titleSection",
      "path" : "FRLMImagingSupportingInformation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMImagingSupportingInformation.subSection",
      "path" : "FRLMImagingSupportingInformation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry",
      "path" : "FRLMImagingSupportingInformation.entry",
      "min" : 1
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.previousResultsInformation",
      "path" : "FRLMImagingSupportingInformation.entry.previousResultsInformation",
      "short" : "Résultats d'examens antérieurs pertinents",
      "definition" : "Résultats d'examens antérieurs pertinents",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness[x]",
      "path" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness[x]",
      "short" : "Antécédents médicaux",
      "definition" : "Antécédents médicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.historyOfPastProcedures",
      "path" : "FRLMImagingSupportingInformation.entry.historyOfPastProcedures",
      "short" : "Antécédents chirurgicaux",
      "definition" : "Antécédents chirurgicaux",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.contraIndication",
      "path" : "FRLMImagingSupportingInformation.entry.contraIndication",
      "short" : "Contre-indications",
      "definition" : "Contre-indications",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.condition",
      "path" : "FRLMImagingSupportingInformation.entry.condition",
      "short" : "Problème",
      "definition" : "Problème",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.device",
      "path" : "FRLMImagingSupportingInformation.entry.device",
      "short" : "Dispositif médical",
      "definition" : "Dispositif médical",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.pregnancyStatus",
      "path" : "FRLMImagingSupportingInformation.entry.pregnancyStatus",
      "short" : "Statut grossesse",
      "definition" : "Statut grossesse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.priorMedicationAdministration",
      "path" : "FRLMImagingSupportingInformation.entry.priorMedicationAdministration",
      "short" : "Produits de santé administré avant l'examen d'imagerie",
      "definition" : "Produits de santé administré avant l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDICOMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMImagingSupportingInformation.entry.sexForClinicalUse",
      "path" : "FRLMImagingSupportingInformation.entry.sexForClinicalUse",
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
