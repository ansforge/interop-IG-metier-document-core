# Mapping FRLMResultatsExamensNonCode → FRCDAResultatsExamensNonCode → FRCompositionDocument.section:Results - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatsExamensNonCode → FRCDAResultatsExamensNonCode → FRCompositionDocument.section:Results 

 
Mapping des éléments du modèle métier FRLMResultatsExamensNonCode vers la section CDA FRCDAResultatsExamensNonCode puis vers le profil FHIR FRCompositionDocument.section:Results. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionUncodedExaminationResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionUncodedExaminationResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Résultats d'examen",
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
  "description" : "Mapping des éléments du modèle métier FRLMResultatsExamensNonCode vers la section CDA FRCDAResultatsExamensNonCode puis vers le profil FHIR FRCompositionDocument.section:Results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-non-code",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens-non-code",
    "element" : [{
      "code" : "FRLMResultatsExamensNonCode",
      "target" : [{
        "code" : "FRCDAResultatsExamensNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensNonCode.codeSection",
      "target" : [{
        "code" : "FRCDAResultatsExamensNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensNonCode.titreSection",
      "target" : [{
        "code" : "FRCDAResultatsExamensNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensNonCode.blocNarratif",
      "target" : [{
        "code" : "FRCDAResultatsExamensNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAResultatsExamensNonCode",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamensNonCode.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamensNonCode.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamensNonCode.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
