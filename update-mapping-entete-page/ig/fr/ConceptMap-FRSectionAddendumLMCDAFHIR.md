# Mapping FRLMAddendum → FRCDADicomAddendum / FRLMAddendum → FRCompositionDocument.section:sectionAddendum - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAddendum → FRCDADicomAddendum / FRLMAddendum → FRCompositionDocument.section:sectionAddendum 

 
Mapping des éléments du modèle métier FRLMAddendum vers la section CDA FRCDADicomAddendum, puis vers la section FHIR FRCompositionDocument.section:sectionAddendum. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAddendumLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAddendumLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Addendum\"",
  "status" : "draft",
  "date" : "2026-08-14T10:01:02+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAddendum vers la section CDA FRCDADicomAddendum, puis vers la section FHIR FRCompositionDocument.section:sectionAddendum.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-addendum",
    "element" : [{
      "code" : "FRLMAddendum",
      "target" : [{
        "code" : "FRCDADicomAddendum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.codeSection",
      "target" : [{
        "code" : "FRCDADicomAddendum.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.titleSection",
      "target" : [{
        "code" : "FRCDADicomAddendum.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.description",
      "target" : [{
        "code" : "FRCDADicomAddendum.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.author[x]",
      "target" : [{
        "code" : "FRCDADicomAddendum.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-addendum",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMAddendum",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAddendum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAddendum.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAddendum.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAddendum.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.author[x]",
      "target" : [{
        "code" : "FRCompositionDocument.author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
