# Mapping FRLMTraitement → FRCDATraitement → FRMedicationStatementDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitement → FRCDATraitement → FRMedicationStatementDocument 

 
Mapping des éléments du modèle métier FRLMTraitement vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationStatementLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationStatementLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement (information rapportée par le patient)\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMTraitement vers la sous-entrée CDA FRCDATraitement puis vers le profil FHIR FRMedicationStatementDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement",
    "element" : [{
      "code" : "FRLMTraitement",
      "target" : [{
        "code" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.identifiant",
      "target" : [{
        "code" : "FRCDATraitement.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.code",
      "target" : [{
        "code" : "FRCDATraitement.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.note",
      "target" : [{
        "code" : "FRCDATraitement.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.status",
      "target" : [{
        "code" : "FRCDATraitement.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.occurancePeriod",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime[not(@operator='A')]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.occuranceDateTim",
      "target" : [{
        "code" : "FRCDATraitement.effectiveTime[@operator='A']",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.dosage.route",
      "target" : [{
        "code" : "FRCDATraitement.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.dosage.site",
      "target" : [{
        "code" : "FRCDATraitement.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.dosage.dose",
      "target" : [{
        "code" : "FRCDATraitement.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.dosage.rate[x]",
      "target" : [{
        "code" : "FRCDATraitement.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.dosage.doseMaximale",
      "target" : [{
        "code" : "FRCDATraitement.maxDoseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.medicament",
      "target" : [{
        "code" : "FRCDATraitement.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.reason",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.prescription",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frPrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.subordinateTreatment",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frTraitementSubordonne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.instructionsPatient",
      "target" : [{
        "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitement.precondition",
      "target" : [{
        "code" : "FRCDATraitement.precondition",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-statement-document",
    "element" : [{
      "code" : "FRCDATraitement.id",
      "target" : [{
        "code" : "FRMedicationStatementDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.code",
      "target" : [{
        "code" : "FRMedicationStatementDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.text",
      "target" : [{
        "code" : "FRMedicationStatementDocument.category.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.statusCode",
      "target" : [{
        "code" : "FRMedicationStatementDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.effectiveTime[not(@operator='A')]",
      "target" : [{
        "code" : "FRMedicationStatementDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.doseQuantity",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.doseAndRate.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.effectiveTime[@operator='A']",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.timing",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.routeCode",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.approachSiteCode",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.rateQuantity",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.doseAndRate.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.maxDoseQuantity",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.maxDosePerPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.consumable",
      "target" : [{
        "code" : "FRMedicationStatementDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frReferenceInterne",
      "target" : [{
        "code" : "FRMedicationStatementDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frPrescription",
      "target" : [{
        "code" : "FRMedicationStatementDocument.basedOn:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
      "target" : [{
        "code" : "FRMedicationStatementDocument.dosage.additionalInstruction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.precondition",
      "target" : [{
        "code" : "FRMedicationStatementDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
