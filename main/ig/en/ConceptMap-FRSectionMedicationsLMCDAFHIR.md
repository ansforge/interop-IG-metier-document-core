# Mapping FRLMTraitements → FRCDATraitements → FRCompositionDocument.section:medications - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitements → FRCDATraitements → FRCompositionDocument.section:medications 

 
Mapping des éléments du modèle métier FRLMTraitements vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:medications. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitements vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:medications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements",
    "element" : [{
      "code" : "FRLMTraitements",
      "target" : [{
        "code" : "FRCDATraitements",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitements.codeSection",
      "target" : [{
        "code" : "FRCDATraitements.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitements.titreSection",
      "target" : [{
        "code" : "FRCDATraitements.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitements.blocNarratif",
      "target" : [{
        "code" : "FRCDATraitements.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitements.entree.traitements",
      "target" : [{
        "code" : "FRCDATraitements.entry:FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDATraitements",
      "target" : [{
        "code" : "FRCompositionDocument.section:medications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitements.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:medications.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitements.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:medications.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitements.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:medications.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitements.entry:FRCDATraitement",
      "target" : [{
        "code" : "FRCompositionDocument.section:medications.entry:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
