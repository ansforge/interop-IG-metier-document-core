# Mapping FRLMProcedure → FRCDADICOMTechniqueImagerie / FRLMProcedure → FRProcedureImagingDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProcedure → FRCDADICOMTechniqueImagerie / FRLMProcedure → FRProcedureImagingDocument 

 
Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingProcedureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingProcedureLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRImagingProcedureLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Technique imagerie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMProcedure vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument.",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-technique-imagerie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "Procedure",
        "display" : "FRCDADICOMTechniqueImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.identifier",
      "target" : [{
        "code" : "Procedure.id",
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
        "equivalence" : "equivalent",
        "comment" : "Le CDA ne décompose pas l'intervalle en low/high distincts ; début et fin sont portés par l'ensemble de effectiveTime."
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
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "Procedure.targetSiteCode.qualifier",
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
      "code" : "FRLMProcedure.header.participant[x]",
      "target" : [{
        "code" : "Procedure.participant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-procedure-imaging-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "Procedure",
        "display" : "FRProcedureImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.identifier",
      "target" : [{
        "code" : "Procedure.identifier",
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
        "code" : "Procedure.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "Procedure.extension:approachBodySite",
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
    },
    {
      "code" : "FRLMProcedure.header.performer[x]",
      "target" : [{
        "code" : "Procedure.performer:intervenant.actor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.author[x]",
      "target" : [{
        "code" : "Procedure.recorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.informant",
      "target" : [{
        "code" : "Procedure.asserter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.participant[x]",
      "target" : [{
        "code" : "Procedure.extension:participant",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
