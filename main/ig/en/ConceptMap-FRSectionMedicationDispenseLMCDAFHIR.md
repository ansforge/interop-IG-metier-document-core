# Mapping FRLMMedicationDispensations → FRCDADispensationMedicaments / FRLMMedicationDispensations → FRCompositionDocument.section:sectionMedicationDispense - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationDispensations → FRCDADispensationMedicaments / FRLMMedicationDispensations → FRCompositionDocument.section:sectionMedicationDispense 

 
Mapping des éléments du modèle métier FRLMMedicationDispensations vers la section CDA FRCDADispensationMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationDispense. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationDispenseLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationDispenseLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispensation de médicaments\"",
  "status" : "draft",
  "date" : "2026-08-13T14:36:19+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMedicationDispensations vers la section CDA FRCDADispensationMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationDispense.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-dispensations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispensation-medicaments",
    "element" : [{
      "code" : "FRLMMedicationDispensations",
      "target" : [{
        "code" : "FRCDADispensationMedicaments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.codeSection",
      "target" : [{
        "code" : "FRCDADispensationMedicaments.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.description",
      "target" : [{
        "code" : "FRCDADispensationMedicaments.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.titleSection",
      "target" : [{
        "code" : "FRCDADispensationMedicaments.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense",
      "target" : [{
        "code" : "FRCDADispensationMedicaments.entry.FRCDATraitementDispense",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-dispensations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMMedicationDispensations",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationDispense",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationDispense.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationDispense.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationDispense.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.entry.medicationDispense:FRLMMedicationDispense",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationDispense.entry:FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
