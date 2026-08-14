# Mapping FRLMAllergiesAndIntolerances → FRCDAAllergiesEtHypersensibilites / FRLMAllergiesAndIntolerances → FRCompositionDocument.section:sectionAllergiesAndIntolerances - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAllergiesAndIntolerances → FRCDAAllergiesEtHypersensibilites / FRLMAllergiesAndIntolerances → FRCompositionDocument.section:sectionAllergiesAndIntolerances 

 
Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:sectionAllergiesAndIntolerances. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAllergiesAndIntolerancesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAllergiesAndIntolerancesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Allergies et intolérances\"",
  "status" : "draft",
  "date" : "2026-08-14T14:57:39+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:sectionAllergiesAndIntolerances.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergies-et-hypersensibilites",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergies-et-hypersensibilites",
    "element" : [{
      "code" : "FRLMAllergiesAndIntolerances",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.codeSection",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.titleSection",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.description",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergies-and-intolerances",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMAllergiesAndIntolerances",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance:FRLMAllergyIntolerance",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances.entry:FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
