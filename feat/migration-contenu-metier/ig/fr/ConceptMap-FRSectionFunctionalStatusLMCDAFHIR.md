# Mapping FRLMStatutFonctionnel → FRCDAStatutFonctionnel → FRCompositionDocument.section:FRFunctionalStatus - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMStatutFonctionnel → FRCDAStatutFonctionnel → FRCompositionDocument.section:FRFunctionalStatus 

 
Mapping des éléments du modèle métier FRLMStatutFonctionnel vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:FRFunctionalStatus. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionFunctionalStatusLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionFunctionalStatusLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Statut fonctionnel\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMStatutFonctionnel vers la section CDA FRCDAStatutFonctionnel, puis vers la section FHIR FRCompositionDocument.section:FRFunctionalStatus.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-statut-fonctionnel",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-fonctionnel",
    "element" : [{
      "code" : "FRLMStatutFonctionnel",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.codeSection",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.titreSection",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.blocNarratif",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.auteur",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.informateur",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStatutFonctionnel.entree.groupeQuestionnairesEvaluation",
      "target" : [{
        "code" : "FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-statut-fonctionnel",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAStatutFonctionnel",
      "target" : [{
        "code" : "FRCompositionDocument.section:FRFunctionalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:FRFunctionalStatus.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:FRFunctionalStatus.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:FRFunctionalStatus.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.author",
      "target" : [{
        "code" : "FRCompositionDocument.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.informant",
      "target" : [{
        "code" : "FRCompositionDocument.extension:informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAStatutFonctionnel.entry:FRCDAGroupDeQuestionnairesDEvaluation",
      "target" : [{
        "code" : "FRCompositionDocument.section:FRFunctionalStatus.entry:FRObservationSurveyPannelDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
