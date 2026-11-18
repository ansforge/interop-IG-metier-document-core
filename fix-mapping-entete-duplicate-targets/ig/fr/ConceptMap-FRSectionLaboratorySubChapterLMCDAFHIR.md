# Mapping FRLMCRBIOSousChapitre → FRCDACRBIOSousChapitre → FRCompositionDocument.section:avec-sous-sections.section - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCRBIOSousChapitre → FRCDACRBIOSousChapitre → FRCompositionDocument.section:avec-sous-sections.section 

 
Mapping des éléments du modèle métier FRLMCRBIOSousChapitre vers la section CDA FRCDACRBIOSousChapitre, puis vers le profil FHIR FRCompositionDocument.section:avec-sous-sections.section. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionLaboratorySubChapterLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionLaboratorySubChapterLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Sous-chapitre de BIO\"",
  "status" : "draft",
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCRBIOSousChapitre vers la section CDA FRCDACRBIOSousChapitre, puis vers le profil FHIR FRCompositionDocument.section:avec-sous-sections.section.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-crbio-sous-chapitre",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-sous-chapitre",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCRBIOSousChapitre",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDACRBIOSousChapitre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOSousChapitre.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOSousChapitre.blocNarratif",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOSousChapitre.titreSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCRBIOSousChapitre.entree.resultatsExamensBiologieMedicale",
      "target" : [{
        "code" : "Section.entry:FRCDAResultatsExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-cr-bio-sous-chapitre",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Section",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section",
        "display" : "FRCompositionDocument.section:avec",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.code",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.text",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.title",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Section.entry:FRCDAResultatsExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Composition.section:avec-sous-sections.section:sans-sous-sections.entry:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
