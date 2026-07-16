# Mapping FRLMPrescriptionDispositifsMedicaux → FRCDAPrescriptionDispositifsMedicaux → FRCompositionDocument.section:medicalDevicePrescription - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPrescriptionDispositifsMedicaux → FRCDAPrescriptionDispositifsMedicaux → FRCompositionDocument.section:medicalDevicePrescription 

 
Mapping des éléments du modèle métier FRLMPrescriptionDispositifsMedicaux vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevicePrescription. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPrescriptionOfMedicalDevicesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPrescriptionOfMedicalDevicesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de dispositifs médicaux\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMPrescriptionDispositifsMedicaux vers la section CDA FRCDAPrescriptionDispositifsMedicaux, puis vers la section FHIR FRCompositionDocument.section:medicalDevicePrescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-dispositifs-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux",
    "element" : [{
      "code" : "FRLMPrescriptionDispositifsMedicaux",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionDispositifsMedicaux.auteur",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionDispositifsMedicaux.codeSection",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionDispositifsMedicaux.titreSection",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionDispositifsMedicaux.blocNarratif",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionDispositifsMedicaux.entree.dispositifMedical",
      "target" : [{
        "code" : "FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-dispositifs-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAPrescriptionDispositifsMedicaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionDispositifsMedicaux.author",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionDispositifsMedicaux.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionDispositifsMedicaux.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionDispositifsMedicaux.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionDispositifsMedicaux.entry:FRCDADispositifMedical",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicalDevicePrescription.entry:FRDeviceRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
