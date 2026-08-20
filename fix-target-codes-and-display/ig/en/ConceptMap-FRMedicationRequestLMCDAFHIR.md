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
  "date" : "2026-08-20T15:08:45+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-prescrit",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPrescriptionItem",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.identifier",
      "target" : [{
        "code" : "SubstanceAdministration.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.status",
      "target" : [{
        "code" : "SubstanceAdministration.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "SubstanceAdministration.author",
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
        "code" : "SubstanceAdministration.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.indication[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frReferenceInterne",
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
        "code" : "SubstanceAdministration.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.text",
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
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frInstructionsAuPatient",
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
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.quantityPrescribed",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frQuantiteDeProduit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.validityPeriod",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frPeriodeDeRenouvellement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frAutorisationSubstitution",
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
        "code" : "SubstanceAdministration.repeatNumber",
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
        "code" : "SubstanceAdministration.entryRelationship:frHorsAMM",
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
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuDispensateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecALD",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frEnRapportAvecPrevention",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.nonRemboursable",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frNonRemboursable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPrescriptionItem",
      "target" : [{
        "code" : "MedicationRequest",
        "display" : "FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.identifier",
      "target" : [{
        "code" : "MedicationRequest.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.status",
      "target" : [{
        "code" : "MedicationRequest.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "MedicationRequest.requester",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.header.author[x]",
      "target" : [{
        "code" : "MedicationRequest.extension:FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.statusReason[x]",
      "target" : [{
        "code" : "MedicationRequest.statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.medication",
      "target" : [{
        "code" : "MedicationRequest.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.indication[x]",
      "target" : [{
        "code" : "MedicationRequest.reasonReference",
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
        "code" : "MedicationRequest.dosageInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.asNeededCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
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
        "code" : "MedicationRequest.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.quantityPrescribed",
      "target" : [{
        "code" : "MedicationRequest.dispenseRequest.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.validityPeriod",
      "target" : [{
        "code" : "MedicationRequest.dispenseRequest.validityPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "target" : [{
        "code" : "MedicationRequest.substitution.allowedCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.substitution.reason[x]",
      "target" : [{
        "code" : "MedicationRequest.substitution.reason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.numberOfRepeats",
      "target" : [{
        "code" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.minimumDispenseInterval",
      "target" : [{
        "code" : "MedicationRequest.dispenseRequest.dispenseInterval",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.offLabel.isOffLabelUse",
      "target" : [{
        "code" : "MedicationRequest.extension:offLabelUse",
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
        "code" : "MedicationRequest.dispenseRequest.extension:medicationRequest-dispenseRequest-dispenserInstruction-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecALD",
      "target" : [{
        "code" : "MedicationRequest.reasonReference:FRObservationALDDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "MedicationRequest.reasonReference:FRObservationWorkRelatedAccidentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "target" : [{
        "code" : "MedicationRequest.reasonReference:FRObservationPreventionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.nonRemboursable",
      "target" : [{
        "code" : "MedicationRequest.extension:FRNotCoveredExtension",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
