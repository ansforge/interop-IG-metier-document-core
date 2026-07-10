# Mapping FRLMComparaisonExamensImagerie → FRCDADICOMExamenComparatif → FRCompositionDocument.section:Comparison - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMComparaisonExamensImagerie → FRCDADICOMExamenComparatif → FRCompositionDocument.section:Comparison 

 
Mapping des éléments du modèle métier FRLMComparaisonExamensImagerie vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section Comparison du profil FHIR FRCompositionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingComparisonLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingComparisonLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Comparaison d'examens d'imagerie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMComparaisonExamensImagerie vers le profil CDA FRCDADICOMExamenComparatif, puis vers la section Comparison du profil FHIR FRCompositionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-comparaison-examens-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif",
    "element" : [{
      "code" : "FRLMComparaisonExamensImagerie",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparaisonExamensImagerie.codeSection",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparaisonExamensImagerie.titreSection",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComparaisonExamensImagerie.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMExamenComparatif.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-comparatif",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADICOMExamenComparatif",
      "target" : [{
        "code" : "FRCompositionDocument.section:Comparison",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenComparatif.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:Comparison.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenComparatif.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:Comparison.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenComparatif.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:Comparison.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "_noSourceComparison",
      "display" : "Pas d'équivalent dans CDA. Si la section Comparison est codée, les examens d'imagerie comparés doivent être référencés en tant qu'entrées de la section, avec des références à des ressources FHIR de type FRImagingStudyDocument. Si la section Comparison est non codée, le champ 'text' de la section doit être utilisé pour décrire la comparaison d'examens d'imagerie",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
