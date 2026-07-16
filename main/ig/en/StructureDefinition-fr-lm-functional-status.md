# logical model- FR LM Functional Status - FR Document Core (Modèle métier) v0.1.0

## Logical Model: logical model- FR LM Functional Status 

 
Section Statut fonctionnel 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-functional-status.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-functional-status.csv), [Excel](../StructureDefinition-fr-lm-functional-status.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-functional-status",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-functional-status",
  "version" : "0.1.0",
  "name" : "FRLMFunctionalStatus",
  "title" : "logical model- FR LM Functional Status",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Statut fonctionnel",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-functional-status",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-functional-status",
      "path" : "fr-lm-functional-status",
      "short" : "logical model- FR LM Functional Status",
      "definition" : "Section Statut fonctionnel"
    },
    {
      "id" : "fr-lm-functional-status.titleSection",
      "path" : "fr-lm-functional-status.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-functional-status.subSection",
      "path" : "fr-lm-functional-status.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-functional-status.entry.assessment",
      "path" : "fr-lm-functional-status.entry.assessment",
      "short" : "résultat d'une évaluation du statut fonctionnel",
      "definition" : "résultat d'une évaluation du statut fonctionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-assessment"
      }]
    }]
  }
}

```
