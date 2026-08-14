# Mapping FRLMImagingStudy → FRCDADICOMExamenImagerie / FRLMImagingStudy → FRImagingStudyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMImagingStudy → FRCDADICOMExamenImagerie / FRLMImagingStudy → FRImagingStudyDocument 

 
Mapping des éléments du modèle métier FRLMImagingStudy vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingStudyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingStudyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Examen d'imagerie\"",
  "status" : "draft",
  "date" : "2026-08-14T14:57:39+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMImagingStudy vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-imaging-study",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-imagerie",
    "element" : [{
      "code" : "FRLMImagingStudy",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.header.identifier",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.modality",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.bodySite",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.bodySite:FRLMBodyStructure.locationQualifier",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.targetSiteCode.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.encounter",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMExamenImagerie pour encounter."
      }]
    },
    {
      "code" : "FRLMImagingStudy.started",
      "target" : [{
        "code" : "FRCDADICOMTechniqueImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.basedOn",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour basedOn mais plutôt dans un autre contexte (demande d'imagerie)."
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfSeries",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMTechniqueImagerie pour numberOfSeries."
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfInstances",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMTechniqueImagerie pour numberOfInstances."
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyCustodian",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour organisation."
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyEndpoint",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour studyEndpoint. Les détails de l'endpoint sont portés par la ressource Endpoint cible dans FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text. ."
      }]
    },
    {
      "code" : "FRLMImagingStudy.series",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMTechniqueImagerie pour series. Les détails de la série sont portés par la ressource FRCDADICOMExamenImagerie.entryRelationship.act:FRCDADICOMSerieImagerie."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-imaging-study",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document",
    "element" : [{
      "code" : "FRLMImagingStudy",
      "target" : [{
        "code" : "FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.header.identifier",
      "target" : [{
        "code" : "FRImagingStudyDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.modality",
      "target" : [{
        "code" : "FRImagingStudyDocument.modality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.bodySite",
      "target" : [{
        "code" : "FRImagingStudyDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.encounter",
      "target" : [{
        "code" : "FRImagingStudyDocument.encounter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.started",
      "target" : [{
        "code" : "FRImagingStudyDocument.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.basedOn",
      "target" : [{
        "code" : "FRImagingStudyDocument.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfSeries",
      "target" : [{
        "code" : "FRImagingStudyDocument.numberOfSeries",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfInstances",
      "target" : [{
        "code" : "FRImagingStudyDocument.numberOfInstances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyCustodian",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.performer.actor:Organization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyEndpoint",
      "target" : [{
        "code" : "FRImagingStudyDocument.endpoint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.series",
      "target" : [{
        "code" : "FRImagingStudyDocument.series",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
