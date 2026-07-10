# Mapping FRLMTraitementsAdministres → FRCDATraitementsAdministres → FRCompositionDocument.section:medicationAdministration - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementsAdministres → FRCDATraitementsAdministres → FRCompositionDocument.section:medicationAdministration 

 
Mapping des éléments du modèle métier FRLMTraitementsAdministres vers la section CDA FRCDATraitementsAdministres, puis vers la section FHIR FRCompositionDocument.section:medicationAdministration. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationAdministrationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationAdministrationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements administrés\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitementsAdministres vers la section CDA FRCDATraitementsAdministres, puis vers la section FHIR FRCompositionDocument.section:medicationAdministration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitements-administres",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-administres",
    "element" : [{
      "code" : "FRLMTraitementsAdministres",
      "target" : [{
        "code" : "FRCDATraitementsAdministres",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementsAdministres.codeSection",
      "target" : [{
        "code" : "FRCDATraitementsAdministres.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementsAdministres.titreSection",
      "target" : [{
        "code" : "FRCDATraitementsAdministres.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementsAdministres.blocNarratif",
      "target" : [{
        "code" : "FRCDATraitementsAdministres.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementsAdministres.entree.traitementAdministre",
      "target" : [{
        "code" : "FRCDATraitementsAdministres.entry.FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-administres",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDATraitementsAdministres",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationAdministration",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsAdministres.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationAdministration.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsAdministres.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationAdministration.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsAdministres.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationAdministration.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsAdministres.entry.FRCDATraitement",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationAdministration.entry:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
