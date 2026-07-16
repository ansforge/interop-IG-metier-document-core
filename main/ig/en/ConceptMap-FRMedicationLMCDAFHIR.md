# Mapping FRLMProduitSante → FRCDAProduitDeSante → FRMedicationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProduitSante → FRCDAProduitDeSante → FRMedicationDocument 

 
Mapping des éléments du modèle métier FRLMProduitSante vers le profil CDA FRCDAProduitDeSante, puis vers le profil FHIR FRMedicationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Produit de santé\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMProduitSante vers le profil CDA FRCDAProduitDeSante, puis vers le profil FHIR FRMedicationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-produit-sante",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante",
    "element" : [{
      "code" : "FRLMProduitSante",
      "target" : [{
        "code" : "FRCDAProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.medicament",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.medicament.code",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.medicament.code.autreCodification",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code.translation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.nomProduit",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.formeGalenique",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.numeroLot",
      "target" : [{
        "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.dateExpiration",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:expirationTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.conditionnement",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asContent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.equivalentGenerique",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:asSpecializedKind",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProduitSante.substanceActive",
      "target" : [{
        "code" : "FRCDAProduitDeSante.pharm:ingredient",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-produit-de-sante",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-document",
    "element" : [{
      "code" : "FRCDAProduitDeSante",
      "target" : [{
        "code" : "FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code",
      "target" : [{
        "code" : "FRMedicationDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.code.translation",
      "target" : [{
        "code" : "FRMedicationDocument.code.coding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.name",
      "target" : [{
        "code" : "FRMedicationDocument.extension:ihe-ext-medication-productname",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.pharm:formCode",
      "target" : [{
        "code" : "FRMedicationDocument.form",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.manufacturedProduct.manufacturedMaterial.lotNumberText",
      "target" : [{
        "code" : "FRMedicationDocument.batch.lotNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:expirationTime",
      "target" : [{
        "code" : "FRMedicationDocument.batch.expirationDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:asContent",
      "target" : [{
        "code" : "FRMedicationDocument.extension:ihe-ext-medication-characteristic",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:asSpecializedKind",
      "target" : [{
        "code" : "FRMedicationDocument.extension:ihe-ext-medication-classification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:ingredient",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient:substanceActive",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:ingredient.pharm:quantity",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient:substanceActive.strength",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:code",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient:substanceActive.itemCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProduitDeSante.pharm:ingredient.pharm:ingredient.pharm:name",
      "target" : [{
        "code" : "FRMedicationDocument.ingredient:substanceActive.itemCodeableConcept.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
