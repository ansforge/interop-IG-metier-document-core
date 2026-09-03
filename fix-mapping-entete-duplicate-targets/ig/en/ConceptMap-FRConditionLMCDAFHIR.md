# Mapping FRLMCondition → FRCDAProbleme / FRLMCondition → FRConditionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCondition → FRCDAProbleme / FRLMCondition → FRConditionDocument 

 
Mapping des éléments du modèle métier FRLMCondition vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRConditionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRConditionLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRConditionLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Problème\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:35:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCondition vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-probleme",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCondition",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.problem",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period.onsetDate",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "wider",
        "comment" : "Le CDA ne décompose pas l'intervalle en low/high distincts ; le début est porté par l'ensemble de effectiveTime."
      }]
    },
    {
      "code" : "FRLMCondition.period.endDate",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "wider",
        "comment" : "Le CDA ne décompose pas l'intervalle en low/high distincts ; la fin est portée par l'ensemble de effectiveTime."
      }]
    },
    {
      "code" : "FRLMCondition.header.status",
      "target" : [{
        "code" : "Observation.entryRelationship:frStatutDuProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.severity",
      "target" : [{
        "code" : "Observation.entryRelationship:frSeverite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.diagnosisAssertionStatus",
      "target" : [{
        "code" : "Observation.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.clinicalStatus",
      "target" : [{
        "code" : "Observation.entryRelationship:frStatutCliniqueDuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.bodySite",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite de bodySite dans le profil CDA FRCDAProbleme."
      }]
    },
    {
      "code" : "FRLMCondition.stage",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite de stage dans le profil CDA FRCDAProbleme."
      }]
    },
    {
      "code" : "FRLMCondition.reference",
      "target" : [{
        "code" : "Observation.reference.externalDocument.text.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.note",
      "target" : [{
        "code" : "Observation.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-condition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCondition",
      "target" : [{
        "code" : "Condition",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.identifier",
      "target" : [{
        "code" : "Condition.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.type",
      "target" : [{
        "code" : "Condition.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.problem",
      "target" : [{
        "code" : "Condition.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.status",
      "target" : [{
        "code" : "Condition.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period",
      "target" : [{
        "equivalence" : "relatedto",
        "comment" : "La période source est portée par deux éléments FHIR distincts: onsetDateTime et abatementDateTime."
      }]
    },
    {
      "code" : "FRLMCondition.period.onsetDate",
      "target" : [{
        "code" : "Condition.onset[x]:onsetDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period.endDate",
      "target" : [{
        "code" : "Condition.abatement[x]:abatementDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.severity",
      "target" : [{
        "code" : "Condition.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.diagnosisAssertionStatus",
      "target" : [{
        "code" : "Condition.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.clinicalStatus",
      "target" : [{
        "code" : "Condition.stage.summary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.bodySite",
      "target" : [{
        "code" : "Condition.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.stage",
      "target" : [{
        "code" : "Condition.stage.summary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.reference",
      "target" : [{
        "code" : "Condition.evidence.detail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.note",
      "target" : [{
        "code" : "Condition.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
