# Mapping FRLMMedicationUse → FRCDATraitement / FRLMMedicationUse → FRMedicationStatementDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationUse → FRCDATraitement / FRLMMedicationUse → FRMedicationStatementDocument 

 
Mapping des éléments du modèle métier FRLMMedicationUse vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationStatementLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationStatementLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\"",
  "status" : "draft",
  "date" : "2026-08-12T09:25:55+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationUse vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-use",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement",
    "element" : [{
      "code" : "FRLMMedicationUse",
      "target" : [{
        "code" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.status",
      "target" : [{
        "code" : "FRCDATraitement.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.author[x]",
      "target" : [{
        "code" : "FRCDATraitement.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.treatmentStatus",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.changeType",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.medication",
      "target" : [{
        "code" : "FRCDATraitement.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.reason[x]",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRCDATraitement.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRCDATraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRCDATraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRCDATraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.derivedFrom[x]",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.note",
      "target" : [{
        "code" : "FRCDATraitement.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-medication-use",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-statement-document",
    "element" : [{
      "code" : "FRLMMedicationUse",
      "target" : [{
        "code" : "FRMedicationStatementDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.status",
      "target" : [{
        "code" : "FRMedicationStatementDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.author[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.treatmentStatus",
      "target" : [{
        "code" : "FRMedicationStatementDocument.extension:adherence-code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.changeType",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.medication",
      "target" : [{
        "code" : "FRMedicationStatementDocument.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.reason[x]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.reason[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.timing.repeat.offset",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.periodOfUse",
      "target" : [{
        "code" : "FRMedicationStatementDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.derivedFrom[x]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.derivedFrom[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.note",
      "target" : [{
        "code" : "FRMedicationStatementDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
