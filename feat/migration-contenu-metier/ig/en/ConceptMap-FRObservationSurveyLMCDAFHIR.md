# Mapping FRLMEvaluation → FRCDAEvaluation → FRObservationSurveyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEvaluation → FRCDAEvaluation → FRObservationSurveyDocument 

 
Mapping des éléments du modèle métier FRLMEvaluation vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationSurveyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSurveyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSurveyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Evaluation\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEvaluation vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationSurveyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation",
    "element" : [{
      "code" : "FRLMEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.identifiant",
      "target" : [{
        "code" : "FRCDAEvaluation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.typeEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.description",
      "target" : [{
        "code" : "FRCDAEvaluation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.statut",
      "target" : [{
        "code" : "FRCDAEvaluation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.date",
      "target" : [{
        "code" : "FRCDAEvaluation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.valeur",
      "target" : [{
        "code" : "FRCDAEvaluation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.interpretation",
      "target" : [{
        "code" : "FRCDAEvaluation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.evaluateur",
      "target" : [{
        "code" : "FRCDAEvaluation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.auteurEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluation.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.responsableEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluation.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.evaluationComposant",
      "target" : [{
        "code" : "FRCDAEvaluation.entryRelationship:frEvaluationComposant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.statutEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluation.entryRelationship:frStatut",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.commentaire",
      "target" : [{
        "code" : "FRCDAEvaluation.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluation.referenceInterne",
      "target" : [{
        "code" : "FRCDAEvaluation.entryRelationship:frReferenceInterne",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document",
    "element" : [{
      "code" : "FRCDAEvaluation",
      "target" : [{
        "code" : "FRObservationSurveyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.code",
      "target" : [{
        "code" : "FRObservationSurveyDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.text",
      "target" : [{
        "code" : "FRObservationSurveyDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.value",
      "target" : [{
        "code" : "FRObservationSurveyDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.interpretationCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.performer",
      "target" : [{
        "code" : "FRObservationSurveyDocument.performer.extension:Evaluateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.author",
      "target" : [{
        "code" : "FRObservationSurveyDocument.performer.extension:Auteur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.participant",
      "target" : [{
        "code" : "FRObservationSurveyDocument.performer.extension:Participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.entryRelationship:frEvaluationComposant",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.entryRelationship:frStatut",
      "target" : [{
        "code" : "FRObservationSurveyDocument.status.extension:statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRObservationSurveyDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluation.entryRelationship:frReferenceInterne",
      "target" : [{
        "code" : "FRObservationSurveyDocument.hasMember",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
