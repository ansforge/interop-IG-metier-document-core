# Logical model - FR LM Dose Number - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Dose Number 

 
Rang de la vaccination 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisation](StructureDefinition-fr-lm-immunisation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-dose-number.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-dose-number.csv), [Excel](../StructureDefinition-fr-lm-dose-number.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-dose-number",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dose-number",
  "version" : "0.1.0",
  "name" : "FRLMDoseNumber",
  "title" : "Logical model - FR LM Dose Number",
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
  "description" : "Rang de la vaccination",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dose-number",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-dose-number",
      "path" : "fr-lm-dose-number",
      "short" : "Logical model - FR LM Dose Number",
      "definition" : "Rang de la vaccination"
    },
    {
      "id" : "fr-lm-dose-number.identifier",
      "path" : "fr-lm-dose-number.identifier",
      "short" : "Identifiant de la dose de vaccin",
      "definition" : "Identifiant de la dose de vaccin",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-dose-number.status",
      "path" : "fr-lm-dose-number.status",
      "short" : "Statut de la dose de vaccin",
      "definition" : "Statut de la dose de vaccin",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-dose-number.date",
      "path" : "fr-lm-dose-number.date",
      "short" : "Date de la dose de vaccin",
      "definition" : "Date de la dose de vaccin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-dose-number.priority",
      "path" : "fr-lm-dose-number.priority",
      "short" : "Priorité",
      "definition" : "Priorité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-dose-number.renewal",
      "path" : "fr-lm-dose-number.renewal",
      "short" : "Nombre de renouvellements possibles",
      "definition" : "Nombre de renouvellements possibles",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-dose-number.language",
      "path" : "fr-lm-dose-number.language",
      "short" : "Language",
      "definition" : "Language",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-dose-number.doseNumber",
      "path" : "fr-lm-dose-number.doseNumber",
      "short" : "Rang de la vaccination",
      "definition" : "Rang de la vaccination",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
