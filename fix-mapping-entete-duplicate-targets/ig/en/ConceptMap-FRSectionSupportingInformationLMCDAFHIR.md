# Mapping FRLMSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMSupportingInformation → FRDiagnosticReportImagingDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSupportingInformation → FRCDADICOMHistoriqueMedical / FRLMSupportingInformation → FRCompositionDocument.section:sectionHistory / FRLMSupportingInformation → FRDiagnosticReportImagingDocument 

 
Mapping des éléments du modèle métier FRLMSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionSupportingInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionSupportingInformationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionSupportingInformationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Informations cliniques",
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
  "description" : "Mapping des éléments du modèle métier FRLMSupportingInformation vers la section CDA FRCDADICOMHistoriqueMedical, puis vers la section FHIR FRCompositionDocument.section:sectionHistory et le profil FRDiagnosticReportImagingDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-historique-medical",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMHistoriqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.previousResultsInformation."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.condition."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.device",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.device."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.priorMedicationAdministration."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifieé dans FRCDADICOMHistoriqueMedical pour FRLMSupportingInformation.entry.sexForClinicalUse."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationContraIndicationsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.device",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.device."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.priorMedicationAdministration."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifieé dans FRCompositionDocument.section:sectionHistory pour FRLMSupportingInformation.entry.sexForClinicalUse."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "display" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "DiagnosticReport.result:resultatAnterieur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence une Observation d'antécédent médical."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence une Observation d'antécédent chirurgical."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRObservationContraIndicationsDocument."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRConditionDocument."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.device",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRDeviceUseStatementDocument."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRObservationPregnancyDocument."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "code" : "DiagnosticReport.extension:historiqueMedical",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRMedicationAdministrationDocument."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible explicite identifiée pour FRLMSupportingInformation.entry.sexForClinicalUse. Cette donnée existe dans le patient."
      }]
    }]
  }]
}

```
