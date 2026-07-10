# Mapping FRLMCertitude → FRCDACertitude → FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCertitude → FRCDACertitude → FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus 

 
Mapping des éléments du modèle métier FRLMCertitude vers le profil CDA FRCDACertitude, puis vers les profils FHIR FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRCertitudeLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRCertitudeLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Certitude\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMCertitude vers le profil CDA FRCDACertitude, puis vers les profils FHIR FRConditionDocument.verificationStatus et FRAllergyIntoleranceDocument.verificationStatus.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-certitude",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude",
    "element" : [{
      "code" : "FRLMCertitude",
      "target" : [{
        "code" : "FRCDACertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.identifiant",
      "target" : [{
        "code" : "FRCDACertitude.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.code",
      "target" : [{
        "code" : "FRCDACertitude.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.statut",
      "target" : [{
        "code" : "FRCDACertitude.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.date",
      "target" : [{
        "code" : "FRCDACertitude.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.descriptionNarrative",
      "target" : [{
        "code" : "FRCDACertitude.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCertitude.valeur",
      "target" : [{
        "code" : "FRCDACertitude.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-condition-document",
    "element" : [{
      "code" : "FRCDACertitude.value",
      "target" : [{
        "code" : "FRConditionDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-certitude",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document",
    "element" : [{
      "code" : "FRCDACertitude.value",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
