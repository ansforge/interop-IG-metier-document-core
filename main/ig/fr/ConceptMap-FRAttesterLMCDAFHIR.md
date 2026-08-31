# Mapping FRLMAttester → FRCDAAuthenticator → Composition.attester - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAttester → FRCDAAuthenticator → Composition.attester 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMAttester" et l'élément CDA "authenticator"
* Mapping 2 : entre le modèle métier "FRLMAttester" et l'élément FHIR "Composition.attester"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAttesterLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAttesterLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRAttesterLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMAttester\\\" et l'élément CDA \\\"authenticator\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMAttester\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttester",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-authenticator",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAttester",
      "target" : [{
        "code" : "Authenticator",
        "display" : "authenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttester.dateTime",
      "target" : [{
        "code" : "Authenticator.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttester.attester[x]",
      "target" : [{
        "code" : "Authenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Cas où attester[x] référence un FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMAttester.attester[x]",
      "target" : [{
        "code" : "Authenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Cas où attester[x] référence un FRLMDevice (composant commun), cf. FRDeviceLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttester",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAttester",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.where(mode='professional')"
      }]
    },
    {
      "code" : "FRLMAttester.dateTime",
      "target" : [{
        "code" : "Composition.attester.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttester.attester[x]",
      "target" : [{
        "code" : "Composition.attester.party",
        "equivalence" : "equivalent",
        "comment" : "Cas où attester[x] référence un FRLMHealthProfessional (attester.party.resolve().ofType(PractitionerRole)) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMAttester.attester[x]",
      "target" : [{
        "code" : "Composition.attester.party",
        "equivalence" : "equivalent",
        "comment" : "Cas où attester[x] référence un FRLMDevice (attester.party.resolve().ofType(Device)) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    }]
  }]
}

```
