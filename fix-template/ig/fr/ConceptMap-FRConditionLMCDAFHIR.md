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
  "title" : "Mapping Métier/CDA/FHIR : \"Problème\"",
  "status" : "draft",
  "date" : "2026-08-12T08:31:53+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-condition",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme",
    "element" : [{
      "code" : "FRLMCondition",
      "target" : [{
        "code" : "FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.identifier",
      "target" : [{
        "code" : "FRCDAProbleme.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.type",
      "target" : [{
        "code" : "FRCDAProbleme.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.problem",
      "target" : [{
        "code" : "FRCDAProbleme.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period",
      "target" : [{
        "code" : "FRCDAProbleme.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period.onsetDate",
      "target" : [{
        "code" : "FRCDAProbleme.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period.endDate",
      "target" : [{
        "code" : "FRCDAProbleme.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.status",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frStatutDuProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.severity",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frSeverite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.diagnosisAssertionStatus",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.clinicalStatus",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient",
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
        "code" : "FRCDAProbleme.reference.externalDocument.text.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.note",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-condition",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document",
    "element" : [{
      "code" : "FRLMCondition",
      "target" : [{
        "code" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.identifier",
      "target" : [{
        "code" : "FRConditionDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.type",
      "target" : [{
        "code" : "FRConditionDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.problem",
      "target" : [{
        "code" : "FRConditionDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.header.status",
      "target" : [{
        "code" : "FRConditionDocument.clinicalStatus",
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
        "code" : "FRConditionDocument.onsetDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.period.endDate",
      "target" : [{
        "code" : "FRConditionDocument.abatementDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.severity",
      "target" : [{
        "code" : "FRConditionDocument.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.diagnosisAssertionStatus",
      "target" : [{
        "code" : "FRConditionDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.clinicalStatus",
      "target" : [{
        "code" : "FRConditionDocument.stage.summary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.bodySite",
      "target" : [{
        "code" : "FRConditionDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.stage",
      "target" : [{
        "code" : "FRConditionDocument.stage.summary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.reference",
      "target" : [{
        "code" : "FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.content.attachment.url",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCondition.note",
      "target" : [{
        "code" : "FRConditionDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
