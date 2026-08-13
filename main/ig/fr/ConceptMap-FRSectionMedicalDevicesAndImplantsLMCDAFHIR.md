# Mapping FRLMMedicalDevicesAndImplants → FRCDADispositifsMedicaux / FRLMMedicalDevicesAndImplants → FRCompositionDocument.section:sectionMedicalDevices - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicalDevicesAndImplants → FRCDADispositifsMedicaux / FRLMMedicalDevicesAndImplants → FRCompositionDocument.section:sectionMedicalDevices 

 
Mapping des éléments du modèle métier FRLMMedicalDevicesAndImplants vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevices. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicalDevicesAndImplantsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicalDevicesAndImplantsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispositifs médicaux\"",
  "status" : "draft",
  "date" : "2026-08-13T14:36:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicalDevicesAndImplants vers la section CDA FRCDADispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevices.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-devices-and-implants",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositifs-medicaux",
    "element" : [{
      "code" : "FRLMMedicalDevicesAndImplants",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.codeSection",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.titleSection",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.description",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "target" : [{
        "code" : "FRCDADispositifsMedicaux.entry:FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-devices-and-implants",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMMedicalDevicesAndImplants",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevices",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevices.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevices.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevices.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
