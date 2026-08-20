# Logical model - FR LM Human Name - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Human Name 

 
Modele logique metier - FR LM Human Name 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Health Professional](StructureDefinition-FRLMHealthProfessional.md), [Logical model - FR LM Participant](StructureDefinition-FRLMParticipant.md), [Logical model - FR LM Patient](StructureDefinition-FRLMPatient.md) and [Logical model - FR LM Related Person](StructureDefinition-FRLMRelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMHumanName.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMHumanName.csv), [Excel](../StructureDefinition-FRLMHumanName.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHumanName",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
  "version" : "0.1.0",
  "name" : "FRLMHumanName",
  "title" : "Logical model - FR LM Human Name",
  "status" : "draft",
  "date" : "2026-08-20T08:53:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Modele logique metier - FR LM Human Name",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHumanName",
      "path" : "FRLMHumanName",
      "short" : "Logical model - FR LM Human Name",
      "definition" : "Modele logique metier - FR LM Human Name"
    },
    {
      "id" : "FRLMHumanName.use",
      "path" : "FRLMHumanName.use",
      "short" : "Identifie le type de nom (ex : official, usual, etc.)",
      "definition" : "Identifie le type de nom (ex : official, usual, etc.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "ValueSet HL7 name-use",
        "valueSet" : "http://hl7.org/fhir/ValueSet/name-use|4.0.1"
      }
    },
    {
      "id" : "FRLMHumanName.text",
      "path" : "FRLMHumanName.text",
      "short" : "Nom complet tel qu'il doit etre affiche",
      "definition" : "Nom complet tel qu'il doit etre affiche",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMHumanName.family",
      "path" : "FRLMHumanName.family",
      "short" : "Nom",
      "definition" : "Nom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMHumanName.given",
      "path" : "FRLMHumanName.given",
      "short" : "Prenom",
      "definition" : "Prenom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMHumanName.prefix",
      "path" : "FRLMHumanName.prefix",
      "short" : "Civilite",
      "definition" : "Civilite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "JDV_J245-Civilite-CISIS",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J245-Civilite-CISIS/FHIR/JDV-J245-Civilite-CISIS|20230331120000"
      }
    },
    {
      "id" : "FRLMHumanName.suffix",
      "path" : "FRLMHumanName.suffix",
      "short" : "Titre",
      "definition" : "Titre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "JDV_J246-Titre-CISIS",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J246-Titre-CISIS/FHIR/JDV-J246-Titre-CISIS|20240126120000"
      }
    },
    {
      "id" : "FRLMHumanName.period",
      "path" : "FRLMHumanName.period",
      "short" : "Periode pendant laquelle ce nom est/etait utilisé",
      "definition" : "Periode pendant laquelle ce nom est/etait utilisé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    }]
  }
}

```
