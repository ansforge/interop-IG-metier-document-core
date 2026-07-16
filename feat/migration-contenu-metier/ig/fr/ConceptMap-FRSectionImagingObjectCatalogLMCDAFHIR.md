# Mapping FRLMObjectCatalog → FRCDADICOMObjectCatalog → FRCompositionDocument.section:imagingStudy - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObjectCatalog → FRCDADICOMObjectCatalog → FRCompositionDocument.section:imagingStudy 

 
Mapping des éléments du modèle métier FRLMObjectCatalog vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:imagingStudy. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingObjectCatalogLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingObjectCatalogLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Catalogue des objets d'imagerie\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObjectCatalog vers la section CDA FRCDADICOMObjectCatalog, puis vers la section FHIR FRCompositionDocument.section:imagingStudy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-object-catalog",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-object-catalog",
    "element" : [{
      "code" : "FRLMObjectCatalog",
      "target" : [{
        "code" : "FRCDADICOMObjectCatalog",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObjectCatalog.titreSection",
      "target" : [{
        "code" : "FRCDADICOMObjectCatalog.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObjectCatalog.codeSection",
      "target" : [{
        "code" : "FRCDADICOMObjectCatalog.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObjectCatalog.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMObjectCatalog.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObjectCatalog.entree.examenImagerie",
      "target" : [{
        "code" : "FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-object-catalog",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADICOMObjectCatalog",
      "target" : [{
        "code" : "FRCompositionDocument.section:imagingStudy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMObjectCatalog.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:imagingStudy.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMObjectCatalog.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:imagingStudy.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMObjectCatalog.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:imagingStudy.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMObjectCatalog.entry:FRCDADICOMExamenImagerie",
      "target" : [{
        "code" : "FRCompositionDocument.section:imagingStudy.entry:FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
