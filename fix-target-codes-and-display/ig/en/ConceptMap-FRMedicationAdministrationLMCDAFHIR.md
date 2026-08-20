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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitement",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "SubstanceAdministration.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      },
      {
        "code" : "SubstanceAdministration.effectiveTime[@operator='A']",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frTraitement.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.sequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.note",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency.numberOfTimes",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime.frequency",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency.period",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency.dayOfWeek",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency.timeOfDay",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.frequency.additionalInstructions",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.dateOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.conditionOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.precondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.date[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.duration",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.eventTime",
      "target" : [{
        "code" : "SubstanceAdministration.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.eventEndSequence",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.bodySite",
      "target" : [{
        "code" : "SubstanceAdministration.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.maxDosePerPeriod.quantity",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.maxDosePerPeriod.duration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.maxDosePerAdministration",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.maxLifetimeDose",
      "target" : [{
        "code" : "SubstanceAdministration.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.note",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-administration-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "MedicationAdministration",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "MedicationAdministration.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "MedicationAdministration.effectivePeriod",
        "equivalence" : "equivalent"
      },
      {
        "code" : "MedicationAdministration.extension:medicationAdministration-occurence-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "MedicationAdministration.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "MedicationAdministration.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage",
      "target" : [{
        "code" : "MedicationAdministration.dosage",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.renderedDosageInstruction",
      "target" : [{
        "code" : "MedicationAdministration.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.bodySite",
      "target" : [{
        "code" : "MedicationAdministration.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "MedicationAdministration.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "MedicationAdministration.dosage.dose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "MedicationAdministration.dosage.rate[x]",
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
        "code" : "MedicationAdministration.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
