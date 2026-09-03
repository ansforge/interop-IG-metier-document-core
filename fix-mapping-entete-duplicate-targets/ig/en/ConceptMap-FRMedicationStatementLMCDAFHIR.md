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
  "name" : "FRMedicationStatementLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:35:28+00:00",
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
      "code" : "FRLMMedicationUse.dosageInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "relatedto"
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse",
    "sourceVersion" : "0.1.0",
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
        "code" : "MedicationStatement.note.extension:adherence",
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
        "code" : "MedicationStatement.reasonCode",
        "equivalence" : "relatedto",
        "comment" : "reason[x] est générique ; il peut aussi correspondre à reasonReference selon le contexte."
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
      "code" : "FRLMMedicationUse.periodOfUse",
      "target" : [{
        "code" : "MedicationStatement.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationUse.derivedFrom[x]",
      "target" : [{
        "code" : "MedicationStatement.derivedFrom",
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
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-statement-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationStatement.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.sequence",
      "target" : [{
        "code" : "MedicationStatement.dosage.sequence",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "MedicationStatement.dosage.patientInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.doseAndRate.dose[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.doseAndRate.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "MedicationStatement.dosage.additionalInstruction",
        "equivalence" : "relatedto",
        "comment" : "Type source string vers CodeableConcept cible : nécessite un codage ou l'usage de additionalInstruction.text."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.event n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.asNeeded[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.bounds[x] n'est pas exposé dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.duration/.durationUnit/.durationMax ne sont pas exposés dans ce profil ; l'information est portée globalement par timing."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "MedicationStatement.dosage.timing",
        "equivalence" : "wider",
        "comment" : "timing.repeat.when/.offset ne sont pas exposés dans ce profil ; l'information est portée globalement par timing."
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
        "code" : "MedicationStatement.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerPeriod",
        "equivalence" : "wider",
        "comment" : "maxDosePerPeriod n'est pas décomposé en numerator/denominator dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerPeriod",
        "equivalence" : "wider",
        "comment" : "maxDosePerPeriod n'est pas décomposé en numerator/denominator dans ce profil."
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "MedicationStatement.dosage.maxDosePerLifetime",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
