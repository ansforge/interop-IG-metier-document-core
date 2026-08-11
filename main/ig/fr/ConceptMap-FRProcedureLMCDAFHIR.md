# Mapping FRLMProcedure → FRCDAActe / FRLMProcedure → FRProcedureDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProcedure → FRCDAActe / FRLMProcedure → FRProcedureDocument 

 
Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRProcedureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRProcedureLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Procedure\"",
  "status" : "draft",
  "date" : "2026-08-11T08:03:55+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDAActe, puis vers le profil FHIR FRProcedureDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "FRCDAActe.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "FRCDAActe.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "FRCDAActe.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "FRCDAActe.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "FRCDAActe.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "FRCDAActe.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.difficulty",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frSimpleObservationDifficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frReferenceInterneMotifActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.outcome",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Résultat immédiat de l'acte sans équivalent structuré en CDA."
      }]
    },
    {
      "code" : "FRLMProcedure.complication",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Complication sans équivalent structuré dans le profil CDA."
      }]
    },
    {
      "code" : "FRLMProcedure.deviceUsed",
      "target" : [{
        "code" : "FRCDAActe.entryRelationship:frReferenceInterneDM",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.focalDevice",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Focal device sans mapping direct vers le profil CDA."
      }]
    },
    {
      "code" : "FRLMProcedure.note",
      "target" : [{
        "code" : "FRCDAActe.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-document",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "FRProcedureDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "FRProcedureDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "FRProcedureDocument.performed[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "FRProcedureDocument.extension:priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "FRProcedureDocument.bodySite.TargetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "FRProcedureDocument.bodySite.ApproachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.difficulty",
      "target" : [{
        "code" : "FRProcedureDocument.extension:difficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "FRProcedureDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "FRProcedureDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.outcome",
      "target" : [{
        "code" : "FRProcedureDocument.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.complication",
      "target" : [{
        "code" : "FRProcedureDocument.complication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.deviceUsed",
      "target" : [{
        "code" : "FRProcedureDocument.usedReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.focalDevice",
      "target" : [{
        "code" : "FRProcedureDocument.focalDevice.manipulated.device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.note",
      "target" : [{
        "code" : "FRProcedureDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
