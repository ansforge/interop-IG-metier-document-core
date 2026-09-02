# Mapping FRLMConsent → FRCDAAuthorization → Consent - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMConsent → FRCDAAuthorization → Consent 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMConsent" et l'élément CDA "authorization"
* Mapping 2 : entre le modèle métier "FRLMConsent" et la ressource FHIR "Consent" (référencée depuis Composition via l'extension ConsentExtension)
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRConsentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRConsentLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRConsentLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Consentement\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMConsent\\\" et l'élément CDA \\\"authorization\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMConsent\\\" et la ressource FHIR \\\"Consent\\\" (référencée depuis Composition via l'extension ConsentExtension)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-authorization",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMConsent",
      "target" : [{
        "code" : "Authorization",
        "display" : "authorization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsent.identifier",
      "target" : [{
        "code" : "Authorization.consent.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsent.type",
      "target" : [{
        "code" : "Authorization.consent.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsent.status",
      "target" : [{
        "code" : "Authorization.consent.statusCode",
        "equivalence" : "equivalent",
        "comment" : "Valeur fixée à 'completed'."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent",
    "sourceVersion" : "0.1.0",
    "target" : "http://hl7.org/fhir/StructureDefinition/Consent",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "FRLMConsent",
      "target" : [{
        "code" : "Consent",
        "equivalence" : "equivalent",
        "comment" : "Référencé depuis Composition.extension:consent (ConsentExtension.value[x]:valueReference)."
      }]
    },
    {
      "code" : "FRLMConsent.identifier",
      "target" : [{
        "code" : "Consent.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsent.type",
      "target" : [{
        "code" : "Consent.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConsent.status",
      "target" : [{
        "code" : "Consent.status",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
