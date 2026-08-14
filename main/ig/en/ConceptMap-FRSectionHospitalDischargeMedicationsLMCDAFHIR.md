# Mapping FRLMHospitalDischargeMedications → FRCDATraitementsALaSortie / FRLMHospitalDischargeMedications → FRCompositionDocument.section:sectionDischargeMedications - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHospitalDischargeMedications → FRCDATraitementsALaSortie / FRLMHospitalDischargeMedications → FRCompositionDocument.section:sectionDischargeMedications 

 
Mapping des éléments du modèle métier FRLMHospitalDischargeMedications vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:sectionDischargeMedications. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionHospitalDischargeMedicationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionHospitalDischargeMedicationsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\"",
  "status" : "draft",
  "date" : "2026-08-14T12:00:06+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMHospitalDischargeMedications vers la section CDA FRCDATraitementsALaSortie, puis vers la section FHIR FRCompositionDocument.section:sectionDischargeMedications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-hospital-discharge-medications",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-traitements-a-la-sortie",
    "element" : [{
      "code" : "FRLMHospitalDischargeMedications",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.codeSection",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.titleSection",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.description",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications:FRLMMedicationAdministration",
      "target" : [{
        "code" : "FRCDATraitementsALaSortie.entry.FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-hospital-discharge-medications",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMHospitalDischargeMedications",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionDischargeMedications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionDischargeMedications.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionDischargeMedications.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionDischargeMedications.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionDischargeMedications.entry:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
