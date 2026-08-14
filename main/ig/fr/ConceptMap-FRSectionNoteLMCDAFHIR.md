# Mapping FRLMNote → FRCDACommentaireNonCode / FRLMNote → FRCompositionDocument.section:sectionNote - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMNote → FRCDACommentaireNonCode / FRLMNote → FRCompositionDocument.section:sectionNote 

 
Mapping des éléments du modèle métier FRLMNote vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionNote. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionNoteLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionNoteLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Commentaire non codé\"",
  "status" : "draft",
  "date" : "2026-08-14T12:00:06+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMNote vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionNote.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-note",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code",
    "element" : [{
      "code" : "FRLMNote",
      "target" : [{
        "code" : "FRCDACommentaireNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.codeSection",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.titleSection",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.description",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-note",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMNote",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionNote",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionNote.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionNote.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionNote.extension:section-note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
