# Mapping FRLMImagingSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMImagingSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMImagingSupportingInformation → FRDiagnosticReportImagingDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMImagingSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMImagingSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMImagingSupportingInformation → FRDiagnosticReportImagingDocument 

 
Mapping des éléments du modèle métier FRLMImagingSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingSupportingInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingSupportingInformationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionImagingSupportingInformationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Informations cliniques",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-14T13:28:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMImagingSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-historique-medical",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImagingSupportingInformation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMHistoriqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.previousResultsInformation."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness",
      "display" : "FRLMObservation",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness",
      "display" : "FRLMCondition",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.historyOfPastIllnessFRLMCondition."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.condition",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.condition."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.device",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.device."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.priorMedicationAdministration."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMImagingSupportingInformation.entry.sexForClinicalUse."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImagingSupportingInformation",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness",
      "display" : "FRLMObservation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness",
      "display" : "FRLMCondition",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationContraIndicationsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.condition",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.device",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.device."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.priorMedicationAdministration."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMImagingSupportingInformation.entry.sexForClinicalUse."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImagingSupportingInformation",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "display" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "DiagnosticReport.result:resultatAnterieur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence une Observation d'antécédent médical."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence une Observation d'antécédent chirurgical."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRObservationContraIndicationsDocument."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.condition",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRConditionDocument."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.device",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRDeviceUseStatementDocument."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRObservationPregnancyDocument."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRMedicationAdministrationDocument."
      }]
    },
    {
      "code" : "FRLMImagingSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible explicite identifiée pour FRLMImagingSupportingInformation.entry.sexForClinicalUse. Cette donnée existe dans le patient."
      }]
    }]
  }]
}

```
