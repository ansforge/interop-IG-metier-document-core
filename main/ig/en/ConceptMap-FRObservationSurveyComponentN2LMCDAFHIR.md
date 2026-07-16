# Mapping FRLMEvaluationComposantN2 → FRCDAEvaluationComposantN2 → FRObservationSurveyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEvaluationComposantN2 → FRCDAEvaluationComposantN2 → FRObservationSurveyDocument 

 
Mapping des éléments du modèle métier FRLMEvaluationComposantN2 vers le profil CDA FRCDAEvaluationComposantN2, puis vers le profil FHIR FRObservationSurveyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSurveyComponentN2LMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSurveyComponentN2LMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Composant d'évaluation N2\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEvaluationComposantN2 vers le profil CDA FRCDAEvaluationComposantN2, puis vers le profil FHIR FRObservationSurveyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation-composant-n2",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant-n2",
    "element" : [{
      "code" : "FRLMEvaluationComposantN2",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.identifiant",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.codeEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.description",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.statut",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.horodatage",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.resultat",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.interpretation",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposantN2.commentaire",
      "target" : [{
        "code" : "FRCDAEvaluationComposantN2.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant-n2",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document",
    "element" : [{
      "code" : "FRCDAEvaluationComposantN2",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.id",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.code",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.text",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.statusCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.effectiveTime",
      "target" : [{
        "code" : "FRObservationSurveyDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.value",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.interpretationCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposantN2.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2.extension:note.value[x]",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
