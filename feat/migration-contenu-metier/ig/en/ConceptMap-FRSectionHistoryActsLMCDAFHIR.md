# Mapping FRLMHistoriqueDesActes → FRCDAHistoriqueDesActes → FRCompositionDocument.section:historyActs - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHistoriqueDesActes → FRCDAHistoriqueDesActes → FRCompositionDocument.section:historyActs 

 
Mapping des éléments du modèle métier FRLMHistoriqueDesActes vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:historyActs. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionHistoryActsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionHistoryActsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique des actes\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMHistoriqueDesActes vers la section CDA FRCDAHistoriqueDesActes, puis vers la section FHIR FRCompositionDocument.section:historyActs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-historique-des-actes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-actes",
    "element" : [{
      "code" : "FRLMHistoriqueDesActes",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesActes.codeSection",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesActes.titreSection",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesActes.blocNarratif",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesActes.entree.actes",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes.entry:FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoriqueDesActes.entree.references",
      "target" : [{
        "code" : "FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-historique-des-actes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAHistoriqueDesActes",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesActes.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesActes.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesActes.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesActes.entry:FRCDAActe",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs.entry:FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHistoriqueDesActes.entry:FRCDAReferencesExternes",
      "target" : [{
        "code" : "FRCompositionDocument.section:historyActs.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
