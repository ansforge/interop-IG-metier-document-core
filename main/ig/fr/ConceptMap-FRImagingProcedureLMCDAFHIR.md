# Mapping FRLMTechniqueImagerie → FRCDADICOMTechniqueImagerie → FRProcedureImagingDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTechniqueImagerie → FRCDADICOMTechniqueImagerie → FRProcedureImagingDocument 

 
Mapping des éléments du modèle métier FRLMTechniqueImagerie vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingProcedureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingProcedureLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Technique imagerie\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMTechniqueImagerie vers le profil CDA FRCDADICOMTechniqueImagerie, puis vers le profil FHIR FRProcedureImagingDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-technique-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie",
    "element" : [{
      "code" : "FRLMTechniqueImagerie",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.identifiant",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.codeActe",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.description",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.date",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.modaliteAcquisition",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.lateralite",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.lateralite.precisionTopographique",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTechniqueImagerie.participant",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.participant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-technique-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document",
    "element" : [{
      "code" : "FRCDADICOMTechniqueImagerie",
      "target" : [{
        "code" : "FRProcedureImagingDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.id",
      "target" : [{
        "code" : "FRProcedureImagingDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.code",
      "target" : [{
        "code" : "FRProcedureImagingDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.text",
      "target" : [{
        "code" : "FRProcedureImagingDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.effectiveTime",
      "target" : [{
        "code" : "FRProcedureImagingDocument.performed[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.methodCode",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance directe dans FRProcedureImagingDocument pour la modalité d’acquisition. Cette donnée est incluse dans le profil FRImagingStudyDocument.modality."
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode",
      "target" : [{
        "code" : "FRProcedureImagingDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier",
      "target" : [{
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMTechniqueImagerie.participant",
      "target" : [{
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
