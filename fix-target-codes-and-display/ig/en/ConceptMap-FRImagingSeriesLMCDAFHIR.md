# Mapping FRLMSeries → FRCDADICOMSerieImagerie / FRLMSeries → FRImagingStudyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSeries → FRCDADICOMSerieImagerie / FRLMSeries → FRImagingStudyDocument 

 
Mapping des éléments du modèle métier FRLMSeries vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingSeriesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingSeriesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Série d'imagerie\"",
  "status" : "draft",
  "date" : "2026-08-20T08:53:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSeries vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-serie-imagerie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSeries",
      "target" : [{
        "code" : "Act",
        "display" : "FRCDADICOMSerieImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesUid",
      "target" : [{
        "code" : "Act.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.number",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour number."
      }]
    },
    {
      "code" : "FRLMSeries.seriesModality",
      "target" : [{
        "code" : "Act.code.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.bodySite",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour bodySite."
      }]
    },
    {
      "code" : "FRLMSeries.specimen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée dans FRCDADICOMSerieImagerie pour specimen."
      }]
    },
    {
      "code" : "FRLMSeries.numberOfInstances",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour numberOfInstances."
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.started",
      "target" : [{
        "code" : "Act.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.header.identifier",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.sopClass",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.instanceNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour instanceNumber."
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.numberOfFrames",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSerieImagerie pour numberOfFrames."
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.connectionType",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.payloadType",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.text.mediaType",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.address",
      "target" : [{
        "code" : "Act.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSeries",
      "target" : [{
        "code" : "ImagingStudy",
        "display" : "FRImagingStudyDocument",
        "equivalence" : "relatedto",
        "comment" : "Le modèle FRLMSeries alimente principalement ImagingStudy.series."
      }]
    },
    {
      "code" : "FRLMSeries.seriesUid",
      "target" : [{
        "code" : "ImagingStudy.series.uid",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.number",
      "target" : [{
        "code" : "ImagingStudy.series.number",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesModality",
      "target" : [{
        "code" : "ImagingStudy.series.modality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.bodySite",
      "target" : [{
        "code" : "ImagingStudy.series.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.specimen",
      "target" : [{
        "code" : "ImagingStudy.series.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.numberOfInstances",
      "target" : [{
        "code" : "ImagingStudy.series.numberOfInstances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint",
      "target" : [{
        "code" : "ImagingStudy.series.endpoint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.started",
      "target" : [{
        "code" : "ImagingStudy.series.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP",
      "target" : [{
        "code" : "ImagingStudy.series.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.header.identifier",
      "target" : [{
        "code" : "ImagingStudy.series.instance.uid",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.sopClass",
      "target" : [{
        "code" : "ImagingStudy.series.instance.sopClass",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.instanceNumber",
      "target" : [{
        "code" : "ImagingStudy.series.instance.number",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.numberOfFrames",
      "target" : [{
        "code" : "ImagingStudy.series.instance.extension:number-of-frames",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.connectionType",
      "target" : [{
        "code" : "ImagingStudy.series.endpoint.connectionType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.payloadType",
      "target" : [{
        "code" : "ImagingStudy.series.endpoint.payloadType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.address",
      "target" : [{
        "code" : "ImagingStudy.series.endpoint.address",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
