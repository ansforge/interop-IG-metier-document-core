# Logical model - FR LM Patient Education - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Patient Education 

 
Section Education du patient 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-patient-education.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-patient-education.csv), [Excel](../StructureDefinition-fr-lm-patient-education.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-patient-education",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education",
  "version" : "0.1.0",
  "name" : "FRLMPatientEducation",
  "title" : "Logical model - FR LM Patient Education",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Education du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-patient-education",
      "path" : "fr-lm-patient-education",
      "short" : "Logical model - FR LM Patient Education",
      "definition" : "Section Education du patient"
    },
    {
      "id" : "fr-lm-patient-education.subSection",
      "path" : "fr-lm-patient-education.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-patient-education.entry.procedure",
      "path" : "fr-lm-patient-education.entry.procedure",
      "short" : "Entrée Acte",
      "definition" : "Entrée Acte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      }]
    },
    {
      "id" : "fr-lm-patient-education.entry.observation",
      "path" : "fr-lm-patient-education.entry.observation",
      "short" : "Entrée Simple observation",
      "definition" : "Entrée Simple observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      }]
    },
    {
      "id" : "fr-lm-patient-education.entry.reference",
      "path" : "fr-lm-patient-education.entry.reference",
      "short" : "Entrée Références externes",
      "definition" : "Entrée Références externes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment"
      }]
    }]
  }
}

```
