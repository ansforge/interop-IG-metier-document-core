# Logical model - FR LM Alert - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Alert 

 
Points de vigilances 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Alerts](StructureDefinition-FRLMAlerts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAlert.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAlert.csv), [Excel](../StructureDefinition-FRLMAlert.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAlert",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlert",
  "version" : "0.1.0",
  "name" : "FRLMAlert",
  "title" : "Logical model - FR LM Alert",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Points de vigilances",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAlert",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAlert",
      "path" : "FRLMAlert",
      "short" : "Logical model - FR LM Alert",
      "definition" : "Points de vigilances"
    },
    {
      "id" : "FRLMAlert.header.status",
      "path" : "FRLMAlert.header.status",
      "short" : "Statut de l'alerte",
      "min" : 1
    },
    {
      "id" : "FRLMAlert.code",
      "path" : "FRLMAlert.code",
      "short" : "Code de l'alerte",
      "definition" : "Code de l'alerte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMAlert.description",
      "path" : "FRLMAlert.description",
      "short" : "Description narrative de l'alerte",
      "definition" : "Description narrative de l'alerte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMAlert.priority",
      "path" : "FRLMAlert.priority",
      "short" : "Priorite",
      "definition" : "Priorite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): hl7:Flag-priority-code"
      }
    },
    {
      "id" : "FRLMAlert.period",
      "path" : "FRLMAlert.period",
      "short" : "Période de validité de l'alerte. Durée entre l'activation et la désactivation de l'alerte. Si l'alerte est active, la fin de cette période ne doit pas être spécifiée.",
      "definition" : "Période de validité de l'alerte. Durée entre l'activation et la désactivation de l'alerte. Si l'alerte est active, la fin de cette période ne doit pas être spécifiée.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMAlert.sourceReference",
      "path" : "FRLMAlert.sourceReference",
      "short" : "Référence de la source de l'alerte",
      "definition" : "Référence de la source de l'alerte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }]
    }]
  }
}

```
