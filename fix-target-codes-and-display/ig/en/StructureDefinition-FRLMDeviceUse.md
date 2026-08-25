# Logical model - FR LM Device use - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Device use 

 
Dispositif médical usage 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md), [Logical Model - FR LM Medical Device Prescriptions](StructureDefinition-FRLMMedicalDevicePrescriptions.md), [Logical Model - FR LM Medical Devices and Implants](StructureDefinition-FRLMMedicalDevicesAndImplants.md), [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md) and [Logical model - FR LM Supporting Information](StructureDefinition-FRLMSupportingInformation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMDeviceUse.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMDeviceUse.csv), [Excel](../StructureDefinition-FRLMDeviceUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMDeviceUse",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse",
  "version" : "0.1.0",
  "name" : "FRLMDeviceUse",
  "title" : "Logical model - FR LM Device use",
  "status" : "draft",
  "date" : "2026-08-25T20:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Dispositif médical usage",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMDeviceUse",
      "path" : "FRLMDeviceUse",
      "short" : "Logical model - FR LM Device use",
      "definition" : "Dispositif médical usage"
    },
    {
      "id" : "FRLMDeviceUse.header.status",
      "path" : "FRLMDeviceUse.header.status",
      "short" : "Status de l'utilisation du DM (ex active, completed, etc).",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du http://hl7.org/fhir/ValueSet/device-statement-status",
        "valueSet" : "https://hl7.org/fhir/R4/valueset-device-statement-status.html"
      }
    },
    {
      "id" : "FRLMDeviceUse.periodOfUse",
      "path" : "FRLMDeviceUse.periodOfUse",
      "short" : "Période d'utilisation ou de présence chez le patient",
      "definition" : "Période d'utilisation ou de présence chez le patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "path" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMDeviceUse.periodOfUse.endDate",
      "path" : "FRLMDeviceUse.periodOfUse.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMDeviceUse.periodOfUse.duration",
      "path" : "FRLMDeviceUse.periodOfUse.duration",
      "short" : "Durée d'utilisation",
      "definition" : "Durée d'utilisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMDeviceUse.device",
      "path" : "FRLMDeviceUse.device",
      "short" : "Dispositif médical",
      "definition" : "Dispositif médical",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMDeviceUse.bodySite",
      "path" : "FRLMDeviceUse.bodySite",
      "short" : "localisation anatomique. Le code de la localisation doit être issu de SNOMED CT (2.16.840.1.113883.6.96)",
      "definition" : "localisation anatomique. Le code de la localisation doit être issu de SNOMED CT (2.16.840.1.113883.6.96)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMDeviceUse.reason[x]",
      "path" : "FRLMDeviceUse.reason[x]",
      "short" : "Motif de l'utilisation du dispositif médical.\n - motif codé (spécifique à un  contexte)\n - motif : un problème\n - motif : une observation\n - motif : un acte",
      "definition" : "Motif de l'utilisation du dispositif médical.\n - motif codé (spécifique à un  contexte)\n - motif : un problème\n - motif : une observation\n - motif : un acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      }]
    },
    {
      "id" : "FRLMDeviceUse.note",
      "path" : "FRLMDeviceUse.note",
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
