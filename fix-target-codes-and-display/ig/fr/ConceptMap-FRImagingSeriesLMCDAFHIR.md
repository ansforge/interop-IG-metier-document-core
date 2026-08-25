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
  "name" : "FRImagingSeriesLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Série d'imagerie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T20:08:46+00:00",
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
        "code" : "Act.entryRelationship.observation",
        "equivalence" : "relatedto",
        "comment" : "seriesEndpoint référence un FRLMEndpoint ; ses sous-champs sont mappés dans le sous-groupe Endpoint ci-dessous (Observation.text.reference/.mediaType)."
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
        "code" : "Act.entryRelationship.observation",
        "equivalence" : "equivalent",
        "comment" : "Act.entryRelationship.observation référence le profil CDA FRCDADICOMSOPInstanceObservation ; ses sous-champs sont mappés dans le groupe dédié ci-dessous."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-sop-instance-observation",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSOPInstance.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSOPInstance.sopClass",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSOPInstance.instanceNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSOPInstanceObservation pour instanceNumber."
      }]
    },
    {
      "code" : "FRLMSOPInstance.numberOfFrames",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut explicite identifié dans FRCDADICOMSOPInstanceObservation pour numberOfFrames."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-sop-instance-observation",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMEndpoint.connectionType",
      "target" : [{
        "code" : "Observation.text.reference",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEndpoint.payloadType",
      "target" : [{
        "code" : "Observation.text.mediaType",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEndpoint.address",
      "target" : [{
        "code" : "Observation.text.reference",
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
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSOPInstance.header.identifier",
      "target" : [{
        "code" : "ImagingStudy.series.instance.uid",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMSOPInstance.sopClass",
      "target" : [{
        "code" : "ImagingStudy.series.instance.sopClass",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSOPInstance.instanceNumber",
      "target" : [{
        "code" : "ImagingStudy.series.instance.number",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSOPInstance.numberOfFrames",
      "target" : [{
        "code" : "ImagingStudy.series.instance.extension:number-of-frames",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-imaging-study-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMEndpoint.connectionType",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; connectionType n'est pas accessible sans résoudre la référence."
      }]
    },
    {
      "code" : "FRLMEndpoint.payloadType",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; payloadType n'est pas accessible sans résoudre la référence."
      }]
    },
    {
      "code" : "FRLMEndpoint.address",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "ImagingStudy.series.endpoint est une simple Reference(Endpoint) ; address n'est pas accessible sans résoudre la référence."
      }]
    }]
  }]
}

```
