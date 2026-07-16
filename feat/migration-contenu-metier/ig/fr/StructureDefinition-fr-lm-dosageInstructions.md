# Logical model- FR LM Dosage Instructions - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model- FR LM Dosage Instructions 

 
Posologie 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model- FR LM Medication Administration ](StructureDefinition-fr-lm-medication-administration.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md) and [Logical model - FR LM Medication Prescription](StructureDefinition-fr-lm-prescription-item.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-dosageInstructions)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

**Structures**

Cette structure fait référence à ces autres structures:

* [SimpleQuantity (http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1)](http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-dosageInstructions.csv), [Excel](../StructureDefinition-fr-lm-dosageInstructions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-dosageInstructions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dosageInstructions",
  "version" : "0.1.0",
  "name" : "FRLMDosageInstructions",
  "title" : "Logical model- FR LM Dosage Instructions",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Posologie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dosageInstructions",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-dosageInstructions",
      "path" : "fr-lm-dosageInstructions",
      "short" : "Logical model- FR LM Dosage Instructions",
      "definition" : "Posologie"
    },
    {
      "id" : "fr-lm-dosageInstructions.renderedDosageInstruction",
      "path" : "fr-lm-dosageInstructions.renderedDosageInstruction",
      "short" : "Posologie sous forme textuelle",
      "definition" : "Posologie sous forme textuelle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails",
      "path" : "fr-lm-dosageInstructions.dosageDetails",
      "short" : "Posologie Structurée",
      "definition" : "Posologie Structurée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.sequence",
      "path" : "fr-lm-dosageInstructions.dosageDetails.sequence",
      "short" : "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément.",
      "definition" : "Numéro de séquence permettant d'indiquer l'ordre des posologies dans le cas où il y a plusieurs posologies. La séquence s+1 commence à la fin de la séquence s. En cas de séquences ayant le même numéro, celles-ci se déroulent simultanément.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.note",
      "path" : "fr-lm-dosageInstructions.dosageDetails.note",
      "short" : "Instructions au patient",
      "definition" : "Instructions au patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate",
      "path" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate",
      "short" : "Quantité de médicament administrée par prise",
      "definition" : "Quantité de médicament administrée par prise",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "path" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "short" : "La quantité de médicament administrée par prise\nExemple - 20mg: {'value':20,'unit':'mg','system':'http://unitsofmeasure.org','code':'mg'}\nExemple - 1 à 3 comprimés: {'low':{'value':1,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'},'high':{'value':3,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'}}",
      "definition" : "La quantité de médicament administrée par prise\nExemple - 20mg: {'value':20,'unit':'mg','system':'http://unitsofmeasure.org','code':'mg'}\nExemple - 1 à 3 comprimés: {'low':{'value':1,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'},'high':{'value':3,'unit':'Comprimé','system':'http://standardterms.edqm.eu','code':'15054000'}}",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "path" : "fr-lm-dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "short" : "Rythme d'administration\nPériode temporelle pendant laquelle une dose définie est administrée, pour les perfusions par exemple.\nExemple - 400µg pendant une minute (perfusion): {'numerator':{'value':400,'unit':'µg','system':'http://unitsofmeasure.org','code':'µg'},'denominator':{'value':1,'unit':'min','system':'http://unitsofmeasure.org','code':'min'}}",
      "definition" : "Rythme d'administration\nPériode temporelle pendant laquelle une dose définie est administrée, pour les perfusions par exemple.\nExemple - 400µg pendant une minute (perfusion): {'numerator':{'value':400,'unit':'µg','system':'http://unitsofmeasure.org','code':'µg'},'denominator':{'value':1,'unit':'min','system':'http://unitsofmeasure.org','code':'min'}}",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "Ratio"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.dateOfAdministration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.dateOfAdministration",
      "short" : "Date précise du moment de prise",
      "definition" : "Date précise du moment de prise",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.conditionOfAdministration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.conditionOfAdministration",
      "short" : "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs).",
      "definition" : "Code ou texte de la condition sous laquelle le traitement doit être pris (ex : en cas de douleurs).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.date[x]",
      "path" : "fr-lm-dosageInstructions.dosageDetails.date[x]",
      "short" : "Période (date de début et de fin), durée ou intervalle de durée de la séquence de traitement (un parmi les trois)\nExemple - La période représente une date de début et de fin (ex : du 1/10/2025 au 10/10/2025), la durée représente une quantité (ex : 5 jours), l'intervalle représente une quantité minimale et une quantité maximale (ex : de 5 à 10 jours)): {}",
      "definition" : "Période (date de début et de fin), durée ou intervalle de durée de la séquence de traitement (un parmi les trois)\nExemple - La période représente une date de début et de fin (ex : du 1/10/2025 au 10/10/2025), la durée représente une quantité (ex : 5 jours), l'intervalle représente une quantité minimale et une quantité maximale (ex : de 5 à 10 jours)): {}",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.duration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.duration",
      "short" : "Durée ou rythme d'administration - indique le temps d'administration des prises de la séquence (exemple d'utilisation : perfusion ou patch)\nExemple - Administration pendant 10 minutes: {}",
      "definition" : "Durée ou rythme d'administration - indique le temps d'administration des prises de la séquence (exemple d'utilisation : perfusion ou patch)\nExemple - Administration pendant 10 minutes: {}",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.duration.durationValue",
      "path" : "fr-lm-dosageInstructions.dosageDetails.duration.durationValue",
      "short" : "Durée de l'administration",
      "definition" : "Durée de l'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.duration.durationUnit",
      "path" : "fr-lm-dosageInstructions.dosageDetails.duration.durationUnit",
      "short" : "Unité de la durée d'administration",
      "definition" : "Unité de la durée d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.duration.durationMax",
      "path" : "fr-lm-dosageInstructions.dosageDetails.duration.durationMax",
      "short" : "Durée maximale de l'administration",
      "definition" : "Durée maximale de l'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency",
      "short" : "Fréquence de prise",
      "definition" : "Fréquence de prise",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "short" : "Nombre de prise de la quantité 'quantitePrescrite' par période (ex : *une fois* dans une fois tous les trois jours)",
      "definition" : "Nombre de prise de la quantité 'quantitePrescrite' par période (ex : *une fois* dans une fois tous les trois jours)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency.period",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency.period",
      "short" : "Durée sur laquelle la fréquence s'applique (ex : *tous les trois jours* une fois tous les trois jours)",
      "definition" : "Durée sur laquelle la fréquence s'applique (ex : *tous les trois jours* une fois tous les trois jours)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "short" : "Jour de la semaine de la prise",
      "definition" : "Jour de la semaine de la prise",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency.timeOfDay",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency.timeOfDay",
      "short" : "Heure de la prise",
      "definition" : "Heure de la prise",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "path" : "fr-lm-dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "short" : "Instruction additionnelle",
      "definition" : "Instruction additionnelle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.eventTime",
      "path" : "fr-lm-dosageInstructions.dosageDetails.eventTime",
      "short" : "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)",
      "definition" : "Définition du moment de prise au cours de la journée (ex : 30 minutes avant le repas)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "path" : "fr-lm-dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "short" : "Code ou texte du moment de prise",
      "definition" : "Code ou texte du moment de prise",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.eventTime.offset",
      "path" : "fr-lm-dosageInstructions.dosageDetails.eventTime.offset",
      "short" : "Temps en minute avant/après l'élément déclenchant",
      "definition" : "Temps en minute avant/après l'élément déclenchant",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.eventEndSequence",
      "path" : "fr-lm-dosageInstructions.dosageDetails.eventEndSequence",
      "short" : "Evenement de fin de la séquence",
      "definition" : "Evenement de fin de la séquence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.bodySite",
      "path" : "fr-lm-dosageInstructions.dosageDetails.bodySite",
      "short" : "région anatomique d'administration",
      "definition" : "région anatomique d'administration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.routeOfAdministration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.routeOfAdministration",
      "short" : "Voie d'administration",
      "definition" : "Voie d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod",
      "path" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod",
      "short" : "Dose maximale pour un temps donné (exemple : prise maximale pour 24h).",
      "definition" : "Dose maximale pour un temps donné (exemple : prise maximale pour 24h).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "path" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "short" : "Dose maximale à administrer pour l'unité de temps donnée",
      "definition" : "Dose maximale à administrer pour l'unité de temps donnée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity|4.0.1"]
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "short" : "Durée pour laquelle il y a une dose maximale administrable\nExemple - Par jour, par semaine, par mois, ...: {}",
      "definition" : "Durée pour laquelle il y a une dose maximale administrable\nExemple - Par jour, par semaine, par mois, ...: {}",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerAdministration",
      "path" : "fr-lm-dosageInstructions.dosageDetails.maxDosePerAdministration",
      "short" : "Dose maximale pour une administration",
      "definition" : "Dose maximale pour une administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-dosageInstructions.dosageDetails.maxLifetimeDose",
      "path" : "fr-lm-dosageInstructions.dosageDetails.maxLifetimeDose",
      "short" : "Dose maximale sur une vie",
      "definition" : "Dose maximale sur une vie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
