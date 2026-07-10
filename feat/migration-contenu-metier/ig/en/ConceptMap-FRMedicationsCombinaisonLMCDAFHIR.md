# Mapping FRLMTraitementSubordonne → FRCDATraitementSubordonne → FRMedicationsCombinaisonDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementSubordonne → FRCDATraitementSubordonne → FRMedicationsCombinaisonDocument 

 
Mapping des éléments du modèle métier FRLMTraitementSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMedicationsCombinaisonLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMedicationsCombinaisonLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Traitement subordonné",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitementSubordonne vers la sous-entrée CDA FRCDATraitementSubordonne puis vers le profil FHIR FRMedicationsCombinaisonDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-subordonne",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-subordonne",
    "element" : [{
      "code" : "FRLMTraitementSubordonne",
      "target" : [{
        "code" : "FRCDATraitementSubordonne",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.identifiantTraitement",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.descriptionTraitement",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.statutTraitement",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.frequenceAdministration",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.doseAadministrer",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.doseQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.rythmeAdministration",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.rateQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.medicamentTraitement",
      "target" : [{
        "code" : "FRCDAProduitDeSante.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSubordonne.preconditionTraitement",
      "target" : [{
        "code" : "FRCDATraitementSubordonne.precondition",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitement-subordonne",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medications-combinaison-document",
    "element" : [{
      "code" : "FRCDATraitementSubordonne.id",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementSubordonne.text",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementSubordonne.statusCode",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementSubordonne.consumable",
      "target" : [{
        "code" : "FRMedicationsCombinaisonDocument.ingredient.itemReference:FRMedicationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
