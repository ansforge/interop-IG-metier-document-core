# Mapping Métier/CDA/FHIR : "Consentement" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Consentement" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "ConsentementAssocie" et l'élément CDA "authorization"
* Mapping 2 : entre l'élément CDA "authorization" et l'extension FHIR "ConsentExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingConsentementCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingConsentementCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"ConsentementAssocie\\\" et l'élément CDA \\\"authorization\\\"\n - Mapping 2 : entre l'élément CDA \\\"authorization\\\" et l'extension FHIR \\\"ConsentExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-consentement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authorization",
    "element" : [{
      "code" : "FRLMConsentement",
      "target" : [{
        "code" : "authorization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsentement.identifiantConsentement",
      "target" : [{
        "code" : "authorization.consent.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsentement.typeConsentement",
      "target" : [{
        "code" : "authorization.consent.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsentement.statutConsentement",
      "target" : [{
        "code" : "authorization.consent.statusCode=\"completed\"",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authorization",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/consent-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "authorization",
      "target" : [{
        "code" : "extension:ConsentExtension.ValueReference.Consent",
        "equivalence" : "equivalent",
        "comment" : "ValueReference.resolve().ofType(Consent)"
      }]
    },
    {
      "code" : "authorization.consent.id",
      "target" : [{
        "code" : "extension:ConsentExtension.ValueReference.Consent.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authorization.consent.code",
      "target" : [{
        "code" : "extension:ConsentExtension.ValueReference.Consent.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authorization.consent.statusCode=\"completed\"",
      "target" : [{
        "code" : "extension:ConsentExtension.ValueReference.Consent.status:active",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
