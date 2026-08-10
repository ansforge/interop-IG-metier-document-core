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
  "title" : "Mapping Métier/CDA/FHIR : Quantité d'exposition aux radiations",
  "status" : "draft",
  "date" : "2026-08-10T19:10:11+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-quantite-exposition",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-quantite",
    "element" : [{
      "code" : "FRLMQuantityExposure",
      "target" : [{
        "code" : "FRCDADICOMQuantite",
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
        "code" : "FRCDADICOMQuantite.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.quantity",
      "target" : [{
        "code" : "FRCDADICOMQuantite.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "FRCDADICOMQuantite.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier",
      "target" : [{
        "code" : "FRCDADICOMQuantite.targetSiteCode.qualifier",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-quantite-exposition",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-radiation-exposure-document",
    "element" : [{
      "code" : "FRLMQuantityExposure",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.header.participant[x].participantProfessional",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.performer:professionnelAutorisantExposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.type",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.component.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.quantity",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.component.valueQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQuantityExposure.bodySite:FRLMBodyStructure.locationQualifier",
      "target" : [{
        "code" : "FRObservationRadiationExposureDocument.bodySite.extension:precisionTopographique",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
