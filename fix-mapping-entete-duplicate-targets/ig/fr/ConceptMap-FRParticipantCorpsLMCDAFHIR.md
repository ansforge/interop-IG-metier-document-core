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
  "name" : "FRParticipantCorpsLMCDAFHIR",
  "title" : "Mapping Metier/CDA/FHIR : \"Participant\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T15:48:56+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-participant-corps",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMParticipant",
      "target" : [{
        "code" : "Participant2",
        "display" : "FRCDAParticipant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "Participant2.typeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.period",
      "target" : [{
        "code" : "Participant2.time",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-participant-role",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "ParticipantRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "ParticipantRole.playingEntity",
        "equivalence" : "wider",
        "comment" : "playingEntity (type CDA PlayingEntity) n'est pas décomposé ; le nom y est porté globalement."
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "ParticipantRole.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantProfessional",
      "target" : [{
        "code" : "ParticipantRole.playingEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantDevice",
      "target" : [{
        "code" : "ParticipantRole.playingDevice",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantOrganisation",
      "target" : [{
        "code" : "ParticipantRole.scopingEntity",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMParticipant",
      "target" : [{
        "code" : "Extension",
        "display" : "FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "Extension.extension:typeCode.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "wider",
        "comment" : "value[x] est une simple Reference ; l'identifiant n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "wider",
        "comment" : "value[x] est une simple Reference ; le nom n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "wider",
        "comment" : "value[x] est une simple Reference ; la qualification n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
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
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FRPractitionerRoleDocument."
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantDevice",
      "target" : [{
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un Device."
      }]
    },
    {
      "code" : "FRLMParticipant.participant.participantOrganisation",
      "target" : [{
        "code" : "Extension.extension:actor.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Cas où value[x] référence un FROrganizationRoleDocument."
      }]
    }]
  }]
}

```
