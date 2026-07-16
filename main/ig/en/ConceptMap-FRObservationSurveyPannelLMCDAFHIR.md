# Mapping FRLMGroupDeQuestionnairesDevaluation → FRCDAGroupeDeQuestionnairesDEvaluation → FRObservationSurveyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMGroupDeQuestionnairesDevaluation → FRCDAGroupeDeQuestionnairesDEvaluation → FRObservationSurveyDocument 

 
Mapping des éléments du modèle métier FRLMGroupDeQuestionnairesDevaluation vers le profil CDA FRCDAGroupeDeQuestionnairesDEvaluation, puis vers le profil FHIR FRObservationSurveyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSurveyPannelLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSurveyPannelLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Groupe de questionnaires d'évaluation\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMGroupDeQuestionnairesDevaluation vers le profil CDA FRCDAGroupeDeQuestionnairesDEvaluation, puis vers le profil FHIR FRObservationSurveyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-group-de-questionnaires-devaluation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-groupe-de-questionnaires-d-evaluation",
    "element" : [{
      "code" : "FRLMGroupDeQuestionnairesDevaluation",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMGroupDeQuestionnairesDevaluation.identifiant",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMGroupDeQuestionnairesDevaluation.code",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMGroupDeQuestionnairesDevaluation.statut",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMGroupDeQuestionnairesDevaluation.horodatage",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMGroupDeQuestionnairesDevaluation.evaluation",
      "target" : [{
        "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.component:frEvaluation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-groupe-de-questionnaires-d-evaluation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document",
    "element" : [{
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation",
      "target" : [{
        "code" : "FRObservationSurveyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.id",
      "target" : [{
        "code" : "FRObservationSurveyDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.code",
      "target" : [{
        "code" : "FRObservationSurveyDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.statusCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.effectiveTime",
      "target" : [{
        "code" : "FRObservationSurveyDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAGroupeDeQuestionnairesDEvaluation.component:frEvaluation",
      "target" : [{
        "code" : "FRObservationSurveyDocument.hasMember:FRObservationSurveyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
