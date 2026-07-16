# Mapping FRLMRaisonRecommandationNonCode → FRCDARaisonDeLaRecommandationNonCode → FRCompositionDocument.section:reasonForRecommendation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMRaisonRecommandationNonCode → FRCDARaisonDeLaRecommandationNonCode → FRCompositionDocument.section:reasonForRecommendation 

 
Mapping des éléments du modèle métier FRLMRaisonRecommandationNonCode vers la section CDA FRCDARaisonDeLaRecommandationNonCode, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionUncodedReasonForRecommendationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionUncodedReasonForRecommendationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMRaisonRecommandationNonCode vers la section CDA FRCDARaisonDeLaRecommandationNonCode, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation-non-code",
    "element" : [{
      "code" : "FRLMRaisonRecommandationNonCode",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandationNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandationNonCode.codeSection",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandationNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandationNonCode.titreSection",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandationNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandationNonCode.blocNarratif",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandationNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDARaisonDeLaRecommandationNonCode",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandationNonCode.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandationNonCode.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandationNonCode.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
