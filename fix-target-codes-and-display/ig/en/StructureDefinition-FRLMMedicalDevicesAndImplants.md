# Logical Model - FR LM Medical Devices and Implants - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical Model - FR LM Medical Devices and Implants 

 
Section Dispositifs Medicaux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedicalDevicesAndImplants.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedicalDevicesAndImplants.csv), [Excel](../StructureDefinition-FRLMMedicalDevicesAndImplants.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicalDevicesAndImplants",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants",
  "version" : "0.1.0",
  "name" : "FRLMMedicalDevicesAndImplants",
  "title" : "Logical Model - FR LM Medical Devices and Implants",
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
  "description" : "Section Dispositifs Medicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicalDevicesAndImplants",
      "path" : "FRLMMedicalDevicesAndImplants",
      "short" : "Logical Model - FR LM Medical Devices and Implants",
      "definition" : "Section Dispositifs Medicaux"
    },
    {
      "id" : "FRLMMedicalDevicesAndImplants.titleSection",
      "path" : "FRLMMedicalDevicesAndImplants.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMMedicalDevicesAndImplants.subSection",
      "path" : "FRLMMedicalDevicesAndImplants.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "path" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "short" : "Entrée Dispositif medical",
      "definition" : "Entrée Dispositif medical",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    }]
  }
}

```
