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
  "title" : "Mapping Métier/CDA/FHIR : \"Technique imagerie\"",
  "status" : "draft",
  "date" : "2026-08-13T14:36:19+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.identifier",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDateDateTime",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDatePeriod",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite:FRLMBodyStructure.locationQualifier",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.approachSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.participant[x]",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.participant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-procedure",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document",
    "element" : [{
      "code" : "FRLMProcedure",
      "target" : [{
        "code" : "FRProcedureImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.identifier",
      "target" : [{
        "code" : "FRProcedureImagingDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.code",
      "target" : [{
        "code" : "FRProcedureImagingDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.status",
      "target" : [{
        "code" : "FRProcedureImagingDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.procedureDate[x]",
      "target" : [{
        "code" : "FRProcedureImagingDocument.performed[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.priority",
      "target" : [{
        "code" : "FRProcedureImagingDocument.extension:priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.bodySite",
      "target" : [{
        "code" : "FRProcedureImagingDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.approachSiteCode",
      "target" : [{
        "code" : "FRProcedureImagingDocument.extension:approachBodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.difficulty",
      "target" : [{
        "code" : "FRProcedureImagingDocument.extension:difficulte",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.reason[x]",
      "target" : [{
        "code" : "FRProcedureImagingDocument.reasonReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.outcome",
      "target" : [{
        "code" : "FRProcedureImagingDocument.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.complication",
      "target" : [{
        "code" : "FRProcedureImagingDocument.complication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.deviceUsed",
      "target" : [{
        "code" : "FRProcedureImagingDocument.usedReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.focalDevice",
      "target" : [{
        "code" : "FRProcedureImagingDocument.focalDevice.manipulated",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.note",
      "target" : [{
        "code" : "FRProcedureImagingDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.performer[x]",
      "target" : [{
        "code" : "FRProcedureImagingDocument.performer:Intervenant.actor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.author[x]",
      "target" : [{
        "code" : "FRProcedureImagingDocument.recorder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.informant",
      "target" : [{
        "code" : "FRProcedureImagingDocument.asserter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProcedure.header.participant[x]",
      "target" : [{
        "code" : "FRProcedureImagingDocument.extension:participant",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
