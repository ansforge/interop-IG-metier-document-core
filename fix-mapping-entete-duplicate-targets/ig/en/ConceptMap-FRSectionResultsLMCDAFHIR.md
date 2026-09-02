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
  "name" : "FRSectionResultsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultats\"",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-resultats",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationResults",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDASectionResultats",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAResultats",
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
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionResults",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResults.entry.observationResult",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
