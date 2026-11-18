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
  "name" : "FRObservationAssessmentLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Assessment (Evaluation)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T09:35:26+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationAssessment",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-evaluation",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationAssessment",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAEvaluation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.type",
      "target" : [{
        "code" : "Observation.code",
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
        "code" : "Observation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.interpretation",
      "target" : [{
        "code" : "Observation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.component",
      "target" : [{
        "code" : "Observation.entryRelationship:frEvaluationComposant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationAssessment",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-assessment-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationAssessment",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationAssessmentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.header.status",
      "target" : [{
        "code" : "Observation.status.extension:statusReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.bodySite",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationAssessment.component",
      "target" : [{
        "code" : "Observation.component",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
