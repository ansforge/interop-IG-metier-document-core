# Mapping FRLMPrescriptionItem → FRCDATraitementPrescrit / FRLMPrescriptionItem → FRMedicationRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPrescriptionItem → FRCDATraitementPrescrit / FRLMPrescriptionItem → FRMedicationRequestDocument 

 
Mapping des éléments du modèle métier FRLMPrescriptionItem vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Traitement prescrit",
  "status" : "draft",
  "date" : "2026-08-20T08:45:34+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPrescriptionItem vers l'entrée CDA FRCDATraitementPrescrit, puis vers le profil FHIR FRMedicationRequestDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-item",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-prescrit",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPrescriptionItem",
      "target" : [{
        "code" : "FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.identifier",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.status",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.statusReason[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.medication",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.indication[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.intendedUseType",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.periodOfUse",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.quantityPrescribed",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frQuantiteDeProduit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.validityPeriod",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frPeriodeDeRenouvellement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frAutorisationSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.reason[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.numberOfRepeats",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.repeatNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.minimumDispenseInterval",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.offLabel.isOffLabelUse",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frHorsAMM",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.offLabel.reason[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.note",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frInstructionsAuDispensateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecALD",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frEnRapportAvecPrevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.nonRemboursable",
      "target" : [{
        "code" : "FRCDATraitementPrescrit.entryRelationship:frNonRemboursable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-item",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPrescriptionItem",
      "target" : [{
        "code" : "FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.identifier",
      "target" : [{
        "code" : "FRMedicationRequestDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.status",
      "target" : [{
        "code" : "FRMedicationRequestDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.requester",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.statusReason[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.medication",
      "target" : [{
        "code" : "FRMedicationRequestDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.indication[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.intendedUseType",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.periodOfUse",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.timing.repeat.offset",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.quantityPrescribed",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.validityPeriod",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.validityPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.substitution.allowedCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.reason[x]",
      "target" : [{
        "code" : "FRMedicationRequestDocument.substitution.reason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.numberOfRepeats",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.numberOfRepeatsAllowed",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.minimumDispenseInterval",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.dispenseInterval",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.offLabel.isOffLabelUse",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:offLabelUse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.offLabel.reason[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.note",
      "target" : [{
        "code" : "FRMedicationRequestDocument.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecALD",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:FRObservationALDDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:FRObservationWorkRelatedAccidentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "target" : [{
        "code" : "FRMedicationRequestDocument.reasonReference:FRObservationPreventionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.nonRemboursable",
      "target" : [{
        "code" : "FRMedicationRequestDocument.extension:FRNotCoveredExtension",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
