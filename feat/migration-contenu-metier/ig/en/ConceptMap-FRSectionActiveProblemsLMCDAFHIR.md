# Mapping FRLMProblemesActifs → FRCDAProblemesActifs → FRCompositionDocument.section:activeProblems - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMProblemesActifs → FRCDAProblemesActifs → FRCompositionDocument.section:activeProblems 

 
Mapping des éléments du modèle métier FRLMProblemesActifs vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:activeProblems. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionActiveProblemsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionActiveProblemsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Problèmes actifs\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMProblemesActifs vers la section CDA FRCDAProblemesActifs, puis vers la section FHIR FRCompositionDocument.section:activeProblems.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-problemes-actifs",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs",
    "element" : [{
      "code" : "FRLMProblemesActifs",
      "target" : [{
        "code" : "FRCDAProblemesActifs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblemesActifs.codeSection",
      "target" : [{
        "code" : "FRCDAProblemesActifs.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblemesActifs.titreSection",
      "target" : [{
        "code" : "FRCDAProblemesActifs.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblemesActifs.blocNarratif",
      "target" : [{
        "code" : "FRCDAProblemesActifs.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMProblemesActifs.entree.problemes",
      "target" : [{
        "code" : "FRCDAProblemesActifs.entry:FRCDAListeDesProblemes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-problemes-actifs",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAProblemesActifs",
      "target" : [{
        "code" : "FRCompositionDocument.section:activeProblems",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProblemesActifs.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:activeProblems.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProblemesActifs.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:activeProblems.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProblemesActifs.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:activeProblems.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAProblemesActifs.entry:FRCDAListeDesProblemes",
      "target" : [{
        "code" : "FRCompositionDocument.section:activeProblems.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
