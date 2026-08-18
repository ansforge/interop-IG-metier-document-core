# Mapping FRLMParticipant -> FRCDAParticipant / FRLMParticipant -> FRActorExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMParticipant -> FRCDAParticipant / FRLMParticipant -> FRActorExtension 

 
Mapping des éléments du modèle métier FRLMParticipant vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRParticipantCorpsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRParticipantCorpsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Participant\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMParticipant vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
    "element" : [{
      "code" : "FRLMParticipant",
      "target" : [{
        "code" : "FRCDAParticipant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "FRCDAParticipant.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.period",
      "target" : [{
        "code" : "FRCDAParticipant.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantProfessional",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantDevice",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingDevice",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantOrganisation",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.scopingEntity",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-actor-extension",
    "element" : [{
      "code" : "FRLMParticipant",
      "target" : [{
        "code" : "FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "FRActorExtension.extension[typeCode].value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.period",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Période sans équivalent direct dans l'extension FRActorExtension."
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantProfessional",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantDevice",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:Device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantOrganisation",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FROrganizationRoleDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
