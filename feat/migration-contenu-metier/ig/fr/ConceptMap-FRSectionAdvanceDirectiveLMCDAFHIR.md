# Mapping FRLMDirectivesAnticipees → FRCDADirectivesAnticipees → FRAdvanceDirectiveDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDirectivesAnticipees → FRCDADirectivesAnticipees → FRAdvanceDirectiveDocument 

 
Mapping des éléments du modèle métier FRLMDirectivesAnticipees vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR FRAdvanceDirectiveDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAdvanceDirectiveLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAdvanceDirectiveLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Directives anticipées\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDirectivesAnticipees vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR FRAdvanceDirectiveDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directives-anticipees",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees",
    "element" : [{
      "code" : "FRLMDirectivesAnticipees",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectivesAnticipees.codeSection",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectivesAnticipees.titreSection",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectivesAnticipees.blocNarratif",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectivesAnticipees.entree",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADirectivesAnticipees",
      "target" : [{
        "code" : "FRCompositionDocument.section:advanceDirective",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectivesAnticipees.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:advanceDirective.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectivesAnticipees.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:advanceDirective.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectivesAnticipees.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:advanceDirective.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee",
      "target" : [{
        "code" : "FRCompositionDocument.section:advanceDirective.entry:FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
