# Logical model - FR LM Consent - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Consent 

 
Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMConsent.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMConsent.csv), [Excel](../StructureDefinition-FRLMConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent",
  "version" : "0.1.0",
  "name" : "FRLMConsent",
  "title" : "Logical model - FR LM Consent",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMConsent",
      "path" : "FRLMConsent",
      "short" : "Logical model - FR LM Consent",
      "definition" : "Permet de documenter qu'un consentement éclairé a été obtenu et d'indiquer quel type de consentement a été fourni."
    },
    {
      "id" : "FRLMConsent.identifier",
      "path" : "FRLMConsent.identifier",
      "short" : "Identifiant du consentement.",
      "definition" : "Identifiant du consentement.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMConsent.type",
      "path" : "FRLMConsent.type",
      "short" : "Type de consentement.",
      "definition" : "Type de consentement.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMConsent.status",
      "path" : "FRLMConsent.status",
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
