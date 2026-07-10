# Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:radiationExposure - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMExpositionRadiations → FRCDADICOMExpositionAuxRadiations → FRCompositionDocument.section:radiationExposure 

 
Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations puis vers le profil FHIR FRCompositionDocument.section:radiationExposure. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingRadiationExposureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingRadiationExposureLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Exposition aux radiations",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMExpositionRadiations vers la section CDA FRCDADICOMExpositionAuxRadiations puis vers le profil FHIR FRCompositionDocument.section:radiationExposure.",
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
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.quantiteExposition",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExpositionRadiations.entree.administrationRadiopharmaceutique",
      "target" : [{
        "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique",
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
        "code" : "FRCompositionDocument.section:radiationExposure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMExpositionPatient",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMQuantite",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionAuxRadiations.entry:FRCDADICOMAdministrationRadiopharmaceutique",
      "target" : [{
        "code" : "FRCompositionDocument.section:radiationExposure.entry:FRObservationRadiationExposureDocument.partOf:medicationAdministrationRef",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
