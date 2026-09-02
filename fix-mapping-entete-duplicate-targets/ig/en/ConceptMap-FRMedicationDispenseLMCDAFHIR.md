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
  "name" : "FRMedicationDispenseLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement dispensé\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
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
        "code" : "Supply",
        "display" : "FRCDATraitementDispense",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.header.identifier",
      "target" : [{
        "code" : "Supply.id",
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
        "code" : "Supply.code",
        "equivalence" : "equivalent",
        "comment" : "Supply.code (Complétude de la dispensation, lié à jdv-completude-dispensation-cisis) porte cette information, pas Supply.statusCode (statut technique de l'entrée CDA)."
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
        "code" : "Supply.entryRelationship:frReferenceItemPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.medicament",
      "target" : [{
        "code" : "Supply.product",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dispensedQuantity",
      "target" : [{
        "code" : "Supply.quantity",
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
        "code" : "Supply.entryRelationship:frActeSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.dosageInstructions",
      "target" : [{
        "code" : "Supply.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "Supply.entryRelationship:frNotesDuDispensateur",
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
      "code" : "FRLMMedicationDispense.note",
      "target" : [{
        "code" : "MedicationDispense.note",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement",
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
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-dispense-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "relatedto",
        "comment" : "Ce profil n'expose pas timing.repeat.* : le regroupement fréquence est porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.frequency n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.period n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.dayOfWeek n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.timeOfDay n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.event n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.asNeeded[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.bounds[x] n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.duration* n'est pas exposé séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationValue",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "timing.repeat.duration n'est pas exposé dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationUnit",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "timing.repeat.durationUnit n'est pas exposé dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration.durationMax",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "timing.repeat.durationMax n'est pas exposé dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.when/offset ne sont pas exposés séparément dans ce profil ; porté globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime.eventTimeCode",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "timing.repeat.when n'est pas exposé dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime.offset",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "timing.repeat.offset n'est pas exposé dans ce profil."
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
        "code" : "MedicationDispense.dosageInstruction.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerPeriod",
        "equivalence" : "wider",
        "comment" : "maxDosePerPeriod.numerator n'est pas exposé séparément dans ce profil ; porté globalement par maxDosePerPeriod (Ratio)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerPeriod",
        "equivalence" : "wider",
        "comment" : "maxDosePerPeriod.denominator n'est pas exposé séparément dans ce profil ; porté globalement par maxDosePerPeriod (Ratio)."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationDispense.dosageInstruction.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
