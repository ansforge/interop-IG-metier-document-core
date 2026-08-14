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
  "title" : "Mapping Métier/CDA/FHIR : Informations cliniques",
  "status" : "draft",
  "date" : "2026-08-14T14:57:39+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-supporting-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.codeSection",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.titleSection",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.description",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.text",
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
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:grossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:contreIndications",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-supporting-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.entry:FRObservationResultDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.entry:FRObservationContraIndicationsImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionHistory.entry:FRConditionDocument",
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
        "code" : "FRCompositionDocument.section:sectionHistory.entry:FRObservationPregnancyDocument",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-supporting-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.previousResultsInformation",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.result:resultatAnterieur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastIllness",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.historyOfPastProcedures",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.contraIndication",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationContraIndicationsImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.device",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRDeviceAuteurDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.pregnancyStatus",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.priorMedicationAdministration",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.extension:historiqueMedical.value[x]:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
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
