# Logical model - FR LM Multidrug Resistant Microorganism Identification - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Multidrug Resistant Microorganism Identification 

 
Identification de micro-organismes multirésistants 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-multidrug-resistant-microorganism-identification.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-multidrug-resistant-microorganism-identification.csv), [Excel](../StructureDefinition-fr-lm-multidrug-resistant-microorganism-identification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-multidrug-resistant-microorganism-identification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-multidrug-resistant-microorganism-identification",
  "version" : "0.1.0",
  "name" : "FRLMMultidrugResistantMicroorganismIdentification",
  "title" : "Logical model - FR LM Multidrug Resistant Microorganism Identification",
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
  "description" : "Identification de micro-organismes multirésistants",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-multidrug-resistant-microorganism-identification",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-multidrug-resistant-microorganism-identification",
      "path" : "fr-lm-multidrug-resistant-microorganism-identification",
      "short" : "Logical model - FR LM Multidrug Resistant Microorganism Identification",
      "definition" : "Identification de micro-organismes multirésistants"
    },
    {
      "id" : "fr-lm-multidrug-resistant-microorganism-identification.code",
      "path" : "fr-lm-multidrug-resistant-microorganism-identification.code",
      "short" : "Code de l’observation",
      "definition" : "Code de l’observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-multidrug-resistant-microorganism-identification.value",
      "path" : "fr-lm-multidrug-resistant-microorganism-identification.value",
      "short" : "Description sous forme textuelle des micro-organismes identifiés",
      "definition" : "Description sous forme textuelle des micro-organismes identifiés",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
