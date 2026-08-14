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
  "title" : "Mapping Métier/CDA/FHIR : \"Produit de santé\"",
  "status" : "draft",
  "date" : "2026-08-14T08:22:23+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante",
    "element" : [{
      "code" : "FRLMMedication",
      "target" : [{
        "code" : "FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.identifyingCode[x]",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.classification",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asSpecializedKind",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.productName",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name",
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
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode",
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
        "code" : "FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:ingredient.pharm:quantity",
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
        "code" : "FRCDAProduitDeSante.pharm:asContent",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedication.item.containedQuantity",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asContent",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMMedication.item.amount",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asContent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.packageType",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asContent.pharm:containerPackagedMedicine",
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
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.batch.expirationDate",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:expirationTime",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-document",
    "element" : [{
      "code" : "FRLMMedication",
      "target" : [{
        "code" : "FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.identifyingCode[x]",
      "target" : [{
        "code" : "FRMedicationDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.classification",
      "target" : [{
        "code" : "FRMedicationDocument.extension:ihe-ext-medication-classification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.productName",
      "target" : [{
        "code" : "FRMedicationDocument.extension:ihe-ext-medication-productname",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.marketingAuthorisationHolder",
      "target" : [{
        "code" : "FRMedicationDocument.manufacturer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient.itemReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.doseForm",
      "target" : [{
        "code" : "FRMedicationDocument.form",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.isActive",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient.isActive",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.substance",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient.itemCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient:substanceActive.strength",
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
        "equivalence" : "unmatched"
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
        "code" : "FRMedicationDocument.amount",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.item.packageType",
      "target" : [{
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
        "code" : "FRMedicationDocument.batch.lotNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedication.batch.expirationDate",
      "target" : [{
        "code" : "FRMedicationDocument.batch.expirationDate",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
