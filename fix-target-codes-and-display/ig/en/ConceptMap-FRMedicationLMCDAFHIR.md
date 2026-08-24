# Mapping FRLMMedication → FRCDAProduitDeSante / FRLMMedication → FRMedicationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedication → FRCDAProduitDeSante / FRLMMedication → FRMedicationDocument 

 
Mapping des éléments du modèle métier FRLMMedication vers le profil CDA FRCDAProduitDeSante (Groupe 1), et vers le profil FHIR FRMedicationDocument (Groupe 2). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRMedicationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Produit de santé\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-24T13:13:01+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedication vers le profil CDA FRCDAProduitDeSante (Groupe 1), et vers le profil FHIR FRMedicationDocument (Groupe 2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-produit-de-sante",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedication",
      "target" : [{
        "code" : "ManufacturedProduct",
        "display" : "FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.identifyingCode[x]",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.classification",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.asSpecializedKind",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.productName",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.marketingAuthorisationHolder",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.item.doseForm",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.formCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.isActive",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.substance",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.ingredient.ingredient.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.ingredient.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.item.unitOfPresentation",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine.formCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.containedQuantity",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.item.amount",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine.capacityQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.packageType",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.asContent.containerPackagedMedicine",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.device",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.characteristic",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.batch.lotNumber",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.batch.expirationDate",
      "target" : [{
        "code" : "ManufacturedProduct.manufacturedMaterial.expirationTime",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-medication-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedication",
      "target" : [{
        "code" : "Medication",
        "display" : "FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.identifyingCode[x]",
      "target" : [{
        "code" : "Medication.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.classification",
      "target" : [{
        "code" : "Medication.extension:classification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.productName",
      "target" : [{
        "code" : "Medication.extension:productName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.marketingAuthorisationHolder",
      "target" : [{
        "code" : "Medication.manufacturer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item",
      "target" : [{
        "code" : "Medication.ingredient.item[x]:itemReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.doseForm",
      "target" : [{
        "code" : "Medication.form",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient",
      "target" : [{
        "code" : "Medication.ingredient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.isActive",
      "target" : [{
        "code" : "Medication.ingredient.isActive",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.substance",
      "target" : [{
        "code" : "Medication.ingredient.item[x]:itemCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "target" : [{
        "code" : "Medication.ingredient.strength",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "target" : [{
        "code" : "Medication.ingredient.strength.extension:basisOfStrengthSubstance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.unitOfPresentation",
      "target" : [{
        "code" : "Medication.extension:unitOfPresentation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.containedQuantity",
      "target" : [{
        "code" : "Medication.extension:sizeOfItem",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.amount",
      "target" : [{
        "code" : "Medication.amount",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.packageType",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.device",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMedication.characteristic",
      "target" : [{
        "code" : "Medication.extension:conditionnement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.batch.lotNumber",
      "target" : [{
        "code" : "Medication.batch.lotNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.batch.expirationDate",
      "target" : [{
        "code" : "Medication.batch.expirationDate",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
