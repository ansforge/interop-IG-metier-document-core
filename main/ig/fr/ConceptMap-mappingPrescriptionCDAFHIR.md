# Mapping Métier/CDA/FHIR : "Prescription" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Prescription" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "prescription" et l'élément CDA "inFulfillmentOf"
* Mapping 2 : entre l'élément CDA "inFulfillmentOf" et l'extension FHIR "OrderExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPrescriptionCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingPrescriptionCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"prescription\\\" et l'élément CDA \\\"inFulfillmentOf\\\"\n - Mapping 2 : entre l'élément CDA \\\"inFulfillmentOf\\\" et l'extension FHIR \\\"OrderExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-inFulfillment-of",
    "element" : [{
      "code" : "FRLMPrescription",
      "target" : [{
        "code" : "inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescription.identifiantPrescription",
      "target" : [{
        "code" : "inFulfillmentOf.order.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescription.accessionNumber",
      "target" : [{
        "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-inFulfillment-of",
    "target" : "http://hl7.org/fhir/StructureDefinition/event-basedOn",
    "targetVersion" : "5.3.0",
    "element" : [{
      "code" : "inFulfillmentOf",
      "target" : [{
        "code" : "extension:basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "inFulfillmentOf.order.id",
      "target" : [{
        "code" : "extension:basedOnExtension.ValueReference.ServiceRequest.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "inFulfillmentOf.order.ps3-20:accessionNumber",
      "target" : [{
        "code" : "extension:basedOn.ValueReference.ServiceRequest.identifier",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
