# Mapping FRLMServiceRequest → FRCDADemandeDExamenOuDeSuivi / FRLMServiceRequest → FRServiceRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMServiceRequest → FRCDADemandeDExamenOuDeSuivi / FRLMServiceRequest → FRServiceRequestDocument 

 
Mapping des éléments du modèle métier FRLMServiceRequest vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRServiceRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRServiceRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Demande d'examen ou de suivi\"",
  "status" : "draft",
  "date" : "2026-08-14T14:32:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMServiceRequest vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-service-request",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi",
    "element" : [{
      "code" : "FRLMServiceRequest",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.header.status",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.code",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.quantity",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMServiceRequest.bodySite",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.reason[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMServiceRequest.priority",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.supportingInformation[x]",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.entryRelationship.observation",
        "equivalence" : "inexact",
        "comment" : "Le modèle métier FRLMServiceRequest.supportingInformation[x] correspond à la composante observation portée dans l'entrée CDA FRCDADemandeDExamenOuDeSuivi.entryRelationship.observation. Le mapping est inexact car le type de l'élément supportingInformation[x] peut être Observation, Condition, Procedure ou MedicationAdministration alors que le type de l'élément entryRelationship.observation est uniquement Observation."
      }]
    },
    {
      "code" : "FRLMServiceRequest.specimen",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.encounter",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.entryRelationship.encounter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.occurrence[x]",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.patientInstructions",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-service-request",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-service-request-document",
    "element" : [{
      "code" : "FRLMServiceRequest",
      "target" : [{
        "code" : "FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.header.status",
      "target" : [{
        "code" : "FRServiceRequestDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.code",
      "target" : [{
        "code" : "FRServiceRequestDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.quantity",
      "target" : [{
        "code" : "FRServiceRequestDocument.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.bodySite",
      "target" : [{
        "code" : "FRServiceRequestDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.reason[x]",
      "target" : [{
        "code" : "FRServiceRequestDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.priority",
      "target" : [{
        "code" : "FRServiceRequestDocument.priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.supportingInformation[x]",
      "target" : [{
        "code" : "FRServiceRequestDocument.supportingInfo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.specimen",
      "target" : [{
        "code" : "FRServiceRequestDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.encounter",
      "target" : [{
        "code" : "FRServiceRequestDocument.encounter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.occurrence[x]",
      "target" : [{
        "code" : "FRServiceRequestDocument.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.patientInstructions",
      "target" : [{
        "code" : "FRServiceRequestDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
