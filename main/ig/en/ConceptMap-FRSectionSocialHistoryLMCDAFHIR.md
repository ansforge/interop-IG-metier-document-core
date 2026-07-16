# Mapping FRLMHabitusModeDeVie → FRCDAHabitusModeDeVieSection → FRCompositionDocument.section:socialHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHabitusModeDeVie → FRCDAHabitusModeDeVieSection → FRCompositionDocument.section:socialHistory 

 
Mapping des éléments du modèle métier FRLMHabitusModeDeVie vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:socialHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionSocialHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionSocialHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Habitus et modes de vie",
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
  "description" : "Mapping des éléments du modèle métier FRLMHabitusModeDeVie vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:socialHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie-section",
    "element" : [{
      "code" : "FRLMHabitusModeDeVie",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVieSection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVie.codeSection",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVieSection.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVie.titreSection",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVieSection.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVie.blocNarratif",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVieSection.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVie.entree.habitusModeDeVieEntry",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie-section",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAHabitusModeDeVieSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:socialHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVieSection.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:socialHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVieSection.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:socialHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVieSection.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:socialHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVieSection.entry:FRCDAHabitusModeDeVie",
      "target" : [{
        "code" : "FRCompositionDocument.section:socialHistory.entry:FRObservationSocialHistoryDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
