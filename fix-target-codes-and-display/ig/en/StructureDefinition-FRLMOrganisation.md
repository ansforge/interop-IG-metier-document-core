# Logical model - FR LM Organisation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Organisation 

 
Une structure (organisation) pour les professionnels de santé. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Entry](StructureDefinition-FRLMEntry.md), [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md), [Logical model - FR LM Health Professional](StructureDefinition-FRLMHealthProfessional.md)... Show 15 more, [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md), [Logical model - FR LM Informant](StructureDefinition-FRLMInformant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-FRLMIntendedRecipient.md), [Modèle logique métier - FR LM Laboratoire exécutant](StructureDefinition-FRLMLaboratoireExecutant.md), [Logical model - FR LM Legal Authentication](StructureDefinition-FRLMLegalAuthentication.md), [Logical model - FR LM Location](StructureDefinition-FRLMLocation.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Order](StructureDefinition-FRLMOrder.md), [Logical model - FR LM Organisation](StructureDefinition-FRLMOrganisation.md), [Logical model - FR LM Participant](StructureDefinition-FRLMParticipant.md), [Logical model - FR LM Patient](StructureDefinition-FRLMPatient.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md), [Logical model - FR LM Section](StructureDefinition-FRLMSection.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMOrganisation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMOrganisation.csv), [Excel](../StructureDefinition-FRLMOrganisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMOrganisation",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
  "version" : "0.1.0",
  "name" : "FRLMOrganisation",
  "title" : "Logical model - FR LM Organisation",
  "status" : "draft",
  "date" : "2026-08-25T11:34:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Une structure (organisation) pour les professionnels de santé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMOrganisation",
      "path" : "FRLMOrganisation",
      "short" : "Logical model - FR LM Organisation",
      "definition" : "Une structure (organisation) pour les professionnels de santé.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "FRLMOrganisation.identifier",
      "path" : "FRLMOrganisation.identifier",
      "short" : "Identifiant de la structure",
      "definition" : "Identifiant de la structure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMOrganisation.type",
      "path" : "FRLMOrganisation.type",
      "short" : "Type de structure",
      "definition" : "Type de structure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Catégorie d'établissement provenant du jdv FHIR https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis|20260505120000"
      }
    },
    {
      "id" : "FRLMOrganisation.name",
      "path" : "FRLMOrganisation.name",
      "short" : "Nom de la structure",
      "definition" : "Nom de la structure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMOrganisation.address",
      "path" : "FRLMOrganisation.address",
      "short" : "Adresse de la structure",
      "definition" : "Adresse de la structure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMOrganisation.telecom",
      "path" : "FRLMOrganisation.telecom",
      "short" : "Coordonnées télécom",
      "definition" : "Coordonnées télécom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "FRLMOrganisation.partOf",
      "path" : "FRLMOrganisation.partOf",
      "short" : "Lieu dont celui-ci fait physiquement partie",
      "definition" : "Lieu dont celui-ci fait physiquement partie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMOrganisation.industrySector",
      "path" : "FRLMOrganisation.industrySector",
      "short" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS",
      "definition" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS (Code de type d'établissement de santé provenant du JDV FHIR)",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS|20260223120000"
      }
    }]
  }
}

```
