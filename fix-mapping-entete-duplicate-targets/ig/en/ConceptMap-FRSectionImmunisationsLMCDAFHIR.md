# Mapping FRLMImmunisations → FRCDAVaccinations / FRLMImmunisations → FRCompositionDocument.section:sectionImmunizations - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMImmunisations → FRCDAVaccinations / FRLMImmunisations → FRCompositionDocument.section:sectionImmunizations 

 
Mapping des éléments du modèle métier FRLMImmunisations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:sectionImmunizations. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImmunisationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImmunisationsLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionImmunisationsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccinations\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:35:28+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMImmunisations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:sectionImmunizations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-vaccinations",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImmunisations",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAVaccinations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.entry.immunisation",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisations",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMImmunisations",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionImmunizations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.entry.immunisation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
