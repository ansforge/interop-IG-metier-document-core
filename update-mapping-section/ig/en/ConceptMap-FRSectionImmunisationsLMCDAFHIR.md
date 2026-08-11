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
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccinations\"",
  "status" : "draft",
  "date" : "2026-08-11T15:27:44+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccinations",
    "element" : [{
      "code" : "FRLMImmunisations",
      "target" : [{
        "code" : "FRCDAVaccinations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.codeSection",
      "target" : [{
        "code" : "FRCDAVaccinations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.titleSection",
      "target" : [{
        "code" : "FRCDAVaccinations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.description",
      "target" : [{
        "code" : "FRCDAVaccinations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.entry.immunisation",
      "target" : [{
        "code" : "FRCDAVaccinations.entry.FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-immunisations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMImmunisations",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImmunizations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImmunizations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImmunizations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImmunizations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImmunisations.entry.immunisation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImmunizations.entry:FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
