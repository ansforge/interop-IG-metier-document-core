# Mapping FRLMSocialHistory → FRCDAHabitusModeDeVieSection / FRLMSocialHistory → FRCompositionDocument.section:sectionSocialHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSocialHistory → FRCDAHabitusModeDeVieSection / FRLMSocialHistory → FRCompositionDocument.section:sectionSocialHistory 

 
Mapping des éléments du modèle métier FRLMSocialHistory vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:sectionSocialHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionSocialHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionSocialHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionSocialHistoryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Habitus et modes de vie",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSocialHistory vers la section CDA FRCDAHabitusModeDeVieSection, puis vers le profil FHIR FRCompositionDocument.section:sectionSocialHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSocialHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-habitus-mode-de-vie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSocialHistory",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAHabitusModeDeVieSection",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.entry.observationSocialHistory",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAHabitusModeDeVie",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSocialHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSocialHistory",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionSocialHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSocialHistory.entry.observationSocialHistory",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationSocialHistoryDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
