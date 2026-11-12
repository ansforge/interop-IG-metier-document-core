# Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationAdministration → FRCDATraitement / FRLMMedicationAdministration → FRMedicationAdministrationDocument 

 
Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationAdministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationAdministrationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\"",
  "status" : "draft",
  "date" : "2026-08-11T08:15:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationAdministration vers le profil CDA FRCDATraitement (Groupe 1), et vers le profil FHIR FRMedicationAdministrationDocument (Groupe 2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "FRCDATraitement.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRCDATraitement.effectiveTime[@operator='A']",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frTraitement.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.renderedDosageInstruction",
      "target" : [{
        "code" : "FRCDATraitement.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.note",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRCDATraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRCDATraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.period",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.date[x]",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.duration",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.eventTime",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.bodySite",
      "target" : [{
        "code" : "FRCDATraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRCDATraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosageInstructions.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.note",
      "target" : [{
        "code" : "FRCDATraitement.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.effectivePeriod",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.renderedDosageInstruction",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.dose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.sequence",
      "target" : [{
        "code" : "FRLMMedicationAdministration.dosage.extension:FRMedicationAdministrationSequenceExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.note",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
