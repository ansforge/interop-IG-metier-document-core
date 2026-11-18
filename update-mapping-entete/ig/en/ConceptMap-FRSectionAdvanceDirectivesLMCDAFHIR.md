# Mapping FRLMAdvanceDirectives → FRCDADirectivesAnticipees / FRLMAdvanceDirectives → FRCompositionDocument.section:sectionAdvanceDirectives - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAdvanceDirectives → FRCDADirectivesAnticipees / FRLMAdvanceDirectives → FRCompositionDocument.section:sectionAdvanceDirectives 

 
Mapping des éléments du modèle métier FRLMAdvanceDirectives vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR puis vers la section FHIR FRCompositionDocument.section:sectionAdvanceDirectives. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAdvanceDirectivesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAdvanceDirectivesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Directives anticipées\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAdvanceDirectives vers la section CDA FRCDADirectivesAnticipees, puis vers le profil FHIR puis vers la section FHIR FRCompositionDocument.section:sectionAdvanceDirectives.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directives",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directives-anticipees",
    "element" : [{
      "code" : "FRLMAdvanceDirectives",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.codeSection",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.titleSection",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.description",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective",
      "target" : [{
        "code" : "FRCDADirectivesAnticipees.entry:FRCDADirectiveAnticipee",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directives",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMAdvanceDirectives",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAdvanceDirectives",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAdvanceDirectives.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAdvanceDirectives.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAdvanceDirectives.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.entry.advanceDirective:FRLMAdvanceDirective",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAdvanceDirectives.entry:FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
