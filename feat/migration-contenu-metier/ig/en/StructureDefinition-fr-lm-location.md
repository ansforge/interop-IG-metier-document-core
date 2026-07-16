# Logical model - FR LM Location - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Location 

 
Lieu 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Location](StructureDefinition-fr-lm-location.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-location.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-location.csv), [Excel](../StructureDefinition-fr-lm-location.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-location",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location",
  "version" : "0.1.0",
  "name" : "FRLMLocation",
  "title" : "Logical model - FR LM Location",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-location",
      "path" : "fr-lm-location",
      "short" : "Logical model - FR LM Location",
      "definition" : "Lieu"
    },
    {
      "id" : "fr-lm-location.identifier",
      "path" : "fr-lm-location.identifier",
      "short" : "Identifiant du lieu",
      "definition" : "Identifiant du lieu",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-location.name",
      "path" : "fr-lm-location.name",
      "short" : "Nom du lieu",
      "definition" : "Nom du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-location.description",
      "path" : "fr-lm-location.description",
      "short" : "Informations complémentaires sur le lieu permettant de mieux l'identifier, au-delà de son nom.",
      "definition" : "Informations complémentaires sur le lieu permettant de mieux l'identifier, au-delà de son nom.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-location.type",
      "path" : "fr-lm-location.type",
      "short" : "Type de fonction exercée sur le lieu",
      "definition" : "Type de fonction exercée sur le lieu",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): https://terminology.hl7.org/ValueSet-v3-ServiceDeliveryLocationRoleType.html"
      }
    },
    {
      "id" : "fr-lm-location.address",
      "path" : "fr-lm-location.address",
      "short" : "Adresse du lieu",
      "definition" : "Adresse du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-location.managingOrganisation",
      "path" : "fr-lm-location.managingOrganisation",
      "short" : "Organisation responsable du lieu",
      "definition" : "Organisation responsable du lieu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-location.partOf",
      "path" : "fr-lm-location.partOf",
      "short" : "Lieu dont celui-ci fait physiquement partie",
      "definition" : "Lieu dont celui-ci fait physiquement partie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location"
      }]
    }]
  }
}

```
