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
  "name" : "FRSectionAllergiesAndIntolerancesLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Allergies et intolérances\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T15:12:23+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-allergies-et-hypersensibilites",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAllergiesAndIntolerances",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAAllergiesEtHypersensibilites",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAAllergieOuHypersensibilite",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAllergiesAndIntolerances",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionAllergiesAndIntolerances",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
