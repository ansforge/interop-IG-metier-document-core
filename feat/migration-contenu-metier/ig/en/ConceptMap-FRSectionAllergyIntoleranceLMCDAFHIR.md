# Mapping Métier/CDA/FHIR : Allergies et intolérances - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Allergies et intolérances 

 
Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:AllergyIntolerance. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAllergyIntoleranceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAllergyIntoleranceLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Allergies et intolérances\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAllergiesEtHypersensibilites vers la section CDA FRCDAAllergiesEtHypersensibilites, puis vers le profil FHIR FRCompositionDocument.section:AllergyIntolerance.",
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
      "code" : "FRLMAllergiesEtHypersensibilites",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesEtHypersensibilites.codeSection",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesEtHypersensibilites.titreSection",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesEtHypersensibilites.blocNarratif",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergiesEtHypersensibilites.entree.allergieOuHypersensibilite",
      "target" : [{
        "code" : "FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergies-et-hypersensibilites",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAAllergiesEtHypersensibilites",
      "target" : [{
        "code" : "FRCompositionDocument.section:AllergyIntolerance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergiesEtHypersensibilites.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:AllergyIntolerance.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergiesEtHypersensibilites.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:AllergyIntolerance.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergiesEtHypersensibilites.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:AllergyIntolerance.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergiesEtHypersensibilites.entry:FRCDAListeDesAllergiesEtHypersensibilites",
      "target" : [{
        "code" : "FRCompositionDocument.section:AllergyIntolerance.entry:FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
