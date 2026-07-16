# Logical model - FR LM Transfusion de produits sanguins - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Transfusion de produits sanguins 

 
Transfusion de produits sanguins 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-transfusion-de-produits-sanguins.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-transfusion-de-produits-sanguins.csv), [Excel](../StructureDefinition-fr-lm-transfusion-de-produits-sanguins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-transfusion-de-produits-sanguins",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-transfusion-de-produits-sanguins",
  "version" : "0.1.0",
  "name" : "FRLMTransfusionDeProduitsSanguins",
  "title" : "Logical model - FR LM Transfusion de produits sanguins",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Transfusion de produits sanguins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-transfusion-de-produits-sanguins",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-transfusion-de-produits-sanguins",
      "path" : "fr-lm-transfusion-de-produits-sanguins",
      "short" : "Logical model - FR LM Transfusion de produits sanguins",
      "definition" : "Transfusion de produits sanguins"
    },
    {
      "id" : "fr-lm-transfusion-de-produits-sanguins.code",
      "path" : "fr-lm-transfusion-de-produits-sanguins.code",
      "short" : "Code de l'entrée",
      "definition" : "Code de l'entrée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-transfusion-de-produits-sanguins.transfusionProduitSanguin",
      "path" : "fr-lm-transfusion-de-produits-sanguins.transfusionProduitSanguin",
      "short" : "Transfusion de produit sanguin",
      "definition" : "Transfusion de produit sanguin",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
