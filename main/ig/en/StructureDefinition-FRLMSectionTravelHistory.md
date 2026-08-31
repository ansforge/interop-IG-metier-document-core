# Logical model - FR LM Travel History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Travel History 

 
Section Historique des voyages 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMSectionTravelHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMSectionTravelHistory.csv), [Excel](../StructureDefinition-FRLMSectionTravelHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSectionTravelHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionTravelHistory",
  "version" : "0.1.0",
  "name" : "FRLMSectionTravelHistory",
  "title" : "Logical model  - FR LM Travel History",
  "status" : "draft",
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Historique des voyages",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionTravelHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSectionTravelHistory",
      "path" : "FRLMSectionTravelHistory",
      "short" : "Logical model  - FR LM Travel History",
      "definition" : "Section Historique des voyages"
    },
    {
      "id" : "FRLMSectionTravelHistory.titleSection",
      "path" : "FRLMSectionTravelHistory.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMSectionTravelHistory.subSection",
      "path" : "FRLMSectionTravelHistory.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMSectionTravelHistory.entry.travelHistory",
      "path" : "FRLMSectionTravelHistory.entry.travelHistory",
      "short" : "Historique des voyages",
      "definition" : "Historique des voyages",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMTravelHistory"
      }]
    },
    {
      "id" : "FRLMSectionTravelHistory.entry.note",
      "path" : "FRLMSectionTravelHistory.entry.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
