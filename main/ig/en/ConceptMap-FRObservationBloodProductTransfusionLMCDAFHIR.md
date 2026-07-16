# Mapping FRLMTransfusionDeProduitsSanguins → FRCDATransfusionDeProduitsSanguins → FRObservationBloodProductTransfusionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTransfusionDeProduitsSanguins → FRCDATransfusionDeProduitsSanguins → FRObservationBloodProductTransfusionDocument 

 
Mapping des éléments du modèle métier FRLMTransfusionDeProduitsSanguins vers la sous-entrée CDA FRCDATransfusionDeProduitsSanguins puis vers le profil FHIR FRObservationBloodProductTransfusionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationBloodProductTransfusionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationBloodProductTransfusionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Transfusion de produits sanguins",
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
  "description" : "Mapping des éléments du modèle métier FRLMTransfusionDeProduitsSanguins vers la sous-entrée CDA FRCDATransfusionDeProduitsSanguins puis vers le profil FHIR FRObservationBloodProductTransfusionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-transfusion-de-produits-sanguins",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-transfusion-de-produits-sanguins",
    "element" : [{
      "code" : "FRLMTransfusionDeProduitsSanguins",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.identifiant",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.code",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.description",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.statut",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.date",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.transfusionProduitSanguin",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTransfusionDeProduitsSanguins.auteur",
      "target" : [{
        "code" : "FRCDATransfusionDeProduitsSanguins.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-transfusion-de-produits-sanguins",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-blood-product-transfusion-document",
    "element" : [{
      "code" : "FRCDATransfusionDeProduitsSanguins",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.id",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.code",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.text",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.note.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.statusCode",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.effectiveTime",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.value",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.valueBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATransfusionDeProduitsSanguins.author",
      "target" : [{
        "code" : "FRObservationBloodProductTransfusionDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
