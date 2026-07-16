# Mapping FRLMFacteursDeRisqueProfessionnelsNonCode → FRCDAFacteursDeRisqueProfessionnelsNonCode → FRCompositionDocument.section:uncodedOccupationalRiskFactors - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMFacteursDeRisqueProfessionnelsNonCode → FRCDAFacteursDeRisqueProfessionnelsNonCode → FRCompositionDocument.section:uncodedOccupationalRiskFactors 

 
Mapping des éléments du modèle métier FRLMFacteursDeRisqueProfessionnelsNonCode vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers la section FHIR FRCompositionDocument.section:uncodedOccupationalRiskFactors. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionUncodedOccupationalRiskFactorsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionUncodedOccupationalRiskFactorsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Facteurs de risque professionnels non codés\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMFacteursDeRisqueProfessionnelsNonCode vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers la section FHIR FRCompositionDocument.section:uncodedOccupationalRiskFactors.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-facteurs-de-risque-professionnels-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code",
    "element" : [{
      "code" : "FRLMFacteursDeRisqueProfessionnelsNonCode",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFacteursDeRisqueProfessionnelsNonCode.codeSection",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFacteursDeRisqueProfessionnelsNonCode.titreSection",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFacteursDeRisqueProfessionnelsNonCode.blocNarratif",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode",
      "target" : [{
        "code" : "FRCompositionDocument.section:uncodedOccupationalRiskFactors",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:uncodedOccupationalRiskFactors.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:uncodedOccupationalRiskFactors.title",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "element" : [{
      "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:uncodedOccupationalRiskFactors.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
