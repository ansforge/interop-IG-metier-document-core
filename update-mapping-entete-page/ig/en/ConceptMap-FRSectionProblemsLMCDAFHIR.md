# Mapping FRLMProblems → FRCDAProblemesActifs / FRLMProblems → FRCompositionDocument.section:sectionProblems - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProblems → FRCDAProblemesActifs / FRLMProblems → FRCompositionDocument.section:sectionProblems 

 
Mapping des éléments du modèle métier FRLMProblems vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:sectionProblems. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionProblemsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionProblemsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Problèmes actifs\"",
  "status" : "draft",
  "date" : "2026-08-14T10:01:02+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMProblems vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:sectionProblems.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problems",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs",
    "element" : [{
      "code" : "FRLMProblems",
      "target" : [{
        "code" : "FRCDAProblemesActifs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.codeSection",
      "target" : [{
        "code" : "FRCDAProblemesActifs.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.titleSection",
      "target" : [{
        "code" : "FRCDAProblemesActifs.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.description",
      "target" : [{
        "code" : "FRCDAProblemesActifs.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "FRCDAProblemesActifs.entry:FRCDAListeDesProblemes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problems",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMProblems",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionProblems",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionProblems.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionProblems.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionProblems.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblems.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionProblems.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
