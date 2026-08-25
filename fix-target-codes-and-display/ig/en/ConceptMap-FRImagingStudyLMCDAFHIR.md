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
  "name" : "FRImagingStudyLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Examen d'imagerie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:34:21+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-examen-imagerie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImagingStudy",
      "target" : [{
        "code" : "Act",
        "display" : "FRCDADICOMExamenImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.header.identifier",
      "target" : [{
        "code" : "Act.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.modality",
      "target" : [{
        "code" : "Act.code.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.bodySite",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Act ne porte pas de champ targetSiteCode (contrairement à Procedure/Observation) ; aucun attribut explicite identifié dans FRCDADICOMExamenImagerie pour bodySite."
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
        "code" : "Act.effectiveTime",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImagingStudy",
      "target" : [{
        "code" : "ImagingStudy",
        "display" : "FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.header.identifier",
      "target" : [{
        "code" : "ImagingStudy.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.modality",
      "target" : [{
        "code" : "ImagingStudy.modality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.bodySite",
      "target" : [{
        "code" : "ImagingStudy.series.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.encounter",
      "target" : [{
        "code" : "ImagingStudy.encounter",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.started",
      "target" : [{
        "code" : "ImagingStudy.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.basedOn",
      "target" : [{
        "code" : "ImagingStudy.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfSeries",
      "target" : [{
        "code" : "ImagingStudy.numberOfSeries",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.numberOfInstances",
      "target" : [{
        "code" : "ImagingStudy.numberOfInstances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyCustodian",
      "target" : [{
        "code" : "ImagingStudy.series.performer.actor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.studyEndpoint",
      "target" : [{
        "code" : "ImagingStudy.endpoint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImagingStudy.series",
      "target" : [{
        "code" : "ImagingStudy.series",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
