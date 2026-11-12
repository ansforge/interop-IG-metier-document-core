# Logical model - FR LM Transfusion accidents - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Transfusion accidents 

 
Accidents transfusionnels 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMTransfusionAccidents.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMTransfusionAccidents.csv), [Excel](../StructureDefinition-FRLMTransfusionAccidents.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMTransfusionAccidents",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMTransfusionAccidents",
  "version" : "0.1.0",
  "name" : "FRLMTransfusionAccidents",
  "title" : "Logical model - FR LM Transfusion accidents",
  "status" : "draft",
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Accidents transfusionnels",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMTransfusionAccidents",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMTransfusionAccidents",
      "path" : "FRLMTransfusionAccidents",
      "short" : "Logical model - FR LM Transfusion accidents",
      "definition" : "Accidents transfusionnels"
    },
    {
      "id" : "FRLMTransfusionAccidents.code",
      "path" : "FRLMTransfusionAccidents.code",
      "short" : "Code de l’observation",
      "definition" : "Code de l’observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMTransfusionAccidents.valeur",
      "path" : "FRLMTransfusionAccidents.valeur",
      "short" : "Description sous forme textuelle de l'accident transfusionnel",
      "definition" : "Description sous forme textuelle de l'accident transfusionnel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
