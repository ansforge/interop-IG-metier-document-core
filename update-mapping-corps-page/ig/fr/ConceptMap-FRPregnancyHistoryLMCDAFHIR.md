# Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRPregnancyHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRPregnancyHistoryDocument 

 
Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique de la grossesse \"",
  "status" : "draft",
  "date" : "2026-08-14T12:10:20+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.status",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.directSubject[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.observationDate[x]",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.component",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.derivedFrom[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.hasMember[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-pregnancy-history-document",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.identifier",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.observationDate[x]",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.hasMember:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.component",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.component",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
