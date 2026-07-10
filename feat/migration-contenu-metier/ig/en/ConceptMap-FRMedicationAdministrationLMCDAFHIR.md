# Mapping FRLMTraitement → FRCDATraitement → FRMedicationAdministrationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitement → FRCDATraitement → FRMedicationAdministrationDocument 

 
Mapping des éléments du modèle métier FRLMTraitement vers le profil CDA FRCDATraitement, puis vers le profil FHIR FRMedicationAdministrationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationAdministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationAdministrationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitement déjà administré\"",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMTraitement vers le profil CDA FRCDATraitement, puis vers le profil FHIR FRMedicationAdministrationDocument.",
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
      "code" : "FRLMTraitement.dosage",
      "target" : [{
        "equivalence" : "unmatched"
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
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document",
    "element" : [{
      "code" : "FRCDATraitement",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.id",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.code",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.text",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.category.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.statusCode",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.effectiveTime[not(@operator='A')]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.effectiveTime[@operator='A']",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.extension:medicationAdministration-occurence-r5",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.routeCode",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.approachSiteCode",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.site",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.doseQuantity",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.dose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.rateQuantity",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.maxDoseQuantity",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.rateRatio",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.consumable",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frReferenceInterne",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frPrescription",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.request",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frTraitementSubordonne",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationsCombinaisonDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.entryRelationship:frInstructionsAuPatient",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitement.precondition",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
