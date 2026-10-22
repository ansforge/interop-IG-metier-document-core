# Logical model - FR LM Presented Form - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Presented Form 

 
Section Document PDF-copie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-presented-form.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-presented-form.csv), [Excel](../StructureDefinition-fr-lm-presented-form.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-presented-form",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-presented-form",
  "version" : "0.1.0",
  "name" : "FRLMPresentedForm",
  "title" : "Logical model - FR LM Presented Form",
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
  "description" : "Section Document PDF-copie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-presented-form",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-presented-form",
      "path" : "fr-lm-presented-form",
      "short" : "Logical model - FR LM Presented Form",
      "definition" : "Section Document PDF-copie"
    },
    {
      "id" : "fr-lm-presented-form.titleSection",
      "path" : "fr-lm-presented-form.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-presented-form.subSection",
      "path" : "fr-lm-presented-form.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-presented-form.entry",
      "path" : "fr-lm-presented-form.entry",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "fr-lm-presented-form.entry.attachment",
      "path" : "fr-lm-presented-form.entry.attachment",
      "short" : "Entrée Document attaché",
      "definition" : "Entrée Document attaché",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment"
      }]
    }]
  }
}

```
