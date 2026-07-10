# Mapping FRLMRaisonRecommandation → FRCDARaisonDeLaRecommandation → FRCompositionDocument.section:reasonForRecommendation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMRaisonRecommandation → FRCDARaisonDeLaRecommandation → FRCompositionDocument.section:reasonForRecommendation 

 
Mapping des éléments du modèle métier FRLMRaisonRecommandation vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionReasonForRecommendationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionReasonForRecommendationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMRaisonRecommandation vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:reasonForRecommendation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-raison-recommandation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation",
    "element" : [{
      "code" : "FRLMRaisonRecommandation",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandation.codeSection",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandation.titreSection",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandation.blocNarratif",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandation.entree.observation",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRaisonRecommandation.entree.problemes",
      "target" : [{
        "code" : "FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-raison-de-la-recommandation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDARaisonDeLaRecommandation",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandation.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandation.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandation.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandation.entry:FRCDASimpleObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARaisonDeLaRecommandation.entry:FRCDAProbleme",
      "target" : [{
        "code" : "FRCompositionDocument.section:reasonForRecommendation.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
