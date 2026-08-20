# Logical model - FR LM Health Professional - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Health Professional 

 
Une personne (professionnel ou patient ou autre) 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Attester](StructureDefinition-FRLMAttester.md), [Logical model - FR LM Data Enterer](StructureDefinition-FRLMDataEnterer.md), [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Entry](StructureDefinition-FRLMEntry.md)... Show 13 more, [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md), [Logical model - FR LM Informant](StructureDefinition-FRLMInformant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-FRLMIntendedRecipient.md), [Modèle logique métier - FR LM Laboratoire exécutant](StructureDefinition-FRLMLaboratoireExecutant.md), [Logical model - FR LM Legal Authentication](StructureDefinition-FRLMLegalAuthentication.md), [Logical model - FR LM Medication Dispense](StructureDefinition-FRLMMedicationDispense.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Order](StructureDefinition-FRLMOrder.md), [Logical model - FR LM Participant](StructureDefinition-FRLMParticipant.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md), [Logical model - FR LM Section](StructureDefinition-FRLMSection.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMHealthProfessional.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMHealthProfessional.csv), [Excel](../StructureDefinition-FRLMHealthProfessional.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHealthProfessional",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
  "version" : "0.1.0",
  "name" : "FRLMHealthProfessional",
  "title" : "Logical model - FR LM Health Professional",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Une personne (professionnel ou patient ou autre)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHealthProfessional",
      "path" : "FRLMHealthProfessional",
      "short" : "Logical model - FR LM Health Professional",
      "definition" : "Une personne (professionnel ou patient ou autre)"
    },
    {
      "id" : "FRLMHealthProfessional.identifier",
      "path" : "FRLMHealthProfessional.identifier",
      "short" : "Identifiant.",
      "definition" : "Identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.name",
      "path" : "FRLMHealthProfessional.name",
      "short" : "Nom du professionnel de santé.",
      "definition" : "Nom du professionnel de santé.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.address",
      "path" : "FRLMHealthProfessional.address",
      "short" : "Adresses géopostales du professionnel de santé.",
      "definition" : "Adresses géopostales du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.telecom",
      "path" : "FRLMHealthProfessional.telecom",
      "short" : "Coordonnées télécom du professionnel de santé.",
      "definition" : "Coordonnées télécom du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.professionalRole",
      "path" : "FRLMHealthProfessional.professionalRole",
      "short" : "Rôle professionnel",
      "definition" : "Rôle professionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.professionalRole.role",
      "path" : "FRLMHealthProfessional.professionalRole.role",
      "short" : "Rôle du professionnel de santé.",
      "definition" : "Rôle du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.professionalRole.organisation",
      "path" : "FRLMHealthProfessional.professionalRole.organisation",
      "short" : "Organisation à laquelle le professionnel de santé est rattaché pour exercer ce rôle.",
      "definition" : "Organisation à laquelle le professionnel de santé est rattaché pour exercer ce rôle.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMHealthProfessional.professionalRole.specialty",
      "path" : "FRLMHealthProfessional.professionalRole.specialty",
      "short" : "Spécialité d'un professionnel de santé qui décrit le rôle fonctionnel qu'il exerce au sein de l'organisation.",
      "definition" : "Spécialité d'un professionnel de santé qui décrit le rôle fonctionnel qu'il exerce au sein de l'organisation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
