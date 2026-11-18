# Mapping FRLMExaminationReport → FRCDADICOMActeImagerie / FRLMExaminationReport → FRCompositionDocument.section:sectionImagingStudy - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMExaminationReport → FRCDADICOMActeImagerie / FRLMExaminationReport → FRCompositionDocument.section:sectionImagingStudy 

 
Mapping des éléments du modèle métier FRLMExaminationReport vers la section CDA FRCDADICOMActeImagerie, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionExaminationReportLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionExaminationReportLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\"",
  "status" : "draft",
  "date" : "2026-08-13T13:19:20+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMExaminationReport vers la section CDA FRCDADICOMActeImagerie, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie",
    "element" : [{
      "code" : "FRLMExaminationReport",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.codeSection",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.titleSection",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.description",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.adverseReactions",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifiee dans FRCDADICOMActeImagerie pour FRLMExaminationReport.entry.adverseReactions."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-conclusion",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "FRCDASectionDICOMConclusion",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-resultats",
    "element" : [{
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "FRCDADICOMResultats",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImpression",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.adverseReactions",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "FRCompositionDocument.section:Findings.text",
        "equivalence" : "equivalent",
        "comment" : "Cible narrative pour les resultats textuels dans la section Findings."
      },
      {
        "code" : "FRCompositionDocument.section:Findings.entry:FRObservationResultDocument",
        "equivalence" : "equivalent",
        "comment" : "Cible structuree pour les resultats codes/observations dans la section Findings."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examination-report",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.conclusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:procedure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:procedure.partOf:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.result",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
