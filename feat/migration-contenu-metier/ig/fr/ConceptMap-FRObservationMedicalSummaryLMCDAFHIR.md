# Mapping FRLMSyntheseMedicaleSejour → FRCDASyntheseMedicaleSejour → FRObservationMedicalSummaryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSyntheseMedicaleSejour → FRCDASyntheseMedicaleSejour → FRObservationMedicalSummaryDocument 

 
Mapping des éléments du modèle métier FRLMSyntheseMedicaleSejour vers la sous-entrée CDA FRCDASyntheseMedicaleSejour puis vers le profil FHIR FRObservationMedicalSummaryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationMedicalSummaryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationMedicalSummaryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Synthèse médicale de séjour",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSyntheseMedicaleSejour vers la sous-entrée CDA FRCDASyntheseMedicaleSejour puis vers le profil FHIR FRObservationMedicalSummaryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-synthese-medicale-sejour",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-synthese-medicale-sejour",
    "element" : [{
      "code" : "FRLMSyntheseMedicaleSejour",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.identifiant",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.code",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.description",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.statut",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.date",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.statutDocument",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSyntheseMedicaleSejour.auteur",
      "target" : [{
        "code" : "FRCDASyntheseMedicaleSejour.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-synthese-medicale-sejour",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-medical-summary-document",
    "element" : [{
      "code" : "FRCDASyntheseMedicaleSejour.id",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.code",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.text",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.statusCode",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.effectiveTime",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.value",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.valueString",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASyntheseMedicaleSejour.author",
      "target" : [{
        "code" : "FRObservationMedicalSummaryDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
