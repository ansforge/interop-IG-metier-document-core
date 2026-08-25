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
  "name" : "FRServiceRequestLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Demande d'examen ou de suivi\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:34:21+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMServiceRequest",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDADemandeDExamenOuDeSuivi",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.code",
      "target" : [{
        "code" : "Observation.code",
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
        "code" : "Observation.targetSiteCode",
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
        "code" : "Observation.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.supportingInformation[x]",
      "target" : [{
        "code" : "Observation.entryRelationship",
        "equivalence" : "inexact",
        "comment" : "entryRelationship n'est pas typé/profilé dans FRCDADemandeDExamenOuDeSuivi. Le mapping est inexact car le type de l'élément supportingInformation[x] peut être Observation, Condition, Procedure ou MedicationAdministration."
      }]
    },
    {
      "code" : "FRLMServiceRequest.specimen",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.encounter",
      "target" : [{
        "code" : "Observation.entryRelationship",
        "equivalence" : "wider",
        "comment" : "entryRelationship n'est pas typé/profilé dans FRCDADemandeDExamenOuDeSuivi ; la consultation à l'origine y est portée globalement."
      }]
    },
    {
      "code" : "FRLMServiceRequest.occurrence[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.patientInstructions",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMServiceRequest",
      "target" : [{
        "code" : "ServiceRequest",
        "display" : "FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.header.status",
      "target" : [{
        "code" : "ServiceRequest.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.code",
      "target" : [{
        "code" : "ServiceRequest.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.quantity",
      "target" : [{
        "code" : "ServiceRequest.quantity[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.bodySite",
      "target" : [{
        "code" : "ServiceRequest.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.reason[x]",
      "target" : [{
        "code" : "ServiceRequest.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.priority",
      "target" : [{
        "code" : "ServiceRequest.priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.supportingInformation[x]",
      "target" : [{
        "code" : "ServiceRequest.supportingInfo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.specimen",
      "target" : [{
        "code" : "ServiceRequest.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.encounter",
      "target" : [{
        "code" : "ServiceRequest.encounter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.occurrence[x]",
      "target" : [{
        "code" : "ServiceRequest.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMServiceRequest.patientInstructions",
      "target" : [{
        "code" : "ServiceRequest.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
