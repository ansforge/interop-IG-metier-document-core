# Logical model - FR LM Quantity Exposure - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Quantity Exposure 

 
Quantité exposition 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Exposure Information](StructureDefinition-fr-lm-exposure-information.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-quantity-exposure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-quantity-exposure.csv), [Excel](../StructureDefinition-fr-lm-quantity-exposure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-quantity-exposure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-quantity-exposure",
  "version" : "0.1.0",
  "name" : "FRLMQuantityExposure",
  "title" : "Logical model - FR LM Quantity Exposure",
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
  "description" : "Quantité exposition",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-quantity-exposure",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-quantity-exposure",
      "path" : "fr-lm-quantity-exposure",
      "short" : "Logical model - FR LM Quantity Exposure",
      "definition" : "Quantité exposition"
    },
    {
      "id" : "fr-lm-quantity-exposure.header.participant[x].participantProfessional",
      "path" : "fr-lm-quantity-exposure.header.participant[x].participantProfessional",
      "short" : "Identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "fr-lm-quantity-exposure.type",
      "path" : "fr-lm-quantity-exposure.type",
      "short" : "Type de mesure d'exposition",
      "definition" : "Type de mesure d'exposition",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-quantite-exposition-rayonnements-cisis (1.2.250.1.213.1.1.5.620)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis|20260619134041"
      }
    },
    {
      "id" : "fr-lm-quantity-exposure.quantity",
      "path" : "fr-lm-quantity-exposure.quantity",
      "short" : "Quantité mesurée",
      "definition" : "Quantité mesurée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-quantity-exposure.bodySite",
      "path" : "fr-lm-quantity-exposure.bodySite",
      "short" : "Localisation anatomique irradiée (précision topographique)",
      "definition" : "Localisation anatomique irradiée (précision topographique)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    }]
  }
}

```
