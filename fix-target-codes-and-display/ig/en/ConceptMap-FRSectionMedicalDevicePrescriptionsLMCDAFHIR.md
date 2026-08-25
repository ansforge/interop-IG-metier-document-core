# Mapping FRLMMedicalDevicePrescriptions → FRCDAPrescriptionDispositifsMedicaux / FRLMMedicalDevicePrescriptions → FRCompositionDocument.section:sectionMedicalDevicePrescription - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicalDevicePrescriptions → FRCDAPrescriptionDispositifsMedicaux / FRLMMedicalDevicePrescriptions → FRCompositionDocument.section:sectionMedicalDevicePrescription 

 
Mapping des éléments du modèle métier FRLMMedicalDevicePrescriptions vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevicePrescription. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicalDevicePrescriptionsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicalDevicePrescriptionsLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionMedicalDevicePrescriptionsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicalDevicePrescriptions vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalDevicePrescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicalDevicePrescriptions",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAPrescriptionDispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.author[x]",
      "target" : [{
        "code" : "Section.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.entry.deviceUse",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicalDevicePrescriptions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicalDevicePrescriptions",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionMedicalDevicePrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.author[x]",
      "target" : [{
        "code" : "Composition.section.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.entry.deviceUse",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
