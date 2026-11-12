# Logical model - FR LM Reason for referral - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Reason for referral 

 
Section Raison de la recommandation 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMReasonForReferral.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMReasonForReferral.csv), [Excel](../StructureDefinition-FRLMReasonForReferral.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMReasonForReferral",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral",
  "version" : "0.1.0",
  "name" : "FRLMReasonForReferral",
  "title" : "Logical model - FR LM Reason for referral",
  "status" : "draft",
  "date" : "2026-08-31T08:09:30+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMReasonForReferral",
      "path" : "FRLMReasonForReferral",
      "short" : "Logical model - FR LM Reason for referral",
      "definition" : "Section Raison de la recommandation"
    },
    {
      "id" : "FRLMReasonForReferral.subSection",
      "path" : "FRLMReasonForReferral.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMReasonForReferral.entry",
      "path" : "FRLMReasonForReferral.entry",
      "min" : 1
    },
    {
      "id" : "FRLMReasonForReferral.entry.observation",
      "path" : "FRLMReasonForReferral.entry.observation",
      "short" : "Entrée Simple observation",
      "definition" : "Entrée Simple observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMReasonForReferral.entry.problemes",
      "path" : "FRLMReasonForReferral.entry.problemes",
      "short" : "Entrée Problème",
      "definition" : "Entrée Problème",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    }]
  }
}

```
