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
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\"",
  "status" : "draft",
  "date" : "2026-08-11T15:27:44+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-device-prescriptions",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux",
    "element" : [{
      "code" : "FRLMMedicalDevicePrescriptions",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.author[x]",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.codeSection",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.titleSection",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.description",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medical-device-prescriptions",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMMedicalDevicePrescriptions",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.author[x]",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicalDevicePrescriptions.entry.deviceUse:FRLMDeviceUse",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalDevicePrescription.entry:FRDeviceRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
