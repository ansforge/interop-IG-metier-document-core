# Mapping FRLMQuantityExposure → FRCDADICOMQuantite / FRLMQuantityExposure → FRObservationRadiationExposureDocument.component - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMQuantityExposure → FRCDADICOMQuantite / FRLMQuantityExposure → FRObservationRadiationExposureDocument.component 

 
Mapping des éléments du modèle métier FRLMQuantityExposure vers l'entrée CDA FRCDADICOMQuantite, puis vers le profil FHIR FRObservationRadiationExposureDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRImagingQuantityExposureLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRImagingQuantityExposureLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRImagingQuantityExposureLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Quantité d'exposition aux radiations",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMQuantityExposure vers l'entrée CDA FRCDADICOMQuantite, puis vers le profil FHIR FRObservationRadiationExposureDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-quantite",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMQuantityExposure",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDADICOMQuantite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.header.participant[x].participantProfessional",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite identifiée pour participantProfessional dans FRCDADICOMQuantite."
      }]
    },
    {
      "code" : "FRLMQuantityExposure.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.quantity",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "Observation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "Observation.targetSiteCode.qualifier",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQuantityExposure",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-radiation-exposure-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMQuantityExposure",
      "target" : [{
        "code" : "Observation.component",
        "display" : "FRObservationRadiationExposureDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.header.participant[x].participantProfessional",
      "target" : [{
        "code" : "Observation.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.type",
      "target" : [{
        "code" : "Observation.component.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.quantity",
      "target" : [{
        "code" : "Observation.component.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "Observation.bodySite.extension:precisionTopographique",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
