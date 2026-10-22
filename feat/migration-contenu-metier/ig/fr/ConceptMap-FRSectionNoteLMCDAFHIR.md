# Mapping Métier/CDA/FHIR : Commentaire ER - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Commentaire ER 

 
Mapping des éléments du modèle métier FRLMCommentaireNonCode vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:note. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionNoteLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionNoteLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Commentaire non codé\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMCommentaireNonCode vers la section CDA FRCDACommentaireNonCode, puis vers le profil FHIR FRCompositionDocument.section:note.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-commentaire-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code",
    "element" : [{
      "code" : "FRLMCommentaireNonCode",
      "target" : [{
        "code" : "FRCDACommentaireNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireNonCode.codeSection",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireNonCode.titreSection",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireNonCode.blocNarratif",
      "target" : [{
        "code" : "FRCDACommentaireNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDACommentaireNonCode",
      "target" : [{
        "code" : "FRCompositionDocument.section:note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireNonCode.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:note.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireNonCode.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:note.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireNonCode.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:note.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
