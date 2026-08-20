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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-dispositifs-medicaux",
    "element" : [{
      "code" : "FRLMMedicalDevicesAndImplants",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "target" : [{
        "code" : "Section.entry:FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicesAndImplants",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicalDevicesAndImplants",
      "target" : [{
        "code" : "Composition.section:sectionMedicalDevices",
        "display" : "FRCompositionDocument.section:sectionMedicalDevices",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionMedicalDevices.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionMedicalDevices.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.description",
      "target" : [{
        "code" : "Composition.section:sectionMedicalDevices.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "target" : [{
        "code" : "Composition.section:sectionMedicalDevices.entry:FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
