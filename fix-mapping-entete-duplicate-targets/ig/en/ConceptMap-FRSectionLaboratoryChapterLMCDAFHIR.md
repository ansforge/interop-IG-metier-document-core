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
  "date" : "2026-09-02T15:48:56+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-crbio-chapitre",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-chapitre",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCRBIOChapitre",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDACRBIOChapitre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.code",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.blocNarratif",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.titreSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.choice[x]:FRLMResultatsExamensBiologieMedicale",
      "target" : [{
        "code" : "Section.entry:FRCDAResultatsExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOChapitre.choice[x]:FRLMCRBIOSousChapitre",
      "target" : [{
        "code" : "Section.component.section:FRCDACRBIOSousChapitre",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-chapitre",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Section",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.code",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.text",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.title",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.entry:FRCDAResultatsExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Composition.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.component.section:FRCDACRBIOSousChapitre",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
