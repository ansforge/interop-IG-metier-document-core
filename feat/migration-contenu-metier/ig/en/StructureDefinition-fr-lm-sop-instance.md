# Logical model - FR LM SOP Instance - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM SOP Instance 

 
SOP Instance 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Series](StructureDefinition-fr-lm-series.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-sop-instance.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-sop-instance.csv), [Excel](../StructureDefinition-fr-lm-sop-instance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-sop-instance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-sop-instance",
  "version" : "0.1.0",
  "name" : "FRLMSOPInstance",
  "title" : "Logical model - FR LM SOP Instance",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "SOP Instance",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-sop-instance",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-sop-instance",
      "path" : "fr-lm-sop-instance",
      "short" : "Logical model - FR LM SOP Instance",
      "definition" : "SOP Instance"
    },
    {
      "id" : "fr-lm-sop-instance.header.identifier",
      "path" : "fr-lm-sop-instance.header.identifier",
      "short" : "UUID SOP instance",
      "min" : 1
    },
    {
      "id" : "fr-lm-sop-instance.sopClass",
      "path" : "fr-lm-sop-instance.sopClass",
      "short" : "Classe SOP",
      "definition" : "Classe SOP",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-sop-instance.instanceNumber",
      "path" : "fr-lm-sop-instance.instanceNumber",
      "short" : "Numéro de l'instance dans la série",
      "definition" : "Numéro de l'instance dans la série",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-sop-instance.numberOfFrames",
      "path" : "fr-lm-sop-instance.numberOfFrames",
      "short" : "Nombre de cadres composant l'instance",
      "definition" : "Nombre de cadres composant l'instance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
