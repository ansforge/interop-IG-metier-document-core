# Mapping FRLMHistoryOfPastIllness → FRCDAAntecedentsMedicaux / FRLMHistoryOfPastIllness → FRCompositionDocument.section:sectionMedicalHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHistoryOfPastIllness → FRCDAAntecedentsMedicaux / FRLMHistoryOfPastIllness → FRCompositionDocument.section:sectionMedicalHistory 

 
Mapping des éléments du modèle métier FRLMHistoryOfPastIllness vers la section CDA FRCDAAntecedentsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicalHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicalHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédents médicaux\"",
  "status" : "draft",
  "date" : "2026-08-12T09:25:55+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMHistoryOfPastIllness vers la section CDA FRCDAAntecedentsMedicaux, puis vers la section FHIR FRCompositionDocument.section:sectionMedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-history-of-past-illness",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-medicaux",
    "element" : [{
      "code" : "FRLMHistoryOfPastIllness",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.codeSection",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.titleSection",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.description",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-history-of-past-illness",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMHistoryOfPastIllness",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicalHistory.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
