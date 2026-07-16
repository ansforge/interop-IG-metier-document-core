# Mapping FRLMAutorisationExposition → FRCDADICOMExpositionPatient → FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAutorisationExposition → FRCDADICOMExpositionPatient → FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition 

 
Mapping des éléments du modèle métier FRLMAutorisationExposition vers le profil CDA FRCDADICOMExpositionPatient, puis vers le profil FHIR FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingRadiationExposureAuthorizationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingRadiationExposureAuthorizationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Professionnel autorisant l'exposition aux radiations",
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
  "description" : "Mapping des éléments du modèle métier FRLMAutorisationExposition vers le profil CDA FRCDADICOMExpositionPatient, puis vers le profil FHIR FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-exposition",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-patient",
    "element" : [{
      "code" : "FRLMAutorisationExposition",
      "target" : [{
        "code" : "FRCDADICOMExpositionPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAutorisationExposition.code",
      "target" : [{
        "code" : "FRCDADICOMExpositionPatient.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAutorisationExposition.participant",
      "target" : [{
        "code" : "FRCDADICOMExpositionPatient.participant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-exposition-patient",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-radiation-exposure-document",
    "element" : [{
      "code" : "FRCDADICOMExpositionPatient",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionPatient.code",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDADICOMExpositionPatient.participant",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
