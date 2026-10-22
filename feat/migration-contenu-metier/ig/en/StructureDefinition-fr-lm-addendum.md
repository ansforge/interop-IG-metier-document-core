# Logical model - FR LM Addendum - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Addendum 

 
Section Addendum 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-addendum.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-addendum.csv), [Excel](../StructureDefinition-fr-lm-addendum.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-addendum",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-addendum",
  "version" : "0.1.0",
  "name" : "FRLMAddendum",
  "title" : "Logical model - FR LM Addendum",
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
  "description" : "Section Addendum",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-addendum",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-addendum",
      "path" : "fr-lm-addendum",
      "short" : "Logical model - FR LM Addendum",
      "definition" : "Section Addendum"
    },
    {
      "id" : "fr-lm-addendum.titleSection",
      "path" : "fr-lm-addendum.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-addendum.subSection",
      "path" : "fr-lm-addendum.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-addendum.entry",
      "path" : "fr-lm-addendum.entry",
      "max" : "0"
    }]
  }
}

```
