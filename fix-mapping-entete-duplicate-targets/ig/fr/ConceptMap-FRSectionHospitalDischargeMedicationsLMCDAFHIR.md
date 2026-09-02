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
  "name" : "FRSectionHospitalDischargeMedicationsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements à la sortie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T10:43:57+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements-a-la-sortie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHospitalDischargeMedications",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDATraitementsALaSortie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHospitalDischargeMedications",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHospitalDischargeMedications",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionDischargeMedications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHospitalDischargeMedications.entry.hospitalDischargeMedications",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
