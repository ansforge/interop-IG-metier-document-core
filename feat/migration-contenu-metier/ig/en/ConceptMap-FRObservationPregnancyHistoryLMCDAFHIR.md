# Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRObservationPregnancyHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRObservationPregnancyHistoryDocument 

 
Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-grossesse",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "element" : [{
      "code" : "FRLMHistoriqueGrossesse",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.identifiant",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.code",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.statut",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.periodeGrossesse",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.choice:FRLMNaissance",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.choice:FRLMObservationGrossesse",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-history-document",
    "element" : [{
      "code" : "FRCDAHistoriqueDeLaGrossesse.id",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.code",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.statusCode",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.effectiveTime",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.hasMember:FRObservationBirthEventDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.hasMember:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
