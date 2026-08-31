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
  "name" : "FRSectionAddendumLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Addendum\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T15:12:23+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAddendum",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-addendum",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAddendum",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADicomAddendum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.author[x]",
      "target" : [{
        "code" : "Section.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAddendum",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAddendum",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionAddendum",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAddendum.author[x]",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
