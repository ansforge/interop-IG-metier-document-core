# Mapping FRLMObservationSocialHistory → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationSocialHistory → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument 

 
Mapping des éléments du modèle métier FRLMObservationSocialHistory vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSocialHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSocialHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\"",
  "status" : "draft",
  "date" : "2026-08-05T12:15:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservationSocialHistory vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-social-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie",
    "element" : [{
      "code" : "FRLMObservationSocialHistory",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.header.status",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.observationDate[x]",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.type",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.result",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.note",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-social-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-social-history-document",
    "element" : [{
      "code" : "FRLMObservationSocialHistory",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.header.status",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.observationDate[x]",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.type",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.result",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.valueCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.note",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
