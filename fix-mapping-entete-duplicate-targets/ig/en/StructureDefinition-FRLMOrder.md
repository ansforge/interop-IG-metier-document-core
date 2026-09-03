# Logical model - FR LM Order - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Order 

 
Association to an order that is the origin of the act resulting in the document. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMOrder.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMOrder.csv), [Excel](../StructureDefinition-FRLMOrder.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMOrder",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder",
  "version" : "0.1.0",
  "name" : "FRLMOrder",
  "title" : "Logical model - FR LM Order",
  "status" : "draft",
  "date" : "2026-09-03T10:35:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Association to an order that is the origin of the act resulting in the document.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMOrder",
      "path" : "FRLMOrder",
      "short" : "Logical model - FR LM Order",
      "definition" : "Association to an order that is the origin of the act resulting in the document."
    },
    {
      "id" : "FRLMOrder.orderId",
      "path" : "FRLMOrder.orderId",
      "short" : "Identifiant de la demande.",
      "definition" : "Identifiant de la demande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMOrder.accessionNumber",
      "path" : "FRLMOrder.accessionNumber",
      "short" : "Accession Number (Spécifique à l’imagerie).",
      "definition" : "Accession Number (Spécifique à l’imagerie).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMOrder.orderDateAndTime",
      "path" : "FRLMOrder.orderDateAndTime",
      "short" : "Date et heure de la demande.",
      "definition" : "Date et heure de la demande.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMOrder.orderPlacer[x]",
      "path" : "FRLMOrder.orderPlacer[x]",
      "short" : "La personne/l'organisation à l'origine de la demande.",
      "definition" : "La personne/l'organisation à l'origine de la demande.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      }]
    },
    {
      "id" : "FRLMOrder.orderReason[x]",
      "path" : "FRLMOrder.orderReason[x]",
      "short" : "Motif de la demande.",
      "definition" : "Motif de la demande.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
