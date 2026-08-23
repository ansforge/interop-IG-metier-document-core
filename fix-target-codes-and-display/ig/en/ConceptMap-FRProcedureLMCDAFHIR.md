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
  "name" : "FRProcedureLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Procedure\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-23T21:45:18+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-acte",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "Procedure",
        "display" : "FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "Procedure.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "Procedure.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "Procedure.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "Procedure.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "Procedure.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "Procedure.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.difficulty",
      "target" : [{
        "code" : "Procedure.entryRelationship:frSimpleObservationDifficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "Procedure.entryRelationship:frReferenceInterneMotifActe",
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
        "code" : "Procedure.entryRelationship:frReferenceInterneDM",
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
        "code" : "Procedure.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "Procedure",
        "display" : "FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "Procedure.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "Procedure.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "Procedure.performed[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "Procedure.extension:priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "Procedure.bodySite.TargetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "Procedure.bodySite.ApproachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.difficulty",
      "target" : [{
        "code" : "Procedure.extension:difficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "Procedure.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "Procedure.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.outcome",
      "target" : [{
        "code" : "Procedure.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.complication",
      "target" : [{
        "code" : "Procedure.complication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.deviceUsed",
      "target" : [{
        "code" : "Procedure.usedReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.focalDevice",
      "target" : [{
        "code" : "Procedure.focalDevice.manipulated",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.note",
      "target" : [{
        "code" : "Procedure.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
