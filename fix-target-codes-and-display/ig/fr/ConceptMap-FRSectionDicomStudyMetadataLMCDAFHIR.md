# Mapping FRLMDicomStudyMetadata → FRCDADICOMObjectCatalog / FRLMDicomStudyMetadata → FRCompositionDocument.section:sectionImagingStudy - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDicomStudyMetadata → FRCDADICOMObjectCatalog / FRLMDicomStudyMetadata → FRCompositionDocument.section:sectionImagingStudy 

 
Mapping des éléments du modèle métier FRLMDicomStudyMetadata vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionDicomStudyMetadataLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionDicomStudyMetadataLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Catalogue des objets d'imagerie\"",
  "status" : "draft",
  "date" : "2026-08-20T15:08:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDicomStudyMetadata vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:sectionImagingStudy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDicomStudyMetadata",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-object-catalog",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDicomStudyMetadata",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMObjectCatalog",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.entry.imagingStudy",
      "target" : [{
        "code" : "Section.entry:FRCDADICOMExamenImagerie",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDicomStudyMetadata",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDicomStudyMetadata",
      "target" : [{
        "code" : "Composition.section:sectionImagingStudy",
        "display" : "FRCompositionDocument.section:sectionImagingStudy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionImagingStudy.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionImagingStudy.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.description",
      "target" : [{
        "code" : "Composition.section:sectionImagingStudy.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDicomStudyMetadata.entry.imagingStudy",
      "target" : [{
        "code" : "Composition.section:sectionImagingStudy.entry:FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
