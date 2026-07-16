# Mapping FRLMDispositifsMedicaux → FRCDADispositifsMedicaux → FRCompositionDocument.section:medicalDevice - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDispositifsMedicaux → FRCDADispositifsMedicaux → FRCompositionDocument.section:medicalDevice 

 
Mapping des éléments du modèle métier FRLMDispositifsMedicaux vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevice. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicalDeviceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicalDeviceLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispositifs médicaux\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDispositifsMedicaux vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevice.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-dispositifs-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositifs-medicaux",
    "element" : [{
      "code" : "FRLMDispositifsMedicaux",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifsMedicaux.codeSection",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifsMedicaux.titreSection",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifsMedicaux.blocNarratif",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDispositifsMedicaux.entree.dispositifsMedicaux",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.entry:FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositifs-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADispositifsMedicaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevice",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifsMedicaux.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevice.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifsMedicaux.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevice.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifsMedicaux.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevice.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADispositifsMedicaux.entry:FRCDADispositifMedical",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevice.entry:FRDeviceRequestDocument",
        "equivalence" : "equivalent"
      },
      {
        "code" : "FRCompositionDocument.section:medicalDevice.entry:FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
