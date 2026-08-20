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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationUse",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.status",
      "target" : [{
        "code" : "SubstanceAdministration.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.author[x]",
      "target" : [{
        "code" : "SubstanceAdministration.author",
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
        "code" : "SubstanceAdministration.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.reason[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
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
        "code" : "SubstanceAdministration.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.derivedFrom[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.note",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-ml-medication-use",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-statement-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationUse",
      "target" : [{
        "code" : "MedicationStatement",
        "display" : "FRMedicationStatementDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.header.status",
      "target" : [{
        "code" : "MedicationStatement.status",
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
        "code" : "MedicationStatement.extension:adherence-code",
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
        "code" : "MedicationStatement.medication[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.reason[x]",
      "target" : [{
        "code" : "MedicationStatement.reason[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions",
      "target" : [{
        "code" : "MedicationStatement.dosage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationStatement.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationStatement.dosage.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationStatement.dosage.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationStatement.dosage.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing.repeat.offset",
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
        "code" : "MedicationStatement.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.periodOfUse",
      "target" : [{
        "code" : "MedicationStatement.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.derivedFrom[x]",
      "target" : [{
        "code" : "MedicationStatement.derivedFrom[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.note",
      "target" : [{
        "code" : "MedicationStatement.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
