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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPredictableAdverseDrugReaction",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-effets-indesirables",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPredictableAdverseDrugReaction",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAEffetsIndesirables",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.titreSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "Section.entry:FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPredictableAdverseDrugReaction",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPredictableAdverseDrugReaction",
      "target" : [{
        "code" : "Composition.section:sectionPredictableAdverseDrugReaction",
        "display" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionPredictableAdverseDrugReaction.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionPredictableAdverseDrugReaction.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.description",
      "target" : [{
        "code" : "Composition.section:sectionPredictableAdverseDrugReaction.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent:FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "Composition.section:sectionPredictableAdverseDrugReaction.entry:FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
