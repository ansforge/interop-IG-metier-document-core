# Logical model - FR LM ObservationResults - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM ObservationResults 

 
Section Résultats 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMObservationResults.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMObservationResults.csv), [Excel](../StructureDefinition-FRLMObservationResults.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservationResults",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
  "version" : "0.1.0",
  "name" : "FRLMObservationResults",
  "title" : "Logical model - FR LM ObservationResults",
  "status" : "draft",
  "date" : "2026-08-31T08:09:30+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Résultats",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservationResults",
      "path" : "FRLMObservationResults",
      "short" : "Logical model - FR LM ObservationResults",
      "definition" : "Section Résultats"
    },
    {
      "id" : "FRLMObservationResults.titleSection",
      "path" : "FRLMObservationResults.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMObservationResults.subSection",
      "path" : "FRLMObservationResults.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMObservationResults.entry.observationResult",
      "path" : "FRLMObservationResults.entry.observationResult",
      "short" : "Entrée Resultats",
      "definition" : "Entrée Resultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
