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
  "name" : "FRMedicationRequestLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Traitement prescrit",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:02:14+00:00",
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
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeDuree",
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
        "code" : "SubstanceAdministration.entryRelationship:frEnRapportAvecLaPrevention",
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
      "code" : "FRLMPrescriptionItem.statusReason[x]",
      "target" : [{
        "code" : "MedicationRequest.statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.medication",
      "target" : [{
        "code" : "MedicationRequest.medication[x]",
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
        "code" : "MedicationRequest.substitution.allowed[x]",
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
        "code" : "MedicationRequest.extension:horsAMM",
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
        "code" : "MedicationRequest.dispenseRequest.extension:dispenserInstructionR5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecALD",
      "target" : [{
        "code" : "MedicationRequest.reasonReference",
        "equivalence" : "equivalent",
        "comment" : "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "target" : [{
        "code" : "MedicationRequest.reasonReference",
        "equivalence" : "equivalent",
        "comment" : "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "target" : [{
        "code" : "MedicationRequest.reasonReference",
        "equivalence" : "equivalent",
        "comment" : "Ce profil FHIR ne slice pas reasonReference par motif (ALD/accident du travail/prévention/indication générale) : toutes les occurrences ciblent le même reasonReference générique."
      }]
    },
    {
      "code" : "FRLMPrescriptionItem.nonRemboursable",
      "target" : [{
        "code" : "MedicationRequest.extension:notCovered",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement-prescrit",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeFrequence",
        "equivalence" : "wider",
        "comment" : "Ce profil CDA n'expose pas les sous-éléments de la fréquence séparément ; ils sont portés globalement par effectiveTime:effectiveTimeFrequence (structure PIVL-TS/EIVL-TS/SXPR-TS)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA dédié à une liste de dates précises de prise dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime:effectiveTimeDuree",
        "equivalence" : "wider",
        "comment" : "effectiveTime:effectiveTimeDuree porte la durée de traitement globale (IVL-TS) ; le modèle métier permet en plus une durée ou un intervalle de durée non distingués séparément côté CDA."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA dédié à une durée d'administration ponctuelle (ex. perfusion) dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "wider",
        "comment" : "Pas d'élément CDA structuré pour un événement déclencheur ; porté par le texte libre des instructions au patient."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "SubstanceAdministration.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA distinct pour une dose maximale par administration ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'élément CDA distinct pour une dose maximale sur la durée de vie ; maxDoseQuantity est déjà utilisé pour la dose maximale par période."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés numberOfTimes, period, dayOfWeek, timeOfDay et additionalInstructions."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.period",
        "equivalence" : "equivalent",
        "comment" : "L'unité (periodUnit) est portée par le code de la Quantity source."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.timeOfDay",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.event",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.asNeeded[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.bounds[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "relatedto",
        "comment" : "Regroupement porté par les éléments détaillés durationValue, durationUnit et durationMax."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.durationUnit",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.durationMax",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat",
        "equivalence" : "wider",
        "comment" : "Regroupement porté par les éléments détaillés eventTimeCode et offset."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.when",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.timing.repeat.offset",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.numerator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerPeriod.denominator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationRequest.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
