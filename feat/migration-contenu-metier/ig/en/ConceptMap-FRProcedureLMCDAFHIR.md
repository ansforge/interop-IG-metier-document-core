# Mapping FRLMActe → FRCDAActe → FRProcedureDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMActe → FRCDAActe → FRProcedureDocument 

 
Mapping des éléments du modèle métier FRLMActe vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRProcedureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRProcedureLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Acte\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMActe vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte",
    "element" : [{
      "code" : "FRLMActe",
      "target" : [{
        "code" : "FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.identifiant",
      "target" : [{
        "code" : "FRCDAActe.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.description",
      "target" : [{
        "code" : "FRCDAActe.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.code",
      "target" : [{
        "code" : "FRCDAActe.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.titre",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le titre métier n’a pas d’équivalent structuré en CDA."
      }]
    },
    {
      "code" : "FRLMActe.statut",
      "target" : [{
        "code" : "FRCDAActe.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.date",
      "target" : [{
        "code" : "FRCDAActe.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.priorite",
      "target" : [{
        "code" : "FRCDAActe.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.localisationAnatomique",
      "target" : [{
        "code" : "FRCDAActe.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.voieDAbord",
      "target" : [{
        "code" : "FRCDAActe.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.perfomer",
      "target" : [{
        "code" : "FRCDAActe.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.auteur",
      "target" : [{
        "code" : "FRCDAActe.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.informateur",
      "target" : [{
        "code" : "FRCDAActe.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.participant",
      "target" : [{
        "code" : "FRCDAActe.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.circonstances",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frReferenceInterneCirconstances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.reason",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frReferenceInterneMotifActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.dispositifMedical",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frReferenceInterneDM",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.difficulte",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frSimpleObservationDifficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActe.scores",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frSimpleObservationScores",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-document",
    "element" : [{
      "code" : "FRCDAActe",
      "target" : [{
        "code" : "FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.id",
      "target" : [{
        "code" : "FRProcedureDocument.identifier",
        "equivalence" : "equivalent",
        "comment" : "L'élément id en CDA devient identifier en FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.code",
      "target" : [{
        "code" : "FRProcedureDocument.code",
        "equivalence" : "equivalent",
        "comment" : "Le code CDA correspond au code FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.effectiveTime",
      "target" : [{
        "code" : "FRProcedureDocument.performed[x]",
        "equivalence" : "equivalent",
        "comment" : "effectiveTime → performedDateTime ou performedPeriod."
      }]
    },
    {
      "code" : "FRCDAActe.text",
      "target" : [{
        "code" : "FRProcedureDocument.note",
        "equivalence" : "equivalent",
        "comment" : "text CDA devient note/annotation FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.statusCode",
      "target" : [{
        "code" : "FRProcedureDocument.status",
        "equivalence" : "equivalent",
        "comment" : "statusCode CDA → status FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.entryRelationship:frReferenceInterneDM",
      "target" : [{
        "code" : "FRProcedureDocument.usedReference",
        "equivalence" : "equivalent",
        "comment" : "DM référencé dans usedReference."
      }]
    },
    {
      "code" : "FRCDAActe.entryRelationship:frSimpleObservationScores",
      "target" : [{
        "code" : "FRProcedureDocument.partOf",
        "equivalence" : "equivalent",
        "comment" : "Les observations liées aux scores deviennent partOf."
      }]
    },
    {
      "code" : "FRCDAActe.performer",
      "target" : [{
        "code" : "FRProcedureDocument.performer.actor.extension:Intervenant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.informant",
      "target" : [{
        "code" : "FRProcedureDocument.performer.actor.extension:Informateur",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.participant",
      "target" : [{
        "code" : "FRProcedureDocument.performer.actor.extension:Participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.entryRelationship:frReferenceInterneMotifActe",
      "target" : [{
        "code" : "FRProcedureDocument.reasonReference",
        "equivalence" : "equivalent",
        "comment" : "Motif de l'acte en CDA correspond à reasonReference en FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.entryRelationship:frReferenceInterneCirconstances",
      "target" : [{
        "code" : "FRProcedureDocument.encounter",
        "equivalence" : "equivalent",
        "comment" : "Référence de contexte CDA → Encounter FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.entryRelationship:frSimpleObservationDifficulte",
      "target" : [{
        "code" : "FRProcedureDocument.extension:difficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.author",
      "target" : [{
        "code" : "FRProcedureDocument.recorder.extension:author",
        "equivalence" : "equivalent",
        "comment" : "author CDA → recorder FHIR."
      }]
    },
    {
      "code" : "FRCDAActe.priorityCode",
      "target" : [{
        "code" : "FRProcedureDocument.extension:priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.targetSiteCode",
      "target" : [{
        "code" : "FRProcedureDocument.bodySite.TargetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActe.approachSiteCode",
      "target" : [{
        "code" : "FRProcedureDocument.bodySite.ApproachSiteCode",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
