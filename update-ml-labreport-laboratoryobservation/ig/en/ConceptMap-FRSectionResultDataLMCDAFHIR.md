# Mapping FRLMResultData → FRCDACRBIOChapitre / FRLMResultData → FRDiagnosticReportBIOChapterDocument / FRLMResultData → FRCompositionDocument.section.entry - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultData → FRCDACRBIOChapitre / FRLMResultData → FRDiagnosticReportBIOChapterDocument / FRLMResultData → FRCompositionDocument.section.entry 

 
Mapping des éléments du modèle métier FRLMResultData vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRDiagnosticReportBIOChapterDocument et vers FRCompositionDocument.section.entry / section.text. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionResultDataLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionResultDataLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionResultDataLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Compte rendu de biologie de 1er niveau\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-16T13:00:57+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMResultData vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRDiagnosticReportBIOChapterDocument et vers FRCompositionDocument.section.entry / section.text.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-chapitre",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultData",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDACRBIOChapitre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.entry.laboratoryTestResults",
      "target" : [{
        "code" : "Section.entry.act",
        "display" : "FRCDAResultatsExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-bio-chapter-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultData",
      "target" : [{
        "code" : "DiagnosticReport",
        "display" : "FRDiagnosticReportBIOChapterDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.codeSection",
      "target" : [{
        "code" : "DiagnosticReport.category:chapitreBIO",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.entry.laboratoryTestResults",
      "target" : [{
        "code" : "DiagnosticReport.result",
        "display" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.description",
      "target" : [{
        "code" : "DiagnosticReport.conclusion",
        "equivalence" : "relatedto"
      },
      {
        "code" : "DiagnosticReport.conclusionCode",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultData.entry.laboratoryTestResults",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultData.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "relatedto"
      }]
    }]
  }]
}

```
