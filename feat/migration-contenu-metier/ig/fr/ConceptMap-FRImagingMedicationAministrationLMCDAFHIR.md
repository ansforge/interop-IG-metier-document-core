# Mapping FRLMAdministrationProduitDeSante -> FRCDADICOMAdministrationProduitDeSante -> FRMedicationAdministrationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAdministrationProduitDeSante -> FRCDADICOMAdministrationProduitDeSante -> FRMedicationAdministrationDocument 

 
Mapping des éléments du modele metier FRLMAdministrationProduitDeSante vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingMedicationAministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingMedicationAministrationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Administration de produit de sante en imagerie\"",
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
  "description" : "Mapping des éléments du modele metier FRLMAdministrationProduitDeSante vers le profil CDA FRCDADICOMAdministrationProduitDeSante, puis vers le profil FHIR FRMedicationAdministrationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-administration-produit-de-sante",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante",
    "element" : [{
      "code" : "FRLMAdministrationProduitDeSante",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.identifiant",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.description",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.statut",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.voieAdministration",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.routeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.dose",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.rythme",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.medicament.produit",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.medicament.produit.codeProduit",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.medicament.produit.codeProduit.autreCodification",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.code.translation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.medicament.produit.nomMarque",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationProduitDeSante.medicament.produit.numeroLot",
      "target" : [{
        "code" : "FRCDADICOMAdministrationProduitDeSante.consumable.manufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-administration-produit-de-sante",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-administration-document",
    "element" : [{
      "code" : "FRCDADICOMAdministrationProduitDeSante",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.id",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.text",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.category.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.statusCode",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.routeCode",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.route",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.doseQuantity",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.dose",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.rateQuantity",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.dosage.rate[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMAdministrationProduitDeSante.consumable",
      "target" : [{
        "code" : "FRMedicationAdministrationDocument.medication:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
