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
  "name" : "FRSectionAdvanceDirectivesLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Directives anticipées\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-24T13:13:01+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirectives",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-directives-anticipees",
    "element" : [{
      "code" : "FRLMAdvanceDirectives",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADirectivesAnticipees",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.entry.advanceDirective",
      "target" : [{
        "code" : "Section.entry",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirectives",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAdvanceDirectives",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionAdvanceDirectives",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirectives.entry.advanceDirective",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
