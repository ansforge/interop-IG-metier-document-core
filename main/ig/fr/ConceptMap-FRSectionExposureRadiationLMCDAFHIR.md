# Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:exposureRadiation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:exposureRadiation 

 
Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:exposureRadiation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionExposureRadiationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionExposureRadiationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Exposition aux radiations\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations, puis vers la section FHIR FRCompositionDocument.section:exposureRadiation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-exposition-radiations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations",
    "element" : [{
      "code" : "FRLMExpositionRadiations",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.codeSection",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.titreSection",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.autorisationExposition",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.quantiteExposition",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.administrationRadiopharmaceutique",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.observationGrossesse",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.observationIndication",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADICOMExpositionAuxRadiations",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMExpositionPatient",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMQuantite",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDICOMAdministrationRadiopharmaceutique",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationGrossesse",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:frDicomObservationIndication",
      "target" : [{
        "code" : "FRCompositionDocument.section:exposureRadiation.entry:FRObservationRadiationExposureDocument.hasMember:observationIndication",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
