# Logical model - FR LM Body Structure - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Body Structure 

 
Localisation anatomique 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Condition](StructureDefinition-fr-lm-condition.md), [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM Family Member History](StructureDefinition-fr-lm-family-member-history.md), [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md)... Show 8 more, [Logical model - FR LM Assessment](StructureDefinition-fr-lm-observation-assessment.md), [Logical model - FR LM Observation Vital Sign](StructureDefinition-fr-lm-observation-vital-sign.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [Logical model - FR LM Quantity Exposure](StructureDefinition-fr-lm-quantity-exposure.md), [Logical model - FR LM Series](StructureDefinition-fr-lm-series.md), [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-body-structure.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-body-structure.csv), [Excel](../StructureDefinition-fr-lm-body-structure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-body-structure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure",
  "version" : "0.1.0",
  "name" : "FRLMBodyStructure",
  "title" : "Logical model - FR LM Body Structure",
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
  "description" : "Localisation anatomique",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-body-structure",
      "path" : "fr-lm-body-structure",
      "short" : "Logical model - FR LM Body Structure",
      "definition" : "Localisation anatomique"
    },
    {
      "id" : "fr-lm-body-structure.morphology",
      "path" : "fr-lm-body-structure.morphology",
      "short" : "Type de structure représentée par la localisation anatomique. Peut décrire une morphologie normale ou anormale.",
      "definition" : "Type de structure représentée par la localisation anatomique. Peut décrire une morphologie normale ou anormale.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-body-structure.location",
      "path" : "fr-lm-body-structure.location",
      "short" : "Site anatomique",
      "definition" : "Site anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "SNOMED CT"
      }
    },
    {
      "id" : "fr-lm-body-structure.locationQualifier",
      "path" : "fr-lm-body-structure.locationQualifier",
      "short" : "Précision topographique (par exemple : supérieur, inférieur, distal, proximal).",
      "definition" : "Précision topographique (par exemple : supérieur, inférieur, distal, proximal).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modificateur-topographique-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-body-structure.description",
      "path" : "fr-lm-body-structure.description",
      "short" : "Description textuelle de la localisation anatomique",
      "definition" : "Description textuelle de la localisation anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
