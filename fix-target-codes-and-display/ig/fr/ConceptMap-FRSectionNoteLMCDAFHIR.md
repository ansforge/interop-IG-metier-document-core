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
  "name" : "FRSectionNoteLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Commentaire non codé\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:34:21+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMNote",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-commentaire-non-code",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMNote",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDACommentaireNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMNote",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMNote",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionNote",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNote.description",
      "target" : [{
        "code" : "Composition.section.extension:section-note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
