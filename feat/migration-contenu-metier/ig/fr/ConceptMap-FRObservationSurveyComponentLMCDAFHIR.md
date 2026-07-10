# Mapping FRLMEvaluationComposant → FRCDAEvaluationComposant → FRObservationSurveyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEvaluationComposant → FRCDAEvaluationComposant → FRObservationSurveyDocument 

 
Mapping des éléments du modèle métier FRLMEvaluationComposant vers le profil CDA FRCDAEvaluationComposant, puis vers le profil FHIR FRObservationSurveyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSurveyComponentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSurveyComponentLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Composant d'évaluation\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEvaluationComposant vers le profil CDA FRCDAEvaluationComposant, puis vers le profil FHIR FRObservationSurveyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-evaluation-composant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant",
    "element" : [{
      "code" : "FRLMEvaluationComposant",
      "target" : [{
        "code" : "FRCDAEvaluationComposant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.identifiant",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.codeEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.description",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.statut",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.horodatage",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.resultat",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.interpretation",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.composantEvaluation",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.entryRelationship:frEvaluationComposantN2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEvaluationComposant.commentaire",
      "target" : [{
        "code" : "FRCDAEvaluationComposant.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation-composant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document",
    "element" : [{
      "code" : "FRCDAEvaluationComposant",
      "target" : [{
        "code" : "FRObservationSurveyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.id",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.code",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.text",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.statusCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.effectiveTime",
      "target" : [{
        "code" : "FRObservationSurveyDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.value",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.interpretationCode",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.entryRelationship:frEvaluationComposantN2",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN2",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEvaluationComposant.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRObservationSurveyDocument.component:ComposantN1.extension:note.value[x]",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
