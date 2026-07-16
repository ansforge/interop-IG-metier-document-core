# Mapping FRLMExamenImagerie → FRCDADICOMExamenImagerie → FRImagingStudyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMExamenImagerie → FRCDADICOMExamenImagerie → FRImagingStudyDocument 

 
Mapping des éléments du modèle métier FRLMExamenImagerie vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingStudyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingStudyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Examen d'imagerie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMExamenImagerie vers le profil CDA FRCDADICOMExamenImagerie, puis vers le profil FHIR FRImagingStudyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-examen-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-imagerie",
    "element" : [{
      "code" : "FRLMExamenImagerie",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.uuidInstanceExamen",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.codeActe",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.description",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.dateActe",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.serieImagerie",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMExamenImagerie.objectifsReferences",
      "target" : [{
        "code" : "FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.entryRelationship:frDICOMObjectifsDeReference",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-examen-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-imaging-study-document",
    "element" : [{
      "code" : "FRCDADICOMExamenImagerie",
      "target" : [{
        "code" : "FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.id",
      "target" : [{
        "code" : "FRImagingStudyDocument.identifier:studyInstanceUid",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.code",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "FRImagingStudyDocument ne possède pas d'élément 'code' pour mapper cette donnée."
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.text",
      "target" : [{
        "code" : "FRImagingStudyDocument.description",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.effectiveTime",
      "target" : [{
        "code" : "FRImagingStudyDocument.started",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie",
      "target" : [{
        "code" : "FRImagingStudyDocument.series",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExamenImagerie.entryRelationship:frDICOMSerieImagerie.entryRelationship:frDICOMSOPInstanceObservation.entryRelationship:frDICOMObjectifsDeReference",
      "target" : [{
        "code" : "FRImagingStudyDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
