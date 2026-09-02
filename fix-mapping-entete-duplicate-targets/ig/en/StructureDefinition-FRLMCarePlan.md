# Logical model - FR LM Care Plan - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Care Plan 

 
Plan de soins 

**Usages:**

* Use this Logical Model: [Logical model - FR LM CarePlans](StructureDefinition-FRLMCarePlans.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md) and [Logical model - FR LM Recommendation](StructureDefinition-FRLMRecommendation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMCarePlan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMCarePlan.csv), [Excel](../StructureDefinition-FRLMCarePlan.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMCarePlan",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan",
  "version" : "0.1.0",
  "name" : "FRLMCarePlan",
  "title" : "Logical model - FR LM Care Plan",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Plan de soins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlan",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMCarePlan",
      "path" : "FRLMCarePlan",
      "short" : "Logical model - FR LM Care Plan",
      "definition" : "Plan de soins"
    },
    {
      "id" : "FRLMCarePlan.header.status",
      "path" : "FRLMCarePlan.header.status",
      "short" : "Statut du plan de soin (projet, actif, suspendu, annulé, terminé, erreur, inconnu)",
      "min" : 1
    },
    {
      "id" : "FRLMCarePlan.addresses",
      "path" : "FRLMCarePlan.addresses",
      "short" : "Problèmes de santé traités par ce plan",
      "definition" : "Problèmes de santé traités par ce plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMCarePlan.goal",
      "path" : "FRLMCarePlan.goal",
      "short" : "Résultat souhaité du plan",
      "definition" : "Résultat souhaité du plan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMCarePlan.activity",
      "path" : "FRLMCarePlan.activity",
      "short" : "Action incluse dans ce plan de soins",
      "definition" : "Action incluse dans ce plan de soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
