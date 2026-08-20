# Logical model - FR LM Family Member History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Family Member History 

 
Antécédent familial 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Family Medical History](StructureDefinition-FRLMFamilyMedicalHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMFamilyMemberHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMFamilyMemberHistory.csv), [Excel](../StructureDefinition-FRLMFamilyMemberHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMFamilyMemberHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory",
  "version" : "0.1.0",
  "name" : "FRLMFamilyMemberHistory",
  "title" : "Logical model - FR LM Family Member History",
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
  "description" : "Antécédent familial",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMFamilyMemberHistory",
      "path" : "FRLMFamilyMemberHistory",
      "short" : "Logical model - FR LM Family Member History",
      "definition" : "Antécédent familial"
    },
    {
      "id" : "FRLMFamilyMemberHistory.header.status",
      "path" : "FRLMFamilyMemberHistory.header.status",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Statut de l'entrée provenant du jdv FHIR https://hl7.org/fhir/R4/valueset-history-status",
        "valueSet" : "https://hl7.org/fhir/R4/valueset-history-status.html"
      }
    },
    {
      "id" : "FRLMFamilyMemberHistory.relatedPerson",
      "path" : "FRLMFamilyMemberHistory.relatedPerson",
      "short" : "Membre de la famille",
      "definition" : "Membre de la famille",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition",
      "path" : "FRLMFamilyMemberHistory.condition",
      "short" : "Problème du membre de la famille",
      "definition" : "Problème du membre de la famille",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition.code",
      "path" : "FRLMFamilyMemberHistory.condition.code",
      "short" : "Problème du membre de la famille",
      "definition" : "Problème du membre de la famille",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition.outcome",
      "path" : "FRLMFamilyMemberHistory.condition.outcome",
      "short" : "mort(e) | incapacité ; sévère | etc.",
      "definition" : "mort(e) | incapacité ; sévère | etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Statut provenant du jdv-health-status-code-cisis (1.2.250.1.213.1.1.4.2.283.1)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-health-status-code-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "path" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "short" : "problème cause du décès (O/N)",
      "definition" : "problème cause du décès (O/N)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "path" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "short" : "Date du problème",
      "definition" : "Date du problème",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.condition.bodySite",
      "path" : "FRLMFamilyMemberHistory.condition.bodySite",
      "short" : "Site de l'observation",
      "definition" : "Site de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMFamilyMemberHistory.note",
      "path" : "FRLMFamilyMemberHistory.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
