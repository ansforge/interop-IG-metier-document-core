# Mapping FRLMPredictableAdverseDrugReaction → FRCDAEffetsIndesirables/ FRLMPredictableAdverseDrugReaction → FRCompositionDocument.section:sectionPredictableAdverseDrugReaction - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPredictableAdverseDrugReaction → FRCDAEffetsIndesirables/ FRLMPredictableAdverseDrugReaction → FRCompositionDocument.section:sectionPredictableAdverseDrugReaction 

 
Mapping des éléments du modèle métier FRLMPredictableAdverseDrugReaction vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:sectionPredictableAdverseDrugReaction. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPredictableAdverseDrugReactionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPredictableAdverseDrugReactionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Effets indésirables\"",
  "status" : "draft",
  "date" : "2026-08-13T13:19:20+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPredictableAdverseDrugReaction vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables",
    "element" : [{
      "code" : "FRLMPredictableAdverseDrugReaction",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.titreSection",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.description",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-predictable-adverse-drug-reaction",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMPredictableAdverseDrugReaction",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
