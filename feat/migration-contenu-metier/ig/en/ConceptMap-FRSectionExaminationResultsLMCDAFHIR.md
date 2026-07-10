# Mapping FRLMResultatsExamens → FRCDAResultatsExamens → FRCompositionDocument.section:Results - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatsExamens → FRCDAResultatsExamens → FRCompositionDocument.section:Results 

 
Mapping des éléments du modèle métier FRLMResultatsExamens vers la section CDA FRCDAResultatsExamens puis vers le profil FHIR FRCompositionDocument.section:Results. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionExaminationResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionExaminationResultsLMCDAFHIR",
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
  "description" : "Mapping des éléments du modèle métier FRLMResultatsExamens vers la section CDA FRCDAResultatsExamens puis vers le profil FHIR FRCompositionDocument.section:Results.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens",
    "element" : [{
      "code" : "FRLMResultatsExamens",
      "target" : [{
        "code" : "FRCDAResultatsExamens",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.codeSection",
      "target" : [{
        "code" : "FRCDAResultatsExamens.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.titreSection",
      "target" : [{
        "code" : "FRCDAResultatsExamens.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.blocNarratif",
      "target" : [{
        "code" : "FRCDAResultatsExamens.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.entree.actes",
      "target" : [{
        "code" : "FRCDAResultatsExamens.entry:FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.entree.referencesExternes",
      "target" : [{
        "code" : "FRCDAResultatsExamens.entry:FRCDAReferencesExternes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamens.entree.observation",
      "target" : [{
        "code" : "FRCDAResultatsExamens.entry:FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultats-examens",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAResultatsExamens",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.entry:FRCDAActe",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.entry:FRProcedureActDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.entry:FRCDAReferencesExternes",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatsExamens.entry:FRCDASimpleObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:Results.entry:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
