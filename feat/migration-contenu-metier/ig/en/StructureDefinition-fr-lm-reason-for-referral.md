# Logical model - FR LM Reason for referral - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Reason for referral 

 
Section Raison de la recommandation 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-reason-for-referral.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-reason-for-referral.csv), [Excel](../StructureDefinition-fr-lm-reason-for-referral.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-reason-for-referral",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-reason-for-referral",
  "version" : "0.1.0",
  "name" : "FRLMReasonForReferral",
  "title" : "Logical model - FR LM Reason for referral",
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
  "description" : "Section Raison de la recommandation",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-reason-for-referral",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-reason-for-referral",
      "path" : "fr-lm-reason-for-referral",
      "short" : "Logical model - FR LM Reason for referral",
      "definition" : "Section Raison de la recommandation"
    },
    {
      "id" : "fr-lm-reason-for-referral.subSection",
      "path" : "fr-lm-reason-for-referral.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-reason-for-referral.entry",
      "path" : "fr-lm-reason-for-referral.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-reason-for-referral.entry.observation",
      "path" : "fr-lm-reason-for-referral.entry.observation",
      "short" : "Entrée Simple observation",
      "definition" : "Entrée Simple observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-reason-for-referral.entry.problemes",
      "path" : "fr-lm-reason-for-referral.entry.problemes",
      "short" : "Entrée Problème",
      "definition" : "Entrée Problème",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    }]
  }
}

```
