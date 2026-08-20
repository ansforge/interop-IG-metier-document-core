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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-medicaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHistoryOfPastIllness",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAAntecedentsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "Section.entry.FRCDAListeDesProblemes.entryRelationship:FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHistoryOfPastIllness",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHistoryOfPastIllness",
      "target" : [{
        "code" : "Composition.section:sectionMedicalHistory",
        "display" : "FRCompositionDocument.section:sectionMedicalHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionMedicalHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionMedicalHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.description",
      "target" : [{
        "code" : "Composition.section:sectionMedicalHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHistoryOfPastIllness.entry.problem:FRLMCondition",
      "target" : [{
        "code" : "Composition.section:sectionMedicalHistory.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
