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
  "name" : "FRSectionMedicalDevicesAndImplantsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispositifs médicaux\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-dispositifs-medicaux",
    "targetVersion" : "0.1.0",
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
        "code" : "Section.entry",
        "display" : "FRCDADispositifMedical",
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
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionMedicalDevices",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicesAndImplants.entry.deviceUse",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
