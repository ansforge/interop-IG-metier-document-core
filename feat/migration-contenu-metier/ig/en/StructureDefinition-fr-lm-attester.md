# Logical model - FR LM Attester - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Attester 

 
Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-attester.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-attester.csv), [Excel](../StructureDefinition-fr-lm-attester.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-attester",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attester",
  "version" : "0.1.0",
  "name" : "FRLMAttester",
  "title" : "Logical model - FR LM Attester",
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
  "description" : "Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attester",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-attester",
      "path" : "fr-lm-attester",
      "short" : "Logical model - FR LM Attester",
      "definition" : "Professionnel attestant la validité des informations portées dans le document sans pour autant en prendre la responsabilité. N'est pas utilisé dans un document d'expression personnelle du patient/usager et un document produit par un système."
    },
    {
      "id" : "fr-lm-attester.dateTime",
      "path" : "fr-lm-attester.dateTime",
      "short" : "Date/Heure de l'attestation de validité.",
      "definition" : "Date/Heure de l'attestation de validité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-attester.attester[x]",
      "path" : "fr-lm-attester.attester[x]",
      "short" : "Professionnel attestant la validité.",
      "definition" : "Professionnel attestant la validité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    }]
  }
}

```
