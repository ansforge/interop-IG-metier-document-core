# Mapping FRLMStatutDocument -> FRCDAStatutDuDocument -> FRComposition.section - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMStatutDocument -> FRCDAStatutDuDocument -> FRComposition.section 

 
Mapping des éléments du modèle métier FRLMStatutDocument vers la section CDA FRCDAStatutDuDocument, puis vers la section FHIR FRCompositionDocument.section:documentStatus. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionDocumentStatusLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionDocumentStatusLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Statut du document\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMStatutDocument vers la section CDA FRCDAStatutDuDocument, puis vers la section FHIR FRCompositionDocument.section:documentStatus.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-du-document",
    "element" : [{
      "code" : "FRLMStatutDocument",
      "target" : [{
        "code" : "FRCDAStatutDuDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutDocument.codeSection",
      "target" : [{
        "code" : "FRCDAStatutDuDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutDocument.titreSection",
      "target" : [{
        "code" : "FRCDAStatutDuDocument.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutDocument.blocNarratif",
      "target" : [{
        "code" : "FRCDAStatutDuDocument.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutDocument.entree.statutDocument",
      "target" : [{
        "code" : "FRCDAStatutDuDocument.entry:FRCDAStatutDocument",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-du-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAStatutDuDocument",
      "target" : [{
        "code" : "FRCompositionDocument.section:documentStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutDuDocument.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:documentStatus.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutDuDocument.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:documentStatus.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutDuDocument.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:documentStatus.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutDuDocument.entry:FRCDAStatutDocument",
      "target" : [{
        "code" : "FRCompositionDocument.section:documentStatus.entry:Observation.status.extension:FRStatusReasonExtension",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
