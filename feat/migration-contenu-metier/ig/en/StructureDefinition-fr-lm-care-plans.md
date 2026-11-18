# Logical model - FR LM CarePlans - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM CarePlans 

 
Section Plan de soins 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-care-plans.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-care-plans.csv), [Excel](../StructureDefinition-fr-lm-care-plans.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-care-plans",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plans",
  "version" : "0.1.0",
  "name" : "FRLMCarePlans",
  "title" : "Logical model - FR LM CarePlans",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Plan de soins",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plans",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-care-plans",
      "path" : "fr-lm-care-plans",
      "short" : "Logical model - FR LM CarePlans",
      "definition" : "Section Plan de soins"
    },
    {
      "id" : "fr-lm-care-plans.titleSection",
      "path" : "fr-lm-care-plans.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-care-plans.subSection",
      "path" : "fr-lm-care-plans.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-care-plans.entry.carePlans",
      "path" : "fr-lm-care-plans.entry.carePlans",
      "short" : "Entrée Plan de soins",
      "definition" : "Entrée Plan de soins",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-care-plan"
      }]
    }]
  }
}

```
