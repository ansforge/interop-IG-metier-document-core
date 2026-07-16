# Mapping FRLMVaccinations → FRCDAVaccinations → FRCompositionDocument.section:immunizations - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMVaccinations → FRCDAVaccinations → FRCompositionDocument.section:immunizations 

 
Mapping des éléments du modèle métier FRLMVaccinations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:immunizations. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionImmunizationsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionImmunizationsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Vaccinations\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMVaccinations vers la section CDA FRCDAVaccinations, puis vers la section FHIR FRCompositionDocument.section:immunizations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vaccinations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccinations",
    "element" : [{
      "code" : "FRLMVaccinations",
      "target" : [{
        "code" : "FRCDAVaccinations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinations.codeSection",
      "target" : [{
        "code" : "FRCDAVaccinations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinations.titreSection",
      "target" : [{
        "code" : "FRCDAVaccinations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinations.blocNarratif",
      "target" : [{
        "code" : "FRCDAVaccinations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVaccinations.entree.vaccinations",
      "target" : [{
        "code" : "FRCDAVaccinations.entry.FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-vaccinations",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAVaccinations",
      "target" : [{
        "code" : "FRCompositionDocument.section:immunizations",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinations.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:immunizations.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinations.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:immunizations.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinations.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:immunizations.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAVaccinations.entry.FRCDAVaccination",
      "target" : [{
        "code" : "FRCompositionDocument.section:immunizations.entry:FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
