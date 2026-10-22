# Logical model - FR LM Participant - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Participant 

 
Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md) and [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-participant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-participant.csv), [Excel](../StructureDefinition-fr-lm-participant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-participant",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-participant",
  "version" : "0.1.0",
  "name" : "FRLMParticipant",
  "title" : "Logical model - FR LM Participant",
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
  "description" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-participant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-participant",
      "path" : "fr-lm-participant",
      "short" : "Logical model - FR LM Participant",
      "definition" : "Personne/Structure impliquée dans les évènements décrits par le document qui n'a pas été mentionné ailleurs."
    },
    {
      "id" : "fr-lm-participant.identifier",
      "path" : "fr-lm-participant.identifier",
      "short" : "Identifiants de la personne",
      "definition" : "Identifiants de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-participant.name",
      "path" : "fr-lm-participant.name",
      "short" : "Nom de la personne",
      "definition" : "Nom de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-human-name"
      }]
    },
    {
      "id" : "fr-lm-participant.type",
      "path" : "fr-lm-participant.type",
      "short" : "Type de participation",
      "definition" : "Type de participation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-v3-ParticipationType-cisis (2.16.840.1.113883.1.11.10901)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ParticipationType-cisis|20260420150251"
      }
    },
    {
      "id" : "fr-lm-participant.role",
      "path" : "fr-lm-participant.role",
      "short" : "Rôle fonctionnel",
      "definition" : "Rôle fonctionnel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "JDV_J47_FunctionCode_CISIS (1.2.250.1.213.1.1.5.124)",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J47-FunctionCode-CISIS/FHIR/JDV-J47-FunctionCode-CISIS|20250523120000"
      }
    },
    {
      "id" : "fr-lm-participant.period",
      "path" : "fr-lm-participant.period",
      "short" : "Période de la participation",
      "definition" : "Période de la participation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-participant.participant",
      "path" : "fr-lm-participant.participant",
      "short" : "Participant",
      "definition" : "Participant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-participant.participant.participantProfessional",
      "path" : "fr-lm-participant.participant.participantProfessional",
      "short" : "Le participant est un professionnel de santé",
      "definition" : "Le participant est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-participant.participant.participantOrganisation",
      "path" : "fr-lm-participant.participant.participantOrganisation",
      "short" : "Le participant est une organisation",
      "definition" : "Le participant est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-participant.participant.participantDevice",
      "path" : "fr-lm-participant.participant.participantDevice",
      "short" : "Le participant est un système",
      "definition" : "Le participant est un système",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    }]
  }
}

```
