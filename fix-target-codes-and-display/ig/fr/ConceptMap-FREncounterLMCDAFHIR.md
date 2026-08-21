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
  "date" : "2026-08-21T08:13:05+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-rencontre",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMEncounter",
      "target" : [{
        "code" : "Encounter",
        "display" : "FRCDARencontre",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.identifier",
      "target" : [{
        "code" : "Encounter.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.status",
      "target" : [{
        "code" : "Encounter.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.author[x]",
      "target" : [{
        "code" : "Encounter.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "Encounter.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.type",
      "target" : [{
        "code" : "Encounter.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.period",
      "target" : [{
        "code" : "Encounter.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.priority",
      "target" : [{
        "code" : "Encounter.priorityCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "Encounter.participant:autresParticipants",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceProvider",
      "target" : [{
        "code" : "Encounter.performer.assignedEntity.representedOrganization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.referringProfessional",
      "target" : [{
        "code" : "Encounter.performer",
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
        "code" : "Encounter.participant:lieuExecution",
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
        "code" : "Encounter.participant:lieuExecution",
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
        "code" : "Encounter.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMEncounter",
      "target" : [{
        "code" : "Encounter",
        "display" : "FREncounterDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.identifier",
      "target" : [{
        "code" : "Encounter.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.status",
      "target" : [{
        "code" : "Encounter.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.header.author[x]",
      "target" : [{
        "code" : "Encounter.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.type",
      "target" : [{
        "code" : "Encounter.class",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.period",
      "target" : [{
        "code" : "Encounter.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.priority",
      "target" : [{
        "code" : "Encounter.priority",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.participant",
      "target" : [{
        "code" : "Encounter.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceProvider",
      "target" : [{
        "code" : "Encounter.serviceProvider",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.referringProfessional",
      "target" : [{
        "code" : "Encounter.participant.individual",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.basedOn[x]",
      "target" : [{
        "code" : "Encounter.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.reason[x]",
      "target" : [{
        "code" : "Encounter.reasonCode",
        "equivalence" : "relatedto",
        "comment" : "reason[x] peut alimenter reasonCode ou reasonReference selon le type porté."
      }]
    },
    {
      "code" : "FRLMEncounter.admission",
      "target" : [{
        "code" : "Encounter.hospitalization",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitter",
      "target" : [{
        "code" : "Encounter.participant.individual",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.admission.admitSource",
      "target" : [{
        "code" : "Encounter.hospitalization.admitSource",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDiagnosis[x]",
      "target" : [{
        "code" : "Encounter.diagnosis.condition",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.type",
      "target" : [{
        "code" : "Encounter.hospitalization.dischargeDisposition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.dischargeDestination.location[x]",
      "target" : [{
        "code" : "Encounter.hospitalization.destination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation",
      "target" : [{
        "code" : "Encounter.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.period",
      "target" : [{
        "code" : "Encounter.location.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.serviceLocation.organisationPart[x]",
      "target" : [{
        "code" : "Encounter.location.location",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEncounter.subEncounter",
      "target" : [{
        "code" : "Encounter.partOf",
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
