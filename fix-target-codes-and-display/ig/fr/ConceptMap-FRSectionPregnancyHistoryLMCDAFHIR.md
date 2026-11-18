# Mapping FRLMSectionPregnancyHistory → FRCDAHistoriqueDesGrossesses / FRLMSectionPregnancyHistory → FRCompositionDocument.section:sectionPregnancyHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSectionPregnancyHistory → FRCDAHistoriqueDesGrossesses / FRLMSectionPregnancyHistory → FRCompositionDocument.section:sectionPregnancyHistory 

 
Mapping des éléments du modèle métier FRLMSectionPregnancyHistory vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:sectionPregnancyHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionPregnancyHistoryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique des grossesses\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMSectionPregnancyHistory vers la section CDA FRCDAHistoriqueDesGrossesses, puis vers la section FHIR FRCompositionDocument.section:sectionPregnancyHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-des-grossesses",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSectionPregnancyHistory",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAHistoriqueDesGrossesses",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.entry.pregnancyStatus",
      "target" : [{
        "code" : "Section.entry:frObservationSurLaGrossesse.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.entry.pregnancyHistory",
      "target" : [{
        "code" : "Section.entry:frHistoriqueDeLaGrossesse.organizer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.note",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSectionPregnancyHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSectionPregnancyHistory",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionPregnancyHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.entry.pregnancyStatus",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.entry.pregnancyHistory",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationPregnancyHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSectionPregnancyHistory.note",
      "target" : [{
        "code" : "Composition.section.extension:section-note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
