# Logical model - FR LM Hospital Discharge Medications - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Hospital Discharge Medications 

 
Section Traitements à la sortie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMHospitalDischargeMedications.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMHospitalDischargeMedications.csv), [Excel](../StructureDefinition-FRLMHospitalDischargeMedications.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHospitalDischargeMedications",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications",
  "version" : "0.1.0",
  "name" : "FRLMHospitalDischargeMedications",
  "title" : "Logical model - FR LM Hospital Discharge Medications",
  "status" : "draft",
  "date" : "2026-09-03T10:35:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Traitements à la sortie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHospitalDischargeMedications",
      "path" : "FRLMHospitalDischargeMedications",
      "short" : "Logical model - FR LM Hospital Discharge Medications",
      "definition" : "Section Traitements à la sortie"
    },
    {
      "id" : "FRLMHospitalDischargeMedications.subSection",
      "path" : "FRLMHospitalDischargeMedications.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMHospitalDischargeMedications.entry",
      "path" : "FRLMHospitalDischargeMedications.entry",
      "min" : 1
    },
    {
      "id" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications",
      "path" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications",
      "short" : "Entrée Traitement à la sortie",
      "definition" : "Entrée Traitement à la sortie",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    }]
  }
}

```
