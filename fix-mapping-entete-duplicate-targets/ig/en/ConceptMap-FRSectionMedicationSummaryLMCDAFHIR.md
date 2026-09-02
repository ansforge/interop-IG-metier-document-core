# Mapping FRLMMedicationSummary → FRCDATraitements / FRLMMedicationSummary → FRCompositionDocument.section:sectionMedications - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationSummary → FRCDATraitements / FRLMMedicationSummary → FRCompositionDocument.section:sectionMedications 

 
Mapping des éléments du modèle métier FRLMMedicationSummary vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:sectionMedications. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationSummaryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationSummaryLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionMedicationSummaryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Traitements\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationSummary vers la section CDA FRCDATraitements, puis vers la section FHIR FRCompositionDocument.section:sectionMedications.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationSummary",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-traitements",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationSummary",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDATraitements",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.entry.medicationAdministration",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationSummary",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationSummary",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionMedications",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationSummary.entry.medicationAdministration",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
