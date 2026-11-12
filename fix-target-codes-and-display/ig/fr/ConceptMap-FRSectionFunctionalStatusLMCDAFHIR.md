# Mapping FRLMFunctionalStatus → FRCDAStatutFonctionnel / FRLMFunctionalStatus → FRCompositionDocument.section:sectionFunctionalStatus - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMFunctionalStatus → FRCDAStatutFonctionnel / FRLMFunctionalStatus → FRCompositionDocument.section:sectionFunctionalStatus 

 
Mapping des éléments du modèle métier FRLMFunctionalStatus vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:sectionFunctionalStatus. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionFunctionalStatusLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionFunctionalStatusLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionFunctionalStatusLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Statut fonctionnel\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T08:09:30+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMFunctionalStatus vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:sectionFunctionalStatus.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFunctionalStatus",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-statut-fonctionnel",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFunctionalStatus",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAStatutFonctionnel",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.author[x]",
      "target" : [{
        "code" : "Section.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.informant",
      "target" : [{
        "code" : "Section.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.entry.assessment",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAEvaluation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFunctionalStatus",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFunctionalStatus",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionFunctionalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.author[x]",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.informant",
      "target" : [{
        "code" : "Composition.extension:informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFunctionalStatus.entry.assessment",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationAssessmentDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
