# Logical Model - FR LM Medical Device Prescriptions - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical Model - FR LM Medical Device Prescriptions 

 
Section Prescription de dispositifs médicaux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedicalDevicePrescriptions.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedicalDevicePrescriptions.csv), [Excel](../StructureDefinition-FRLMMedicalDevicePrescriptions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicalDevicePrescriptions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions",
  "version" : "0.1.0",
  "name" : "FRLMMedicalDevicePrescriptions",
  "title" : "Logical Model - FR LM Medical Device Prescriptions",
  "status" : "draft",
  "date" : "2026-09-03T10:02:14+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Prescription de dispositifs médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicalDevicePrescriptions",
      "path" : "FRLMMedicalDevicePrescriptions",
      "short" : "Logical Model - FR LM Medical Device Prescriptions",
      "definition" : "Section Prescription de dispositifs médicaux"
    },
    {
      "id" : "FRLMMedicalDevicePrescriptions.subSection",
      "path" : "FRLMMedicalDevicePrescriptions.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMMedicalDevicePrescriptions.entry",
      "path" : "FRLMMedicalDevicePrescriptions.entry",
      "min" : 1
    },
    {
      "id" : "FRLMMedicalDevicePrescriptions.entry.deviceUse",
      "path" : "FRLMMedicalDevicePrescriptions.entry.deviceUse",
      "short" : "Entrée Dispositif médical prescrit",
      "definition" : "Entrée Dispositif médical prescrit",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    }]
  }
}

```
