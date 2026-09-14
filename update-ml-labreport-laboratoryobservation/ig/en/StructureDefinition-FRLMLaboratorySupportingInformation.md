# Logical model - FR LM Laboratory Supporting Information - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Laboratory Supporting Information 

 
Section Informations Cliniques pour les examens de biologie médicale 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMLaboratorySupportingInformation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMLaboratorySupportingInformation.csv), [Excel](../StructureDefinition-FRLMLaboratorySupportingInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMLaboratorySupportingInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratorySupportingInformation",
  "version" : "0.1.0",
  "name" : "FRLMLaboratorySupportingInformation",
  "title" : "Logical model - FR LM Laboratory Supporting Information",
  "status" : "draft",
  "date" : "2026-09-14T13:28:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Informations Cliniques pour les examens de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratorySupportingInformation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMLaboratorySupportingInformation",
      "path" : "FRLMLaboratorySupportingInformation",
      "short" : "Logical model - FR LM Laboratory Supporting Information",
      "definition" : "Section Informations Cliniques pour les examens de biologie médicale"
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.titleSection",
      "path" : "FRLMLaboratorySupportingInformation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.subSection",
      "path" : "FRLMLaboratorySupportingInformation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry",
      "path" : "FRLMLaboratorySupportingInformation.entry",
      "min" : 1
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.observation",
      "path" : "FRLMLaboratorySupportingInformation.entry.observation",
      "short" : "Résultats cliniques et autres observations",
      "definition" : "Résultats cliniques et autres observations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.condition",
      "path" : "FRLMLaboratorySupportingInformation.entry.condition",
      "short" : "Problèmes",
      "definition" : "Problèmes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.medicationAdministration",
      "path" : "FRLMLaboratorySupportingInformation.entry.medicationAdministration",
      "short" : "Produits de santé administré avant l'examen de biologie",
      "definition" : "Produits de santé administré avant l'examen de biologie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.sexForClinicalUse",
      "path" : "FRLMLaboratorySupportingInformation.entry.sexForClinicalUse",
      "short" : "Sexe Clinique",
      "definition" : "Sexe Clinique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.vaccination",
      "path" : "FRLMLaboratorySupportingInformation.entry.vaccination",
      "short" : "Historique vaccinal du patient",
      "definition" : "Historique vaccinal du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation"
      }]
    },
    {
      "id" : "FRLMLaboratorySupportingInformation.entry.otherSupportingInformation",
      "path" : "FRLMLaboratorySupportingInformation.entry.otherSupportingInformation",
      "short" : "Autres informations cliniques pertinentes",
      "definition" : "Autres informations cliniques pertinentes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Resource"
      }]
    }]
  }
}

```
