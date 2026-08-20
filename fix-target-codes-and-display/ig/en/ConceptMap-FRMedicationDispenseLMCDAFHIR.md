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
  "date" : "2026-08-20T08:53:12+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-dispense",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationDispense",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement",
        "display" : "FRCDATraitementDispense.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.identifier",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.id",
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
        "code" : "Supply.entryRelationship:frTraitement.statusCode",
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
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frReferenceItemPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.medicament",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.product:frProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dispensedQuantity",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.quantity",
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
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frActeSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.text",
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
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
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
        "code" : "Supply.entryRelationship:frTraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement.entryRelationship:frNotesDuDispensateur",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-dispense-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationDispense",
      "target" : [{
        "code" : "MedicationDispense",
        "display" : "FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.identifier",
      "target" : [{
        "code" : "MedicationDispense.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.author[x]",
      "target" : [{
        "code" : "MedicationDispense.performer.actor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.status",
      "target" : [{
        "code" : "MedicationDispense.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.receiver[x]",
      "target" : [{
        "code" : "MedicationDispense.receiver",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.relatedRequest",
      "target" : [{
        "code" : "MedicationDispense.authorizingPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.medicament",
      "target" : [{
        "code" : "MedicationDispense.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dispensedQuantity",
      "target" : [{
        "code" : "MedicationDispense.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.timeOfDispensation",
      "target" : [{
        "code" : "MedicationDispense.whenHandedOver",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.substitutionOccurred",
      "target" : [{
        "code" : "MedicationDispense.substitution.wasSubstituted",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing.repeat.offset",
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
        "code" : "MedicationDispense.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "MedicationDispense.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
