# Mapping FRLMTraitementSortie → FRCDATraitementsALaSortie → FRCompositionDocument.section:hospitalDischargeMedications - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMTraitementSortie → FRCDATraitementsALaSortie → FRCompositionDocument.section:hospitalDischargeMedications 

 
Mapping des éléments du modèle métier FRLMTraitementSortie vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:hospitalDischargeMedications. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionHospitalDischargeMedicationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionHospitalDischargeMedicationsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMTraitementSortie vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:hospitalDischargeMedications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-traitement-sortie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie",
    "element" : [{
      "code" : "FRLMTraitementSortie",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSortie.codeSection",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSortie.titreSection",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSortie.blocNarratif",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMTraitementSortie.entree.traitementSortie",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.entry.FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDATraitementsALaSortie",
      "target" : [{
        "code" : "FRCompositionDocument.section:hospitalDischargeMedications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsALaSortie.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:hospitalDischargeMedications.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsALaSortie.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:hospitalDischargeMedications.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsALaSortie.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:hospitalDischargeMedications.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDATraitementsALaSortie.entry.FRCDATraitement",
      "target" : [{
        "code" : "FRCompositionDocument.section:hospitalDischargeMedications.entry:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
