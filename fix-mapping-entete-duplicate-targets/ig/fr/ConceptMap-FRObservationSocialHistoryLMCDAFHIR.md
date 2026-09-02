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
  "name" : "FRObservationSocialHistoryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T15:48:56+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationSocialHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-habitus-mode-de-vie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationSocialHistory",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAHabitusModeDeVie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationSocialHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-social-history-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationSocialHistory",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationSocialHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationSocialHistory.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
