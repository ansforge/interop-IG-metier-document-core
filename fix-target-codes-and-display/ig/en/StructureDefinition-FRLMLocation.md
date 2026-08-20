# Logical model - FR LM Location - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Location 

 
Lieu 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Location](StructureDefinition-FRLMLocation.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMLocation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMLocation.csv), [Excel](../StructureDefinition-FRLMLocation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMLocation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation",
  "version" : "0.1.0",
  "name" : "FRLMLocation",
  "title" : "Logical model - FR LM Location",
  "status" : "draft",
  "date" : "2026-08-20T15:08:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Lieu",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMLocation",
      "path" : "FRLMLocation",
      "short" : "Logical model - FR LM Location",
      "definition" : "Lieu"
    },
    {
      "id" : "FRLMLocation.identifier",
      "path" : "FRLMLocation.identifier",
      "short" : "Identifiant du lieu",
      "definition" : "Identifiant du lieu",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMLocation.name",
      "path" : "FRLMLocation.name",
      "short" : "Nom du lieu",
      "definition" : "Nom du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMLocation.description",
      "path" : "FRLMLocation.description",
      "short" : "Informations complémentaires sur le lieu permettant de mieux l'identifier, au-delà de son nom.",
      "definition" : "Informations complémentaires sur le lieu permettant de mieux l'identifier, au-delà de son nom.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMLocation.type",
      "path" : "FRLMLocation.type",
      "short" : "Type de fonction exercée sur le lieu",
      "definition" : "Type de fonction exercée sur le lieu",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): https://terminology.hl7.org/ValueSet-v3-ServiceDeliveryLocationRoleType.html"
      }
    },
    {
      "id" : "FRLMLocation.address",
      "path" : "FRLMLocation.address",
      "short" : "Adresse du lieu",
      "definition" : "Adresse du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMLocation.managingOrganisation",
      "path" : "FRLMLocation.managingOrganisation",
      "short" : "Organisation responsable du lieu",
      "definition" : "Organisation responsable du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMLocation.partOf",
      "path" : "FRLMLocation.partOf",
      "short" : "Lieu dont celui-ci fait physiquement partie",
      "definition" : "Lieu dont celui-ci fait physiquement partie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation"
      }]
    }]
  }
}

```
