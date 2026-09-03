# Logical model - FR LM Immunisations - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Immunisations 

 
Section Vaccinations 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMImmunisations.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMImmunisations.csv), [Excel](../StructureDefinition-FRLMImmunisations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMImmunisations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations",
  "version" : "0.1.0",
  "name" : "FRLMImmunisations",
  "title" : "Logical model - FR LM Immunisations",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMImmunisations",
      "path" : "FRLMImmunisations",
      "short" : "Logical model - FR LM Immunisations",
      "definition" : "Section Vaccinations"
    },
    {
      "id" : "FRLMImmunisations.titleSection",
      "path" : "FRLMImmunisations.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMImmunisations.subSection",
      "path" : "FRLMImmunisations.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMImmunisations.entry.immunisation",
      "path" : "FRLMImmunisations.entry.immunisation",
      "short" : "Entrée Vaccination",
      "definition" : "Entrée Vaccination",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation"
      }]
    }]
  }
}

```
