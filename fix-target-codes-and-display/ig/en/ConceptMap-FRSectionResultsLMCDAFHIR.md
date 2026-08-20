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
  "date" : "2026-08-20T15:08:45+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationResults",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "Organizer.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "Organizer.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "Organizer.entry:FRCDAResultats",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationResults",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationResults",
      "target" : [{
        "code" : "Composition.section:sectionResults",
        "display" : "FRCompositionDocument.section:sectionResults",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionResults.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionResults.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "Composition.section:sectionResults.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "Composition.section:sectionResults.entry:FRObservationResultDocument",
        "equivalence" : "equivalent"
      },
      {
        "code" : "Composition.section:sectionResults.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      },
      {
        "code" : "Composition.section:sectionResults.entry:FRDiagnosticReportDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
