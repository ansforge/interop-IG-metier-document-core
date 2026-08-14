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
  "date" : "2026-08-14T14:57:39+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-administration",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante",
    "element" : [{
      "code" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.header.status",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.identifyingCode[x]",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.productName",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.batch.lotNumber",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.renderedDosageInstruction",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.routeOfAdministration",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.dose[x]",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.doseQuantity",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.dosage.dosageDetails.doseAndRate.rate[x]",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.rateQuantity",
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
        "code" : "FRCDADICOMAdministrationProduitDeSante.text",
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
      "code" : "FRLMMedicationAdministration.header.status",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.occurrence[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.effective[x]",
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
      "code" : "FRLMMedicationAdministration.medication.identifyingCode[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.productName",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument.extension:productName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationAdministration.medication.batch.lotNumber",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument.batch.lotNumber",
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
      "code" : "FRLMMedicationAdministration.reason[x]",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.reasonReference",
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
