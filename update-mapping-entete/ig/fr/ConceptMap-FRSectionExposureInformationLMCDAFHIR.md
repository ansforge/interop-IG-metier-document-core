# Mapping FRLMExposureInformation → FRCDADICOMExpositionAuxRadiations / FRLMExposureInformation → FRCompositionDocument.section:sectionExposureRadiation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMExposureInformation → FRCDADICOMExpositionAuxRadiations / FRLMExposureInformation → FRCompositionDocument.section:sectionExposureRadiation 

 
Mapping des éléments du modèle métier FRLMExposureInformation vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:sectionExposureRadiation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionExposureInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionExposureInformationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Exposition aux radiations\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMExposureInformation vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:sectionExposureRadiation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposure-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations",
    "element" : [{
      "code" : "FRLMExposureInformation",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.codeSection",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.titleSection",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.description",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.subSection.quantityExposure",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.subSection.radiopharmaceuticalAdministration",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposure-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMExposureInformation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.subSection.quantityExposure",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.subSection.radiopharmaceuticalAdministration",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionExposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
