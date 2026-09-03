# Logical model - FR LM FR LM Medication Prescription - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM FR LM Medication Prescription 

 
Section Prescription de médicaments 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedicationPrescription.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedicationPrescription.csv), [Excel](../StructureDefinition-FRLMMedicationPrescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationPrescription",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription",
  "version" : "0.1.0",
  "name" : "FRLMMedicationPrescription",
  "title" : "Logical model - FR LM FR LM Medication Prescription",
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
  "description" : "Section Prescription de médicaments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationPrescription",
      "path" : "FRLMMedicationPrescription",
      "short" : "Logical model - FR LM FR LM Medication Prescription",
      "definition" : "Section Prescription de médicaments"
    },
    {
      "id" : "FRLMMedicationPrescription.subSection",
      "path" : "FRLMMedicationPrescription.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMMedicationPrescription.entry",
      "path" : "FRLMMedicationPrescription.entry",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationPrescription.entry.prescriptionItem",
      "path" : "FRLMMedicationPrescription.entry.prescriptionItem",
      "short" : "Entrée Traitement prescrit",
      "definition" : "Entrée Traitement prescrit",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem"
      }]
    }]
  }
}

```
