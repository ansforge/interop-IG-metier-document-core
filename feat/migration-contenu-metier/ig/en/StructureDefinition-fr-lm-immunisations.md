# Logical model - FR LM Immunisations - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Immunisations 

 
Section Vaccinations 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-immunisations.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-immunisations.csv), [Excel](../StructureDefinition-fr-lm-immunisations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-immunisations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisations",
  "version" : "0.1.0",
  "name" : "FRLMImmunisations",
  "title" : "Logical model - FR LM Immunisations",
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
  "description" : "Section Vaccinations",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-immunisations",
      "path" : "fr-lm-immunisations",
      "short" : "Logical model - FR LM Immunisations",
      "definition" : "Section Vaccinations"
    },
    {
      "id" : "fr-lm-immunisations.titleSection",
      "path" : "fr-lm-immunisations.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-immunisations.subSection",
      "path" : "fr-lm-immunisations.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-immunisations.entry.immunisation",
      "path" : "fr-lm-immunisations.entry.immunisation",
      "short" : "Entrée Vaccination",
      "definition" : "Entrée Vaccination",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisation"
      }]
    }]
  }
}

```
