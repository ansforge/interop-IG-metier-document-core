# Logical model - FR LM Hazardous Working Conditions - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Hazardous Working Conditions 

 
Section Facteurs de risque professionnels non codés 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-hazardous-working-conditions.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-hazardous-working-conditions.csv), [Excel](../StructureDefinition-fr-lm-hazardous-working-conditions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-hazardous-working-conditions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions",
  "version" : "0.1.0",
  "name" : "FRLMHazardousWorkingConditions",
  "title" : "Logical model - FR LM Hazardous Working Conditions",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-hazardous-working-conditions",
      "path" : "fr-lm-hazardous-working-conditions",
      "short" : "Logical model - FR LM Hazardous Working Conditions",
      "definition" : "Section Facteurs de risque professionnels non codés"
    },
    {
      "id" : "fr-lm-hazardous-working-conditions.subSection",
      "path" : "fr-lm-hazardous-working-conditions.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-hazardous-working-conditions.entry",
      "path" : "fr-lm-hazardous-working-conditions.entry",
      "max" : "0"
    }]
  }
}

```
