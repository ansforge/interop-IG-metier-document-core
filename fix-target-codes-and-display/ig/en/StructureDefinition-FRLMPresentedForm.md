# Logical model - FR LM Presented Form - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Presented Form 

 
Section Document PDF-copie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPresentedForm.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPresentedForm.csv), [Excel](../StructureDefinition-FRLMPresentedForm.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPresentedForm",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm",
  "version" : "0.1.0",
  "name" : "FRLMPresentedForm",
  "title" : "Logical model - FR LM Presented Form",
  "status" : "draft",
  "date" : "2026-08-25T20:08:46+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPresentedForm",
      "path" : "FRLMPresentedForm",
      "short" : "Logical model - FR LM Presented Form",
      "definition" : "Section Document PDF-copie"
    },
    {
      "id" : "FRLMPresentedForm.titleSection",
      "path" : "FRLMPresentedForm.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMPresentedForm.subSection",
      "path" : "FRLMPresentedForm.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMPresentedForm.entry",
      "path" : "FRLMPresentedForm.entry",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "FRLMPresentedForm.entry.attachment",
      "path" : "FRLMPresentedForm.entry.attachment",
      "short" : "Entrée Document attaché",
      "definition" : "Entrée Document attaché",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    }]
  }
}

```
