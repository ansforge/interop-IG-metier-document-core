# Mapping FRLMSerieImagerie → FRCDADICOMSerieImagerie → FRImagingStudyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSerieImagerie → FRCDADICOMSerieImagerie → FRImagingStudyDocument 

 
Mapping des éléments du modèle métier FRLMSerieImagerie vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingSeriesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingSeriesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Série d'imagerie\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSerieImagerie vers le profil CDA FRCDADICOMSerieImagerie, puis vers le profil FHIR FRImagingStudyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-serie-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-serie-imagerie",
    "element" : [{
      "code" : "FRLMSerieImagerie",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.uuidSerie",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.code",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.description",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.date",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.instanceSOP",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.referenceWado",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.referenceWado.iHEInvokeImage",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.referenceWado.reference",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSerieImagerie.referenceWado.typeMedia",
      "target" : [{
        "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.mediaType",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-serie-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document",
    "element" : [{
      "code" : "FRCDADICOMSerieImagerie",
      "target" : [{
        "code" : "FRImagingStudyDocument.series",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.id",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.uid",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.code",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "FRImagingStudyDocument.series ne possède pas d'élément 'code' pour mapper cette donnée."
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.text",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.description",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.effectiveTime",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.connectionType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.reference",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.text.mediaType",
      "target" : [{
        "code" : "FRImagingStudyDocument.series.endpoint.payloadMimeType",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
