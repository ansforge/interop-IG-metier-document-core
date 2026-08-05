# Mapping FRLMObservationAssessment → FRCDAEvaluation / FRLMObservationAssessment → FRObservationAssessmentDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationAssessment → FRCDAEvaluation / FRLMObservationAssessment → FRObservationAssessmentDocument 

 
Mapping des éléments du modèle métier FRLMObservationAssessment vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationAssessmentDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationAssessmentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationAssessmentLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Assessment (Evaluation)\"",
  "status" : "draft",
  "date" : "2026-08-05T12:15:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservationAssessment vers le profil CDA FRCDAEvaluation, puis vers le profil FHIR FRObservationAssessmentDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-assessment",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-evaluation",
    "element" : [{
      "code" : "FRLMObservationAssessment",
      "target" : [{
        "code" : "FRCDAEvaluation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.identifier",
      "target" : [{
        "code" : "FRCDAEvaluation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.status",
      "target" : [{
        "code" : "FRCDAEvaluation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.observationDate[x]",
      "target" : [{
        "code" : "FRCDAEvaluation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.type",
      "target" : [{
        "code" : "FRCDAEvaluation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.method",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.bodySite",
      "target" : [{
        "code" : "FRLMObservationAssessment.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.result",
      "target" : [{
        "code" : "FRCDAEvaluation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.interpretation",
      "target" : [{
        "code" : "FRCDAEvaluation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.note",
      "target" : [{
        "code" : "FRCDAEvaluation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.component",
      "target" : [{
        "code" : "FRCDAEvaluation.entryRelationship:frEvaluationComposant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-assessment",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-survey-document",
    "element" : [{
      "code" : "FRLMObservationAssessment",
      "target" : [{
        "code" : "FRObservationAssessmentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.identifier",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.status",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.status.extension:statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.observationDate[x]",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.type",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.method",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.bodySite",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.result",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.interpretation",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.note",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.component",
      "target" : [{
        "code" : "FRObservationAssessmentDocument.component",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
