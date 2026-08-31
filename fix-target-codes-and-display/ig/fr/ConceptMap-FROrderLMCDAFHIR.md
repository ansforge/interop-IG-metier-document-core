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
  "name" : "FROrderLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T08:09:30+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-inFulfillment-of",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrder",
      "target" : [{
        "code" : "InFulfillmentOf",
        "display" : "inFulfillmentOf",
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
      "code" : "FRLMOrder.orderPlacer[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son demandeur."
      }]
    },
    {
      "code" : "FRLMOrder.orderReason[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "inFulfillmentOf ne référence l'order que par id/accessionNumber, sans porter son motif."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-order",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrder.orderId",
      "target" : [{
        "code" : "Order.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrder.accessionNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié distinct pour l'accession number dans fr-cda-order (ne porte que Order.id)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder",
    "sourceVersion" : "0.1.0",
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
      "code" : "FRLMOrder.orderPlacer[x]",
      "target" : [{
        "code" : "ServiceRequest.requester",
        "equivalence" : "equivalent",
        "comment" : "ServiceRequest.requester.resolve().ofType(PractitionerRole, Organization ou Patient)."
      }]
    },
    {
      "code" : "FRLMOrder.orderReason[x]",
      "target" : [{
        "code" : "ServiceRequest.reasonCode",
        "equivalence" : "relatedto",
        "comment" : "orderReason peut porter un CodeableConcept simple (porté par ServiceRequest.reasonCode) ou une référence FRLMCondition/FRLMObservation (portée alors par ServiceRequest.reasonReference)."
      }]
    }]
  }]
}

```
