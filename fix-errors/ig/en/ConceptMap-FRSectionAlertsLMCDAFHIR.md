# Mapping FRLMAlerts → FRCDAPointsDeVigilancesNonCode / FRLMAlerts → FRCompositionDocument.section:sectionAlerts - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAlerts → FRCDAPointsDeVigilancesNonCode / FRLMAlerts → FRCompositionDocument.section:sectionAlerts 

 
Mapping des éléments du modèle métier FRLMAlerts vers la section CDA FRCDAPointsDeVigilancesNonCode, puis vers le profil FHIR FRCompositionDocument.section:alerts. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAlertsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAlertsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Points de vigilance\"",
  "status" : "draft",
  "date" : "2026-08-18T08:13:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAlerts vers la section CDA FRCDAPointsDeVigilancesNonCode, puis vers le profil FHIR FRCompositionDocument.section:alerts.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-alerts",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-points-de-vigilances-non-code",
    "element" : [{
      "code" : "FRLMAlerts",
      "target" : [{
        "code" : "FRCDAPointsDeVigilancesNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.codeSection",
      "target" : [{
        "code" : "FRCDAPointsDeVigilancesNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.titleSection",
      "target" : [{
        "code" : "FRCDAPointsDeVigilancesNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.description",
      "target" : [{
        "code" : "FRCDAPointsDeVigilancesNonCode.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.entry.alert",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-alerts",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMAlerts",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAlerts",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAlerts.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAlerts.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAlerts.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAlerts.entry.alert",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAlerts.entry:Flag",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
