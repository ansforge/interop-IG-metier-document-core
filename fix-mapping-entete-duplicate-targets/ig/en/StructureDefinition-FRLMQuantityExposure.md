# Logical model - FR LM Quantity Exposure - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Quantity Exposure 

 
Quantité exposition 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Exposure Information](StructureDefinition-FRLMExposureInformation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMQuantityExposure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMQuantityExposure.csv), [Excel](../StructureDefinition-FRLMQuantityExposure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMQuantityExposure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure",
  "version" : "0.1.0",
  "name" : "FRLMQuantityExposure",
  "title" : "Logical model - FR LM Quantity Exposure",
  "status" : "draft",
  "date" : "2026-09-02T10:43:57+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMQuantityExposure",
      "path" : "FRLMQuantityExposure",
      "short" : "Logical model - FR LM Quantity Exposure",
      "definition" : "Quantité exposition"
    },
    {
      "id" : "FRLMQuantityExposure.header.participant[x].participantProfessional",
      "path" : "FRLMQuantityExposure.header.participant[x].participantProfessional",
      "short" : "Identité du professionnel de santé ayant donné l'autorisation de l'exposition du patient aux rayonnements",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "FRLMQuantityExposure.type",
      "path" : "FRLMQuantityExposure.type",
      "short" : "Type de mesure d'exposition",
      "definition" : "Type de mesure d'exposition",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-quantite-exposition-rayonnements-cisis (1.2.250.1.213.1.1.5.620)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-quantite-exposition-rayonnements-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMQuantityExposure.quantity",
      "path" : "FRLMQuantityExposure.quantity",
      "short" : "Quantité mesurée",
      "definition" : "Quantité mesurée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMQuantityExposure.bodySite",
      "path" : "FRLMQuantityExposure.bodySite",
      "short" : "Localisation anatomique irradiée (précision topographique)",
      "definition" : "Localisation anatomique irradiée (précision topographique)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    }]
  }
}

```
