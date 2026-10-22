# Logical model - FR LM TravelHistory - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM TravelHistory 

 
Historique des voyages. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Travel History](StructureDefinition-fr-lm-section-travel-history.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-travel-history.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-travel-history.csv), [Excel](../StructureDefinition-fr-lm-travel-history.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-travel-history",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-travel-history",
  "version" : "0.1.0",
  "name" : "FRLMTravelHistory",
  "title" : "Logical model - FR LM TravelHistory",
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
  "description" : "Historique des voyages.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-travel-history",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-travel-history",
      "path" : "fr-lm-travel-history",
      "short" : "Logical model - FR LM TravelHistory",
      "definition" : "Historique des voyages."
    },
    {
      "id" : "fr-lm-travel-history.country",
      "path" : "fr-lm-travel-history.country",
      "short" : "Pays de destination du voyage",
      "definition" : "Pays de destination du voyage",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "ISO 3166"
      }
    },
    {
      "id" : "fr-lm-travel-history.period",
      "path" : "fr-lm-travel-history.period",
      "short" : "Période du voyage",
      "definition" : "Période du voyage",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    }]
  }
}

```
