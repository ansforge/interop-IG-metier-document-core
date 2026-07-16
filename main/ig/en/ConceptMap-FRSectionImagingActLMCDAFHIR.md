# Mapping Métier/CDA/FHIR : Acte d'imagerie - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Acte d'imagerie 

 
Mapping des éléments du modèle métier FRLMActeImagerie vers la section CDA FRCDADICOMActeImagerie, puis vers le profil FHIR FRCompositionDocument.section:ImagingStudy. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingActLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingActLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Acte d'imagerie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMActeImagerie vers la section CDA FRCDADICOMActeImagerie, puis vers le profil FHIR FRCompositionDocument.section:ImagingStudy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie",
    "element" : [{
      "code" : "FRLMActeImagerie",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.codeSection",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.titreSection",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.sousSection.complicationsActe",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.component:frDICOMComplications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.sousSection.expositionsRadiations",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.sousSection.catalogueObjects",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.component:frDICOMObjectCatalog",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.entree.techniqueImagerie",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeImagerie.entree.administrationProduits",
      "target" : [{
        "code" : "FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-acte-imagerie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADICOMActeImagerie",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.component:frDICOMComplications",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.section:Complications",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "element" : [{
      "code" : "FRCDADICOMActeImagerie.component:frDICOMExpositionsAuxRadiations",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.section:radiationExposure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.component:frDICOMObjectCatalog",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.section:ObjectCatalog",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.entry.frDICOMTechniqueImagerie",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument",
        "equivalence" : "equivalent",
        "comment" : "Correspondance avec une référence à une ressource FRProcedureImagingDocument de type Procedure dans l'entrée de la section ImagingStudy.\nsection:ImagingStudy = Reference(FRImagingStudyDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference = Reference(FRProcedureImagingDocument)."
      }]
    },
    {
      "code" : "FRCDADICOMActeImagerie.entry.frDICOMAdministrationProduitDeSante",
      "target" : [{
        "code" : "FRCompositionDocument.section:ImagingStudy.entry:ImagingStudy.procedureReference:FRProcedureImagingDocument.partOf:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent",
        "comment" : "Correspondance avec une référence à une ressource FRMedicationAdministrationDocument de type MedicationAdministration dans l'entrée de la section ImagingStudy.\nsection:ImagingStudy = Reference(FRImagingStudyDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference = Reference(FRProcedureImagingDocument) et section:ImagingStudy.entry:ImagingStudy.procedureReference.partOf = Reference(FRMedicationAdministrationDocument)."
      }]
    }]
  }]
}

```
