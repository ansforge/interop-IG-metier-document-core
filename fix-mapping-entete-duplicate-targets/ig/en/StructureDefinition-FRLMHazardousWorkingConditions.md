# Logical model - FR LM Hazardous Working Conditions - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Hazardous Working Conditions 

 
Section Facteurs de risque professionnels non codés 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMHazardousWorkingConditions.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMHazardousWorkingConditions.csv), [Excel](../StructureDefinition-FRLMHazardousWorkingConditions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHazardousWorkingConditions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHazardousWorkingConditions",
  "version" : "0.1.0",
  "name" : "FRLMHazardousWorkingConditions",
  "title" : "Logical model - FR LM Hazardous Working Conditions",
  "status" : "draft",
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Facteurs de risque professionnels non codés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHazardousWorkingConditions",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHazardousWorkingConditions",
      "path" : "FRLMHazardousWorkingConditions",
      "short" : "Logical model - FR LM Hazardous Working Conditions",
      "definition" : "Section Facteurs de risque professionnels non codés"
    },
    {
      "id" : "FRLMHazardousWorkingConditions.subSection",
      "path" : "FRLMHazardousWorkingConditions.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMHazardousWorkingConditions.entry",
      "path" : "FRLMHazardousWorkingConditions.entry",
      "max" : "0"
    }]
  }
}

```
