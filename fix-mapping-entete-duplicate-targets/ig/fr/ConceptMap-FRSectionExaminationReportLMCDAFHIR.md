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
  "name" : "FRSectionExaminationReportLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:02:14+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-acte-imagerie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExaminationReport",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMActeImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "Section.entry:frDicomTechniqueImagerie.procedure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "Section.entry:frDicomAdministrationProduitDeSante.substanceAdministration",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-conclusion",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDASectionDICOMConclusion",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-resultats",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMResultats",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionImpression",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRProcedureImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.adverseReactions",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent",
        "comment" : "Cible narrative pour les resultats textuels dans la section Findings."
      },
      {
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExaminationReport",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExaminationReport.subSection.conclusion",
      "target" : [{
        "code" : "DiagnosticReport.conclusion",
        "display" : "FRDiagnosticReportImagingDocument.conclusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.imagingProcedures",
      "target" : [{
        "code" : "DiagnosticReport.extension:procedure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.medicationAdministrations",
      "target" : [{
        "code" : "DiagnosticReport.extension:procedure",
        "equivalence" : "equivalent",
        "comment" : "Cas où l'extension procedure référence un FRMedicationAdministrationDocument (partOf du FRProcedureImagingDocument)."
      }]
    },
    {
      "code" : "FRLMExaminationReport.entry.results[x]",
      "target" : [{
        "code" : "DiagnosticReport.result",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
