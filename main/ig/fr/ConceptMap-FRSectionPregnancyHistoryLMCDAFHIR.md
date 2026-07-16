# Mapping FRLMHistoriqueDesGrossesses → FRCDAHistoriqueDesGrossesses → FRCompositionDocument.section:pregnancyHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHistoriqueDesGrossesses → FRCDAHistoriqueDesGrossesses → FRCompositionDocument.section:pregnancyHistory 

 
Mapping des éléments du modèle métier FRLMHistoriqueDesGrossesses vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:pregnancyHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique des grossesses\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMHistoriqueDesGrossesses vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:pregnancyHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-grossesses",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-grossesses",
    "element" : [{
      "code" : "FRLMHistoriqueDesGrossesses",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesGrossesses.codeSection",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesGrossesses.titreSection",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesGrossesses.blocNarratif",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesGrossesses.entree[x]:FRLMObservationGrossesse",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesGrossesses.entree[x]:FRLMHistoriqueGrossesse",
      "target" : [{
        "code" : "FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-grossesses",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAHistoriqueDesGrossesses",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesGrossesses.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesGrossesses.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesGrossesses.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesGrossesses.entry:FRCDAObservationSurLaGrossesse",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesGrossesses.entry:FRCDAHistoriqueDeLaGrossesse",
      "target" : [{
        "code" : "FRCompositionDocument.section:pregnancyHistory.entry:FRObservationPregnancyHistoryDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
