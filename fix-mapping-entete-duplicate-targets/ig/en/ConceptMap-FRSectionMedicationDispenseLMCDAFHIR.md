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
  "name" : "FRSectionMedicationDispenseLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispensation de médicaments\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMMedicationDispensations vers la section CDA FRCDADispensationMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationDispense.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dispensation-medicaments",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationDispensations",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADispensationMedicaments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.entry.medicationDispense",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDATraitementDispense",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationDispensations",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionMedicationDispense",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationDispensations.entry.medicationDispense",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
