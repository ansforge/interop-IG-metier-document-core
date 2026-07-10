# Mapping FRLMCRBIOChapitre → FRCDACRBIOChapitre → FRCompositionDocument.section - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCRBIOChapitre → FRCDACRBIOChapitre → FRCompositionDocument.section 

 
Mapping des éléments du modèle métier FRLMCRBIOChapitre vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRCompositionDocument.section. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionLaboratoryChapterLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionLaboratoryChapterLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Chapitre de BIO\"",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCRBIOChapitre vers la section CDA FRCDACRBIOChapitre, puis vers le profil FHIR FRCompositionDocument.section.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-crbio-chapitre",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-chapitre",
    "element" : [{
      "code" : "FRLMCRBIOChapitre",
      "target" : [{
        "code" : "FRCDACRBIOChapitre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.code",
      "target" : [{
        "code" : "FRCDACRBIOChapitre.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.blocNarratif",
      "target" : [{
        "code" : "FRCDACRBIOChapitre.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.titreSection",
      "target" : [{
        "code" : "FRCDACRBIOChapitre.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale",
      "target" : [{
        "code" : "FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre",
      "target" : [{
        "code" : "FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-crbio-chapitre",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document-section",
    "element" : [{
      "code" : "FRCDACRBIOChapitre",
      "target" : [{
        "code" : "FRCompositionDocument.section",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACRBIOChapitre.code",
      "target" : [{
        "code" : "FRCompositionDocument.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACRBIOChapitre.text",
      "target" : [{
        "code" : "FRCompositionDocument.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACRBIOChapitre.title",
      "target" : [{
        "code" : "FRCompositionDocument.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACRBIOChapitre.entry:FRCDAResultatsExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRCompositionDocument.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACRBIOChapitre.component.section:FRCDACRBIOSousChapitre",
      "target" : [{
        "code" : "FRCompositionDocument.section:avec-sous-sections.section",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
