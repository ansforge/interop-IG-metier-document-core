# Mapping FRLMObservationResults → FRCDAResultats / FRLMObservationResults → FRCompositionDocument.section:sectionResults - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationResults → FRCDAResultats / FRLMObservationResults → FRCompositionDocument.section:sectionResults 

 
Mapping des éléments du modèle métier FRLMObservationResults vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:sectionResults. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultats\"",
  "status" : "draft",
  "date" : "2026-08-14T14:32:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservationResults vers la section CDA FRCDAResultats, puis vers la section FHIR FRCompositionDocument.section:sectionResults.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-results",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats",
    "element" : [{
      "code" : "FRLMObservationResults",
      "target" : [{
        "code" : "FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "FRCDAResultats.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "FRCDAResultats.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "FRCDAResultats.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "FRCDAResultats.entry:FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-results",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMObservationResults",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionResults",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionResults.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionResults.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionResults.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionResults.entry:FRObservationResultDocument",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRCompositionDocument.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRCompositionDocument.section:sectionResults.entry:FRDiagnosticReportDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
