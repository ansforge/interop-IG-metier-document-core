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
  "date" : "2026-08-12T09:25:55+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-series",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-serie-imagerie",
    "element" : [{
      "code" : "FRLMSeries",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesUid",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.id",
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
        "code" : "FRCDADICOMSerieImagerie.code.qualifier",
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
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.started",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.header.identifier",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.sopClass",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.code",
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
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.payloadType",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.mediaType",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.address",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:FRCDADICOMSOPInstanceObservation.text.reference",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-series",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document",
    "element" : [{
      "code" : "FRLMSeries",
      "target" : [{
        "code" : "FRImagingStudyDocument",
        "equivalence" : "relatedto",
        "comment" : "Le modèle FRLMSeries alimente principalement ImagingStudy.series."
      }]
    },
    {
      "code" : "FRLMSeries.seriesUid",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.uid",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.number",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.number",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesModality",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.modality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.bodySite",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.specimen",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.numberOfInstances",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.numberOfInstances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.started",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.header.identifier",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance.uid",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.sopClass",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance.sopClass",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.instanceNumber",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance.number",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.instanceSOP.numberOfFrames",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance.extension:number-of-frames",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.connectionType",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.connectionType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.payloadType",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.payloadType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSeries.seriesEndpoint.address",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.address",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
