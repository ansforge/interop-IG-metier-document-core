# Mapping FRLMComplicationsActe → FRCDADICOMComplications → FRProcedureImagingDocument.complication.text - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMComplicationsActe → FRCDADICOMComplications → FRProcedureImagingDocument.complication.text 

 
Mapping des éléments du modèle métier FRLMComplicationsActe vers la section CDA FRCDADICOMComplications, puis vers le champ 'complication.text' du profil FHIR FRProcedureImagingDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingComplicationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingComplicationsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Complications survenues au cours de l'acte d'imagerie\"",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMComplicationsActe vers la section CDA FRCDADICOMComplications, puis vers le champ 'complication.text' du profil FHIR FRProcedureImagingDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-complications-acte",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-complications",
    "element" : [{
      "code" : "FRLMComplicationsActe",
      "target" : [{
        "code" : "FRCDADICOMComplications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComplicationsActe.codeSection",
      "target" : [{
        "code" : "FRCDADICOMComplications.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComplicationsActe.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMComplications.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMComplicationsActe.titreSection",
      "target" : [{
        "code" : "FRCDADICOMComplications.title",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-complications",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-procedure-imaging-document",
    "element" : [{
      "code" : "FRCDADICOMComplications",
      "target" : [{
        "code" : "FRProcedureImagingDocument.complication.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
