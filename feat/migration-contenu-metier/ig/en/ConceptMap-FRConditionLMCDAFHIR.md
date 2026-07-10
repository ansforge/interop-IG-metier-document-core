# Mapping FRLMCondition → FRCDACondition → FRConditionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCondition → FRCDACondition → FRConditionDocument 

 
Mapping des éléments du modèle métier FRLMProbleme vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRConditionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRConditionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Problème\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMProbleme vers le profil CDA FRCDAProbleme, puis vers le profil FHIR FRConditionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-probleme",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme",
    "element" : [{
      "code" : "FRLMProbleme",
      "target" : [{
        "code" : "FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.identifiant",
      "target" : [{
        "code" : "FRCDAProbleme.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.type",
      "target" : [{
        "code" : "FRCDAProbleme.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.description",
      "target" : [{
        "code" : "FRCDAProbleme.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.problemeObserve",
      "target" : [{
        "code" : "FRCDAProbleme.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.statut",
      "target" : [{
        "code" : "FRCDAProbleme.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.dateDebutProbleme",
      "target" : [{
        "code" : "FRCDAProbleme.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.dateFinProbleme",
      "target" : [{
        "code" : "FRCDAProbleme.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.statutProbleme",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frStatutDuProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.severite",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frSeverite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.certitude",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.statutClinique",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.reference",
      "target" : [{
        "code" : "FRCDAProbleme.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.reference.externalDocument.identifiant",
      "target" : [{
        "code" : "FRCDAProbleme.reference.externalDocument.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.reference.externalDocument.text.reference",
      "target" : [{
        "code" : "FRCDAProbleme.reference.externalDocument.text.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProbleme.commentaire",
      "target" : [{
        "code" : "FRCDAProbleme.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-probleme",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document",
    "element" : [{
      "code" : "FRCDAProbleme",
      "target" : [{
        "code" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.id",
      "target" : [{
        "code" : "FRConditionDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.code",
      "target" : [{
        "code" : "FRConditionDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.text",
      "target" : [{
        "code" : "FRConditionDocument.category.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.value",
      "target" : [{
        "code" : "FRConditionDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.statusCode",
      "target" : [{
        "code" : "FRConditionDocument.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.effectiveTime.low",
      "target" : [{
        "code" : "FRConditionDocument.onsetDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.effectiveTime.high",
      "target" : [{
        "code" : "FRConditionDocument.abatementDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.entryRelationship:frStatutDuProbleme",
      "target" : [{
        "code" : "FRConditionDocument.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.entryRelationship:frSeverite",
      "target" : [{
        "code" : "FRConditionDocument.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.entryRelationship:frCertitude",
      "target" : [{
        "code" : "FRConditionDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.entryRelationship:frStatutCliniqueDuPatient",
      "target" : [{
        "code" : "FRConditionDocument.stage.summary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.reference",
      "target" : [{
        "code" : "FRConditionDocument.evidence.detail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.reference.externalDocument.id",
      "target" : [{
        "code" : "FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.reference.externalDocument.text.reference",
      "target" : [{
        "code" : "FRConditionDocument.evidence.detail:FRDocumentReferenceDocument.content.attachment.url",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProbleme.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRConditionDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
