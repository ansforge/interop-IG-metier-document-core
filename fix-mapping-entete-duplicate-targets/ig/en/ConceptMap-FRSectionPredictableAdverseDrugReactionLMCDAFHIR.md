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
  "name" : "FRSectionPredictableAdverseDrugReactionLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Effets indésirables\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T15:48:56+00:00",
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
      "code" : "FRLMPredictableAdverseDrugReaction.titleSection",
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
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAEffetIndesirable",
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
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionPredictableAdverseDrugReaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPredictableAdverseDrugReaction.entry.adverseEvent",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
