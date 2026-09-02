# Logical model - FR LM Dose Number - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Dose Number 

 
Rang de la vaccination 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisation](StructureDefinition-FRLMImmunisation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMDoseNumber.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMDoseNumber.csv), [Excel](../StructureDefinition-FRLMDoseNumber.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMDoseNumber",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDoseNumber",
  "version" : "0.1.0",
  "name" : "FRLMDoseNumber",
  "title" : "Logical model - FR LM Dose Number",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDoseNumber",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMDoseNumber",
      "path" : "FRLMDoseNumber",
      "short" : "Logical model - FR LM Dose Number",
      "definition" : "Rang de la vaccination"
    },
    {
      "id" : "FRLMDoseNumber.identifier",
      "path" : "FRLMDoseNumber.identifier",
      "short" : "Identifiant de la dose de vaccin",
      "definition" : "Identifiant de la dose de vaccin",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMDoseNumber.status",
      "path" : "FRLMDoseNumber.status",
      "short" : "Statut de la dose de vaccin",
      "definition" : "Statut de la dose de vaccin",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FRLMDoseNumber.date",
      "path" : "FRLMDoseNumber.date",
      "short" : "Date de la dose de vaccin",
      "definition" : "Date de la dose de vaccin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMDoseNumber.priority",
      "path" : "FRLMDoseNumber.priority",
      "short" : "Priorité",
      "definition" : "Priorité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMDoseNumber.renewal",
      "path" : "FRLMDoseNumber.renewal",
      "short" : "Nombre de renouvellements possibles",
      "definition" : "Nombre de renouvellements possibles",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "FRLMDoseNumber.language",
      "path" : "FRLMDoseNumber.language",
      "short" : "Language",
      "definition" : "Language",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FRLMDoseNumber.doseNumber",
      "path" : "FRLMDoseNumber.doseNumber",
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
