# Mapping FRLMInformationsCliniques → FRCDADICOMHistoriqueMedical → FRCompositionDocument.section:History (Observation / FRConditionDocument/ FRObservationPregnancyDocument / FRObservationContraIndicationsImagingDocument / FRDeviceAuteurDocument / FRMedicationAdministrationDocument) - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMInformationsCliniques → FRCDADICOMHistoriqueMedical → FRCompositionDocument.section:History (Observation / FRConditionDocument/ FRObservationPregnancyDocument / FRObservationContraIndicationsImagingDocument / FRDeviceAuteurDocument / FRMedicationAdministrationDocument) 

 
Mapping des éléments du modèle métier FRLMInformationsCliniques vers la section CDA FRCDADICOMHistoriqueMedical puis vers les profils FHIR Observation, FRConditionDocument, FRObservationPregnancyDocument, FRObservationContraIndicationsImagingDocument, FRDeviceAuteurDocument et FRMedicationAdministrationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImagingClinicalInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImagingClinicalInformationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Informations cliniques d'imagerie",
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
  "description" : "Mapping des éléments du modèle métier FRLMInformationsCliniques vers la section CDA FRCDADICOMHistoriqueMedical puis vers les profils FHIR Observation, FRConditionDocument, FRObservationPregnancyDocument, FRObservationContraIndicationsImagingDocument, FRDeviceAuteurDocument et FRMedicationAdministrationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informations-cliniques",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "element" : [{
      "code" : "FRLMInformationsCliniques",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.titreSection",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.blocNarratif",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.antecedentsMedicaux",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.antecedentsChirurgicaux",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.statutGrossesse",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:grossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.contreIndications",
      "target" : [{
        "code" : "FRCDADICOMHistoriqueMedical.entry.observation:contreIndications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.probleme",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.dispositifMedical",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.administrationProduitDeSante",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMInformationsCliniques.entree.sexeClinique",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/observation",
    "element" : [{
      "code" : "FRCDADICOMHistoriqueMedical",
      "target" : [{
        "code" : "FRCompositionDocument.section:history",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMHistoriqueMedical.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:history.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsMedicaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:history.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADICOMHistoriqueMedical.entry.observation:antecedentsChirurgicaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:history.entry:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document",
    "element" : [{
      "code" : "FRCDADICOMHistoriqueMedical.entry.observation:grossesse",
      "target" : [{
        "code" : "FRCompositionDocument.section:history.entry:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-contra-indications-imaging-document",
    "element" : [{
      "code" : "FRCDADICOMHistoriqueMedical.entry.observation:contreIndications",
      "target" : [{
        "code" : "FRCompositionDocument.section:history.entry:FRObservationContraIndicationsImagingDocument",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-auteur-document",
    "element" : [{
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-historique-medical",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document",
    "element" : [{
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
