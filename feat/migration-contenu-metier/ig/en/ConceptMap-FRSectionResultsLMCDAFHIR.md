# Mapping FRLMResultats → FRCDAResultats → FRCompositionDocument.section:results - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultats → FRCDAResultats → FRCompositionDocument.section:results 

 
Mapping des éléments du modèle métier FRLMResultats vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:results. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultats\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMResultats vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats",
    "element" : [{
      "code" : "FRLMResultats",
      "target" : [{
        "code" : "FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultats.codeSection",
      "target" : [{
        "code" : "FRCDAResultats.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultats.titreSection",
      "target" : [{
        "code" : "FRCDAResultats.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultats.blocNarratif",
      "target" : [{
        "code" : "FRCDAResultats.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultats.entree.resultatsEntry",
      "target" : [{
        "code" : "FRCDAResultats.entry:FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAResultats",
      "target" : [{
        "code" : "FRCompositionDocument.section:results",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:results.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:results.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:results.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultats.entry:FRCDAResultats",
      "target" : [{
        "code" : "FRCompositionDocument.section:results.entry:FRDiagnosticReportDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
