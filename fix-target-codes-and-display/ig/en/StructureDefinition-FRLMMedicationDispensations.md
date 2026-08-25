# Logical model - FR LM Medication Dispensations - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Medication Dispensations 

 
Section Dispensation médicaments 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedicationDispensations.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedicationDispensations.csv), [Excel](../StructureDefinition-FRLMMedicationDispensations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationDispensations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
  "version" : "0.1.0",
  "name" : "FRLMMedicationDispensations",
  "title" : "Logical model - FR LM Medication Dispensations",
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
  "description" : "Section Dispensation médicaments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationDispensations",
      "path" : "FRLMMedicationDispensations",
      "short" : "Logical model - FR LM Medication Dispensations",
      "definition" : "Section Dispensation médicaments"
    },
    {
      "id" : "FRLMMedicationDispensations.titleSection",
      "path" : "FRLMMedicationDispensations.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationDispensations.subSection",
      "path" : "FRLMMedicationDispensations.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMMedicationDispensations.entry",
      "path" : "FRLMMedicationDispensations.entry",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationDispensations.entry.medicationDispense",
      "path" : "FRLMMedicationDispensations.entry.medicationDispense",
      "short" : "Entrée Traitement dispensé",
      "definition" : "Entrée Traitement dispensé",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
      }]
    }]
  }
}

```
