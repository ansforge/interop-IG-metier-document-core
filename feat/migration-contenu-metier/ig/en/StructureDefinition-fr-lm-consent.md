# Logical model - FR LM Consent - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Consent 

 
Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-consent.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-consent.csv), [Excel](../StructureDefinition-fr-lm-consent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-consent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-consent",
  "version" : "0.1.0",
  "name" : "FRLMConsent",
  "title" : "Logical model - FR LM Consent",
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
  "description" : "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-consent",
      "path" : "fr-lm-consent",
      "short" : "Logical model - FR LM Consent",
      "definition" : "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni."
    },
    {
      "id" : "fr-lm-consent.identifier",
      "path" : "fr-lm-consent.identifier",
      "short" : "Identifiant du consentement.",
      "definition" : "Identifiant du consentement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-consent.type",
      "path" : "fr-lm-consent.type",
      "short" : "Type de consentement.",
      "definition" : "Type de consentement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-consent.status",
      "path" : "fr-lm-consent.status",
      "short" : "Statut du consentement.",
      "definition" : "Statut du consentement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
