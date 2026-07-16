# Mapping FRLMRencontre → FRCDARencontre → FREncounterDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMRencontre → FRCDARencontre → FREncounterDocument 

 
Mapping des éléments du modèle métier FRLMRencontre vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FREncounterLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FREncounterLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Encounter\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMRencontre vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-rencontre",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-rencontre",
    "element" : [{
      "code" : "FRLMRencontre",
      "target" : [{
        "code" : "FRCDARencontre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.identifiant",
      "target" : [{
        "code" : "FRCDARencontre.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.typeRencontre",
      "target" : [{
        "code" : "FRCDARencontre.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.description",
      "target" : [{
        "code" : "FRCDARencontre.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.dateRencontre",
      "target" : [{
        "code" : "FRCDARencontre.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.confirmationRencontre",
      "target" : [{
        "code" : "FRCDARencontre.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.executant",
      "target" : [{
        "code" : "FRCDARencontre.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.auteur",
      "target" : [{
        "code" : "FRCDARencontre.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.informateur",
      "target" : [{
        "code" : "FRCDARencontre.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.participant",
      "target" : [{
        "code" : "FRCDARencontre.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRencontre.autreParticipant",
      "target" : [{
        "code" : "FRCDARencontre.participant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-rencontre",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document",
    "element" : [{
      "code" : "FRCDARencontre",
      "target" : [{
        "code" : "FREncounterDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.moodCode",
      "target" : [{
        "code" : "FREncounterDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.id",
      "target" : [{
        "code" : "FREncounterDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.code",
      "target" : [{
        "code" : "FREncounterDocument.class",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.text",
      "target" : [{
        "code" : "FREncounterDocument.class.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.effectiveTime",
      "target" : [{
        "code" : "FREncounterDocument.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.priorityCode",
      "target" : [{
        "code" : "FREncounterDocument.priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.performer",
      "target" : [{
        "code" : "FREncounterDocument.participant.individual.extension:executant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.author",
      "target" : [{
        "code" : "FREncounterDocument.participant.individual.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.informant",
      "target" : [{
        "code" : "FREncounterDocument.participant.individual.extension:informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.participant",
      "target" : [{
        "code" : "FREncounterDocument.location.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARencontre.participant",
      "target" : [{
        "code" : "FREncounterDocument.participant",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
