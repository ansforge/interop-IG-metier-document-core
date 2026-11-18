# Mapping FRLMTraitementPrescritSubordonne → FRCDATraitementPrescritSubordonne → FRMedicationsCombinaisonDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementPrescritSubordonne → FRCDATraitementPrescritSubordonne → FRMedicationsCombinaisonDocument 

 
Mapping des éléments du modèle métier FRLMTraitementPrescritSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationsCombinaisonRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationsCombinaisonRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Traitement prescrit subordonné",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitementPrescritSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-prescrit-subordonne",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit-subordonne",
    "element" : [{
      "code" : "FRLMTraitementPrescritSubordonne",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.identifiant",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.description",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.status",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.frequenceAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.dose",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.rythmeAdministration",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.produitSante",
      "target" : [{
        "code" : "FRCDAProduitDeSante.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementPrescritSubordonne.precondition",
      "target" : [{
        "code" : "FRCDATraitementPrescritSubordonne.precondition",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-prescrit-subordonne",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medications-combinaison-document",
    "element" : [{
      "code" : "FRCDATraitementPrescritSubordonne.id",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescritSubordonne.text",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescritSubordonne.statusCode",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementPrescritSubordonne.consumable",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.ingredient.itemReference:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
