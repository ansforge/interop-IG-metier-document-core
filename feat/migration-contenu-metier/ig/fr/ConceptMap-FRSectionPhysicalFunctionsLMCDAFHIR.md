# Mapping FRLMFonctionsPhysiques → FRCDAFonctionsPhysiques → FRCompositionDocument.section:PhysicalFunctions - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMFonctionsPhysiques → FRCDAFonctionsPhysiques → FRCompositionDocument.section:PhysicalFunctions 

 
Mapping des éléments du modèle métier FRLMFonctionsPhysiques vers la section CDA FRCDAFonctionsPhysiques, puis vers le profil FHIR FRCompositionDocument.section:PhysicalFunctions. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPhysicalFunctionsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPhysicalFunctionsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Fonctions physiques\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMFonctionsPhysiques vers la section CDA FRCDAFonctionsPhysiques, puis vers le profil FHIR FRCompositionDocument.section:PhysicalFunctions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-fonctions-physiques",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-fonctions-physiques",
    "element" : [{
      "code" : "FRLMFonctionsPhysiques",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.identifiant",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.code",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.titreSection",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.blocNarratif",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.entree.groupeQuestionnairesEvaluation",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.entry:FRCDAGroupDeQuestionnairesDEvaluation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFonctionsPhysiques.entree.evalutation",
      "target" : [{
        "code" : "FRCDAFonctionsPhysiques.entry:FRCDAEvaluation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-fonctions-physiques",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAFonctionsPhysiques",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.id",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.entry:FRCDAGroupDeQuestionnairesDEvaluation",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyPannelDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFonctionsPhysiques.entry:FRCDAEvaluation",
      "target" : [{
        "code" : "FRCompositionDocument.section:PhysicalFunctions.entry:FRObservationSurveyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
