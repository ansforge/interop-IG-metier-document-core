# Mapping FRLMComparisonStudy → FRCDADICOMExamenComparatif / FRLMComparisonStudy → FRCompositionDocument.section:sectionComparison - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMComparisonStudy → FRCDADICOMExamenComparatif / FRLMComparisonStudy → FRCompositionDocument.section:sectionComparison 

 
Mapping des éléments du modèle métier FRLMComparisonStudy vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section FHIR FRCompositionDocument.section:sectionComparison. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionComparisonStudyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionComparisonStudyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Comparaison d'examens d'imagerie\"",
  "status" : "draft",
  "date" : "2026-08-18T08:13:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMComparisonStudy vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section FHIR FRCompositionDocument.section:sectionComparison.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparison-study",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif",
    "element" : [{
      "code" : "FRLMComparisonStudy",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.codeSection",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.titleSection",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.description",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparison-study",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMComparisonStudy",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionComparison",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionComparison.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionComparison.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparisonStudy.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionComparison.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
