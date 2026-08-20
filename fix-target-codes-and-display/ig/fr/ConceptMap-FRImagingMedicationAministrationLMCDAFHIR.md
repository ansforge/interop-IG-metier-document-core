# Mapping FRLMMedicationAdministration -> FRCDADICOMAdministrationProduitDeSante / FRLMMedicationAdministration -> FRMedicationAdministrationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationAdministration -> FRCDADICOMAdministrationProduitDeSante / FRLMMedicationAdministration -> FRMedicationAdministrationDocument 

 
Mapping des elements du modele metier FRLMMedicationAdministration vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingMedicationAministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingMedicationAministrationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Medication Administration en imagerie\"",
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
  "description" : "Mapping des elements du modele metier FRLMMedicationAdministration vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument.",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "SubstanceAdministration",
        "display" : "FRCDADICOMAdministrationProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.header.status",
      "target" : [{
        "code" : "SubstanceAdministration.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "SubstanceAdministration.effectiveTime",
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
      "code" : "FRLMMedicationAdministration.medication.identifyingCode[x]",
      "target" : [{
        "code" : "SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.productName",
      "target" : [{
        "code" : "SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.batch.lotNumber",
      "target" : [{
        "code" : "SubstanceAdministration.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.renderedDosageInstruction",
      "target" : [{
        "code" : "SubstanceAdministration.text",
        "equivalence" : "relatedto"
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
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "SubstanceAdministration.doseQuantity",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "SubstanceAdministration.rateQuantity",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance CDA explicite unique pour reason[x] dans ce profil DICOM d'administration."
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
      "code" : "FRLMMedicationAdministration.header.status",
      "target" : [{
        "code" : "MedicationAdministration.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "MedicationAdministration.effective[x]",
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
      "code" : "FRLMMedicationAdministration.medication.identifyingCode[x]",
      "target" : [{
        "code" : "MedicationAdministration.medication:FRMedicationDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.productName",
      "target" : [{
        "code" : "MedicationAdministration.medication:FRMedicationDocument.extension:productName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.batch.lotNumber",
      "target" : [{
        "code" : "MedicationAdministration.medication:FRMedicationDocument.batch.lotNumber",
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
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "MedicationAdministration.reasonReference",
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
