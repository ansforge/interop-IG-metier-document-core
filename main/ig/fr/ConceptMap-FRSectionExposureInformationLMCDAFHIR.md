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
  "name" : "FRSectionExposureInformationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Exposition aux radiations\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExposureInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-exposition-aux-radiations",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExposureInformation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMExpositionAuxRadiations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.entry.quantityExposure",
      "target" : [{
        "code" : "Section.entry:frDicomQuantite.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.entry.radiopharmaceuticalAdministration",
      "target" : [{
        "code" : "Section.entry:frDicomAdministrationRadiopharmaceutique.substanceAdministration",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMExposureInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMExposureInformation",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionExposureRadiation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.entry.quantityExposure",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationRadiationExposureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExposureInformation.entry.radiopharmaceuticalAdministration",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
