# Logical model - FR LM Alerts - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Alerts 

 
Section Points de vigilance 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAlerts.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAlerts.csv), [Excel](../StructureDefinition-FRLMAlerts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAlerts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlerts",
  "version" : "0.1.0",
  "name" : "FRLMAlerts",
  "title" : "Logical model - FR LM Alerts",
  "status" : "draft",
  "date" : "2026-09-03T10:02:14+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Points de vigilance",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlerts",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAlerts",
      "path" : "FRLMAlerts",
      "short" : "Logical model - FR LM Alerts",
      "definition" : "Section Points de vigilance"
    },
    {
      "id" : "FRLMAlerts.titleSection",
      "path" : "FRLMAlerts.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMAlerts.subSection",
      "path" : "FRLMAlerts.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAlerts.entry.alert",
      "path" : "FRLMAlerts.entry.alert",
      "short" : "Points de vigilance",
      "definition" : "Points de vigilance",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlert"
      }]
    }]
  }
}

```
