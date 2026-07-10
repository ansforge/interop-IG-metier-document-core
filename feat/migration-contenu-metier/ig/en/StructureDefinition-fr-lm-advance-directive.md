# Logical model - FR LM Advance Directive - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Advance Directive 

 
Directive anticipée 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Advance Directives](StructureDefinition-fr-lm-advance-directives.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-advance-directive.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-advance-directive.csv), [Excel](../StructureDefinition-fr-lm-advance-directive.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-advance-directive",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-advance-directive",
  "version" : "0.1.0",
  "name" : "FRLMAdvanceDirective",
  "title" : "Logical model - FR LM Advance Directive",
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
  "description" : "Directive anticipée",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-advance-directive",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-advance-directive",
      "path" : "fr-lm-advance-directive",
      "short" : "Logical model - FR LM Advance Directive",
      "definition" : "Directive anticipée"
    },
    {
      "id" : "fr-lm-advance-directive.header.status",
      "path" : "fr-lm-advance-directive.header.status",
      "short" : "Statut de la directive anticipée",
      "min" : 1
    },
    {
      "id" : "fr-lm-advance-directive.date",
      "path" : "fr-lm-advance-directive.date",
      "short" : "Date de la directive anticipée",
      "definition" : "Date de la directive anticipée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-advance-directive.category",
      "path" : "fr-lm-advance-directive.category",
      "short" : "Type de directive",
      "definition" : "Type de directive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-type-directive-anticipee-cisis (1.2.250.1.213.1.1.5.136)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis|20260619134043"
      }
    },
    {
      "id" : "fr-lm-advance-directive.value",
      "path" : "fr-lm-advance-directive.value",
      "short" : "Procédure autorisée ou pas",
      "definition" : "Procédure autorisée ou pas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-advance-directive.note",
      "path" : "fr-lm-advance-directive.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-advance-directive.attachment",
      "path" : "fr-lm-advance-directive.attachment",
      "short" : "Piece jointe associee a la directive",
      "definition" : "Piece jointe associee a la directive",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment"
      }]
    }]
  }
}

```
