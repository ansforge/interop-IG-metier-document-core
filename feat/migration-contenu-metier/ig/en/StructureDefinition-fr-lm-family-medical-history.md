# Logical model - FR LM Family Medical History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Family Medical History 

 
Section Antécédents familiaux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-family-medical-history.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-family-medical-history.csv), [Excel](../StructureDefinition-fr-lm-family-medical-history.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-family-medical-history",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-family-medical-history",
  "version" : "0.1.0",
  "name" : "FRLMFamilyMedicalHistory",
  "title" : "Logical model - FR LM Family Medical History",
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
  "description" : "Section Antécédents familiaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-family-medical-history",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-family-medical-history",
      "path" : "fr-lm-family-medical-history",
      "short" : "Logical model - FR LM Family Medical History",
      "definition" : "Section Antécédents familiaux"
    },
    {
      "id" : "fr-lm-family-medical-history.subSection",
      "path" : "fr-lm-family-medical-history.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-family-medical-history.entry",
      "path" : "fr-lm-family-medical-history.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-family-medical-history.entry.familyMemberHistory",
      "path" : "fr-lm-family-medical-history.entry.familyMemberHistory",
      "short" : "Entrée Antécédents familiaux",
      "definition" : "Entrée Antécédents familiaux",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-family-member-history"
      }]
    }]
  }
}

```
