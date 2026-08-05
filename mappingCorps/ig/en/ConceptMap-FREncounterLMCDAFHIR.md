# Mapping FRLMEncounter → FRCDARencontre / FRLMEncounter → FREncounterDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEncounter → FRCDARencontre / FRLMEncounter → FREncounterDocument 

 
Mapping des éléments du modèle métier FRLMEncounter vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FREncounterLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FREncounterLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Encounter\"",
  "status" : "draft",
  "date" : "2026-08-05T09:34:27+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMEncounter vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-encounter",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-rencontre",
    "element" : [{
      "code" : "FRLMEncounter",
      "target" : [{
        "code" : "FRCDARencontre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.identifier",
      "target" : [{
        "code" : "FRCDARencontre.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.status",
      "target" : [{
        "code" : "FRCDARencontre.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.author[x]",
      "target" : [{
        "code" : "FRCDARencontre.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "FRCDARencontre.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.type",
      "target" : [{
        "code" : "FRCDARencontre.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.period",
      "target" : [{
        "code" : "FRCDARencontre.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.priority",
      "target" : [{
        "code" : "FRCDARencontre.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "FRCDARencontre.participant:autresParticipants",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceProvider",
      "target" : [{
        "code" : "FRCDARencontre.performer.assignedEntity.representedOrganization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.referringProfessional",
      "target" : [{
        "code" : "FRCDARencontre.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.basedOn[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite de basedOn[x] dans le profil CDA FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.reason[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite de reason[x] dans le profil CDA FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.admission",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Admission sans correspondance directe explicite dans le profil CDA FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitter",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'attribut CDA explicite pour l'admetteur dans le profil FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitSource",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'attribut CDA explicite pour admitSource dans le profil FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDiagnosis[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance explicite pour dischargeDiagnosis[x] dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "dischargeDestination sans correspondance directe explicite dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.type",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'attribut CDA explicite pour le type de sortie dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.location[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'attribut CDA explicite pour la destination de sortie dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation",
      "target" : [{
        "code" : "FRCDARencontre.participant:lieuExecution",
        "equivalence" : "relatedto",
        "comment" : "Les lieux de service sont rapprochés des participants de type lieu en CDA."
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.period",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas d'attribut CDA explicite pour la période de serviceLocation dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.organisationPart[x]",
      "target" : [{
        "code" : "FRCDARencontre.participant:lieuExecution",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEncounter.subEncounter",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance explicite de subEncounter dans FRCDARencontre."
      }]
    },
    {
      "code" : "FRLMEncounter.note",
      "target" : [{
        "code" : "FRCDARencontre.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-encounter",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-encounter-document",
    "element" : [{
      "code" : "FRLMEncounter",
      "target" : [{
        "code" : "FREncounterDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.identifier",
      "target" : [{
        "code" : "FREncounterDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.status",
      "target" : [{
        "code" : "FREncounterDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.author[x]",
      "target" : [{
        "code" : "FREncounterDocument.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.type",
      "target" : [{
        "code" : "FREncounterDocument.class",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.period",
      "target" : [{
        "code" : "FREncounterDocument.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.priority",
      "target" : [{
        "code" : "FREncounterDocument.priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "FREncounterDocument.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceProvider",
      "target" : [{
        "code" : "FREncounterDocument.serviceProvider",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.referringProfessional",
      "target" : [{
        "code" : "FREncounterDocument.participant.individual",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.basedOn[x]",
      "target" : [{
        "code" : "FREncounterDocument.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.reason[x]",
      "target" : [{
        "code" : "FREncounterDocument.reasonCode",
        "equivalence" : "relatedto",
        "comment" : "reason[x] peut alimenter reasonCode ou reasonReference selon le type porté."
      }]
    },
    {
      "code" : "FRLMEncounter.admission",
      "target" : [{
        "code" : "FREncounterDocument.hospitalization",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitter",
      "target" : [{
        "code" : "FREncounterDocument.participant.individual",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitSource",
      "target" : [{
        "code" : "FREncounterDocument.hospitalization.admitSource",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDiagnosis[x]",
      "target" : [{
        "code" : "FREncounterDocument.diagnosis.condition",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.type",
      "target" : [{
        "code" : "FREncounterDocument.hospitalization.dischargeDisposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.location[x]",
      "target" : [{
        "code" : "FREncounterDocument.hospitalization.destination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation",
      "target" : [{
        "code" : "FREncounterDocument.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.period",
      "target" : [{
        "code" : "FREncounterDocument.location.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.organisationPart[x]",
      "target" : [{
        "code" : "FREncounterDocument.location.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.subEncounter",
      "target" : [{
        "code" : "FREncounterDocument.partOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.note",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Encounter R4 ne porte pas d'élément natif note."
      }]
    }]
  }]
}

```
