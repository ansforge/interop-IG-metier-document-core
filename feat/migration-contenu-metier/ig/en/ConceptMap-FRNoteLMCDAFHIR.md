# Mapping FRLMCommentaireER -> FRCDACommentaireER -> Annotation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCommentaireER -> FRCDACommentaireER -> Annotation 

 
Mapping des éléments du modele metier FRLMCommentaireER vers l'element CDA FRCDACommentaireER, puis vers l'element FHIR Annotation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRNoteLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRNoteLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Commentaire ER\"",
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
  "description" : "Mapping des éléments du modele metier FRLMCommentaireER vers l'element CDA FRCDACommentaireER, puis vers l'element FHIR Annotation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-commentaire-er",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-er",
    "element" : [{
      "code" : "FRLMCommentaireER",
      "target" : [{
        "code" : "FRCDACommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireER.codeCommentaireER",
      "target" : [{
        "code" : "FRCDACommentaireER.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireER.texteCommentaireER",
      "target" : [{
        "code" : "FRCDACommentaireER.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireER.statutCommentaireER",
      "target" : [{
        "code" : "FRCDACommentaireER.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCommentaireER.auteurCommentaireER",
      "target" : [{
        "code" : "FRCDACommentaireER.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-commentaire-er",
    "target" : "http://hl7.org/fhir/StructureDefinition/Annotation",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "FRCDACommentaireER",
      "target" : [{
        "code" : "Annotation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireER.text",
      "target" : [{
        "code" : "Annotation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireER.author",
      "target" : [{
        "code" : "Annotation.author[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACommentaireER.code",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance directe dans Annotation."
      }]
    },
    {
      "code" : "FRCDACommentaireER.statusCode",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance directe dans Annotation."
      }]
    }]
  }]
}

```
