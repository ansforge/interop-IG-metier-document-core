# Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRPregnancyHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHistoriqueGrossesse → FRCDAHistoriqueDeLaGrossesse → FRPregnancyHistoryDocument 

 
Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMHistoriqueGrossesse vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRPregnancyHistoryDocument.",
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
      "code" : "FRLMHistoriqueGrossesse.choice[x]",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueGrossesse.choice[x]",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-pregnancy-history-document",
    "element" : [{
      "code" : "FRCDAHistoriqueDeLaGrossesse",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.id",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.code",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.effectiveTime",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frObservationSurLaGrossesse",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.entry.item:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDeLaGrossesse.entryRelationship:frNaissance",
      "target" : [{
        "code" : "FRPregnancyHistoryDocument.entry.item:FRObservationBirthEventDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
