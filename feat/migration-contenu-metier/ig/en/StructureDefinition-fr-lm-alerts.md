# Logical model - FR LM Alerts - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Alerts 

 
Section Points de vigilance 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-alerts.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-alerts.csv), [Excel](../StructureDefinition-fr-lm-alerts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-alerts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alerts",
  "version" : "0.1.0",
  "name" : "FRLMAlerts",
  "title" : "Logical model - FR LM Alerts",
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
  "description" : "Section Points de vigilance ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alerts",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-alerts",
      "path" : "fr-lm-alerts",
      "short" : "Logical model - FR LM Alerts",
      "definition" : "Section Points de vigilance "
    },
    {
      "id" : "fr-lm-alerts.titleSection",
      "path" : "fr-lm-alerts.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-alerts.subSection",
      "path" : "fr-lm-alerts.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-alerts.entry.alert",
      "path" : "fr-lm-alerts.entry.alert",
      "short" : "Points de vigilance",
      "definition" : "Points de vigilance",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-alert"
      }]
    }]
  }
}

```
