# Mapping FRLMReferenceItemPlanTraitement → FRCDAReferenceItemPlanTraitement → FRCarePlanDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMReferenceItemPlanTraitement → FRCDAReferenceItemPlanTraitement → FRCarePlanDocument 

 
Mapping des éléments du modèle métier FRLMReferenceItemPlanTraitement vers le profil CDA FRCDAReferenceItemPlanTraitement, puis vers le profil FHIR FRCarePlanDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRCarePlanLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRCarePlanLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Référence Item Plan Traitement\"",
  "status" : "active",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMReferenceItemPlanTraitement vers le profil CDA FRCDAReferenceItemPlanTraitement, puis vers le profil FHIR FRCarePlanDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-reference-item-plan-traitement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-reference-item-plan-traitement",
    "element" : [{
      "code" : "FRLMReferenceItemPlanTraitement",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.identifiant",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.code",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.produitSante",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.consumable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.auteur",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.traitementPrescrit",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.reference",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReferenceItemPlanTraitement.reference.externalDocument.identifiant",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.reference.externalDocument.id",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-reference-item-plan-traitement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-care-plan-document",
    "element" : [{
      "code" : "FRCDAReferenceItemPlanTraitement",
      "target" : [{
        "code" : "FRCarePlanDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.id",
      "target" : [{
        "code" : "FRCarePlanDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.code",
      "target" : [{
        "code" : "FRCarePlanDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.consumable",
      "target" : [{
        "code" : "FRCarePlanDocument.activity.detail.productReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.author",
      "target" : [{
        "code" : "FRCarePlanDocument.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement",
      "target" : [{
        "code" : "FRCarePlanDocument.activity.reference:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.reference",
      "target" : [{
        "code" : "FRCarePlanDocument.activity.reference:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAReferenceItemPlanTraitement.reference.externalDocument.id",
      "target" : [{
        "code" : "FRCarePlanDocument.activity.reference:FRMedicationRequestDocument.identifier",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
