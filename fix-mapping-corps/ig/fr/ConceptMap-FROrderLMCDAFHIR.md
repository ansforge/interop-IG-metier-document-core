# Mapping FRLMOrder → FRCDAInFulfillmentOf → ServiceRequest - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMOrder → FRCDAInFulfillmentOf → ServiceRequest 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMOrder" et l'élément CDA "inFulfillmentOf"
* Mapping 2 : entre le modèle métier "FRLMOrder" et la ressource FHIR "ServiceRequest" (référencée depuis Composition via l'extension basedOn)
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FROrderLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FROrderLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-14T14:32:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMOrder\\\" et l'élément CDA \\\"inFulfillmentOf\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMOrder\\\" et la ressource FHIR \\\"ServiceRequest\\\" (référencée depuis Composition via l'extension basedOn)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-inFulfillment-of",
    "element" : [{
      "code" : "FRLMOrder",
      "target" : [{
        "code" : "inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.orderId",
      "target" : [{
        "code" : "inFulfillmentOf.order.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.accessionNumber",
      "target" : [{
        "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.orderDateAndTime",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter sa date."
      }]
    },
    {
      "code" : "FRLMOrder.orderPlacer",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son demandeur."
      }]
    },
    {
      "code" : "FRLMOrder.orderReason",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son motif."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order",
    "target" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "FRLMOrder",
      "target" : [{
        "code" : "ServiceRequest",
        "equivalence" : "equivalent",
        "comment" : "Référencé depuis Composition.extension:basedOn (event-basedOn.value[x])."
      }]
    },
    {
      "code" : "FRLMOrder.orderId",
      "target" : [{
        "code" : "ServiceRequest.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.accessionNumber",
      "target" : [{
        "code" : "ServiceRequest.identifier",
        "equivalence" : "equivalent",
        "comment" : "Autre occurrence de ServiceRequest.identifier."
      }]
    },
    {
      "code" : "FRLMOrder.orderDateAndTime",
      "target" : [{
        "code" : "ServiceRequest.authoredOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.orderPlacer",
      "target" : [{
        "code" : "ServiceRequest.requester",
        "equivalence" : "equivalent",
        "comment" : "ServiceRequest.requester.resolve().ofType(PractitionerRole, Organization ou Patient)."
      }]
    },
    {
      "code" : "FRLMOrder.orderReason",
      "target" : [{
        "code" : "ServiceRequest.reasonCode",
        "equivalence" : "relatedto",
        "comment" : "orderReason peut porter un CodeableConcept simple (porté par ServiceRequest.reasonCode) ou une référence FRLMCondition/FRLMObservation (portée alors par ServiceRequest.reasonReference)."
      }]
    }]
  }]
}

```
