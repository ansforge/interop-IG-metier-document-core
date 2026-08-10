# Mapping FRLMMedicationDispense → FRCDATraitementDispense / FRLMMedicationDispense → FRMedicationDispenseDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationDispense → FRCDATraitementDispense / FRLMMedicationDispense → FRMedicationDispenseDocument 

 
Mapping des éléments du modèle métier FRLMMedicationDispense vers le profil CDA FRCDATraitementDispense (Groupe 1), et vers le profil FHIR FRMedicationDispenseDocument (Groupe 2). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationDispenseLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationDispenseLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement dispensé\"",
  "status" : "draft",
  "date" : "2026-08-10T19:10:11+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationDispense vers le profil CDA FRCDATraitementDispense (Groupe 1), et vers le profil FHIR FRMedicationDispenseDocument (Groupe 2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-dispense",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-dispense",
    "element" : [{
      "code" : "FRLMMedicationDispense",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.identifier",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.author[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.status",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.receiver[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.relatedRequest",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frReferenceItemPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.medicament",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.product:frProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dispensedQuantity",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.timeOfDispensation",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.substitutionOccurred",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frActeSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "FRCDATraitementDispense.entryRelationship:frTraitement.entryRelationship:frNotesDuDispensateur",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-dispense",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-dispense-document",
    "element" : [{
      "code" : "FRLMMedicationDispense",
      "target" : [{
        "code" : "FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.identifier",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.author[x]",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.performer.actor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.status",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.receiver[x]",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.receiver",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.relatedRequest",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.authorizingPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.medicament",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dispensedQuantity",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.timeOfDispensation",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.whenHandedOver",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.substitutionOccurred",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.substitution.wasSubstituted",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.timing.repeat.offset",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
