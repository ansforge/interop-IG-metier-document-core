# Logical model - FR LM Allergies And Intolerances - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Allergies And Intolerances 

 
Section Allergies et hypersensibilités 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAllergiesAndIntolerances.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAllergiesAndIntolerances.csv), [Excel](../StructureDefinition-FRLMAllergiesAndIntolerances.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAllergiesAndIntolerances",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
  "version" : "0.1.0",
  "name" : "FRLMAllergiesAndIntolerances",
  "title" : "Logical model - FR LM Allergies And Intolerances",
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
  "description" : "Section Allergies et hypersensibilités",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAllergiesAndIntolerances",
      "path" : "FRLMAllergiesAndIntolerances",
      "short" : "Logical model - FR LM Allergies And Intolerances",
      "definition" : "Section Allergies et hypersensibilités"
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.titleSection",
      "path" : "FRLMAllergiesAndIntolerances.titleSection",
      "short" : "Allergies et hypersensibilités",
      "min" : 1
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.subSection",
      "path" : "FRLMAllergiesAndIntolerances.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.entry",
      "path" : "FRLMAllergiesAndIntolerances.entry",
      "min" : 1
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "path" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "short" : "Entrée Allergie ou Hypersensibilité",
      "definition" : "Entrée Allergie ou Hypersensibilité",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergyIntolerance"
      }]
    }]
  }
}

```
