# Mapping FRLMCarePlan → FRCDAReferenceItemPlanTraitement / FRLMCarePlan → FRCarePlanDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCarePlan → FRCDAReferenceItemPlanTraitement / FRLMCarePlan → FRCarePlanDocument 

 
Mapping des éléments du modèle métier FRLMCarePlan vers le profil CDA FRCDAReferenceItemPlanTraitement (équivalent CDA le plus proche), puis vers le profil FHIR FRCarePlanDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRCarePlanLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRCarePlanLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Plan de soins\"",
  "status" : "draft",
  "date" : "2026-08-11T09:29:09+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCarePlan vers le profil CDA FRCDAReferenceItemPlanTraitement (équivalent CDA le plus proche), puis vers le profil FHIR FRCarePlanDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-care-plan",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-reference-item-plan-traitement",
    "element" : [{
      "code" : "FRLMCarePlan",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement",
        "equivalence" : "narrower"
      }]
    },
    {
      "code" : "FRLMCarePlan.header.identifier",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.header.status",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.addresses",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun élément CDA explicite de FRCDAReferenceItemPlanTraitement ne porte les problèmes adressés par le plan."
      }]
    },
    {
      "code" : "FRLMCarePlan.goal",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun élément CDA explicite de FRCDAReferenceItemPlanTraitement ne porte les objectifs du plan."
      }]
    },
    {
      "code" : "FRLMCarePlan.activity",
      "target" : [{
        "code" : "FRCDAReferenceItemPlanTraitement.entryRelationship:frItemPlanTraitement",
        "equivalence" : "relatedto",
        "comment" : "Correspondance approximative: FRLMCarePlan.activity est générique, alors que la cible CDA représente une ligne de traitement prescrite."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-care-plan",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-care-plan-document",
    "element" : [{
      "code" : "FRLMCarePlan",
      "target" : [{
        "code" : "FRCarePlanDocument",
        "equivalence" : "narrower"
      }]
    },
    {
      "code" : "FRLMCarePlan.header.identifier",
      "target" : [{
        "code" : "FRCarePlanDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.header.status",
      "target" : [{
        "code" : "FRCarePlanDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.addresses",
      "target" : [{
        "code" : "FRCarePlanDocument.addresses",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.goal",
      "target" : [{
        "code" : "FRCarePlanDocument.goal",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlan.activity",
      "target" : [{
        "code" : "FRCarePlanDocument.activity.reference:FRMedicationRequestDocument",
        "equivalence" : "narrower",
        "comment" : "Le modèle métier porte des références d'actions génériques; la cible FHIR contraint activity.reference à FRMedicationRequestDocument."
      }]
    }]
  }]
}

```
