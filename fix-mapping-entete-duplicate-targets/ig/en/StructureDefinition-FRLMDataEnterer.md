# Logical model - FR LM Data Enterer - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Data Enterer 

 
Opérateur de saisie de la totalité ou d'une partie du contenu du document. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMDataEnterer.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMDataEnterer.csv), [Excel](../StructureDefinition-FRLMDataEnterer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMDataEnterer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer",
  "version" : "0.1.0",
  "name" : "FRLMDataEnterer",
  "title" : "Logical model - FR LM Data Enterer",
  "status" : "draft",
  "date" : "2026-09-02T10:43:57+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Opérateur de saisie de la totalité ou d'une partie du contenu du document.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMDataEnterer",
      "path" : "FRLMDataEnterer",
      "short" : "Logical model - FR LM Data Enterer",
      "definition" : "Opérateur de saisie de la totalité ou d'une partie du contenu du document.",
      "max" : "1"
    },
    {
      "id" : "FRLMDataEnterer.date",
      "path" : "FRLMDataEnterer.date",
      "short" : "Date de la saisie.",
      "definition" : "Date de la saisie.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMDataEnterer.dataEnterer[x]",
      "path" : "FRLMDataEnterer.dataEnterer[x]",
      "short" : "Opérateur de saisie",
      "definition" : "Opérateur de saisie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      }]
    }]
  }
}

```
