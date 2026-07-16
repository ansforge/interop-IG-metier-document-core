# Mapping FRLMParticipantCorps -> FRCDAParticipant -> FRActorExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMParticipantCorps -> FRCDAParticipant -> FRActorExtension 

 
Mapping des éléments du modele metier FRLMParticipantCorps vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRParticipantCorpsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRParticipantCorpsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Participant\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modele metier FRLMParticipantCorps vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant-corps",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
    "element" : [{
      "code" : "FRLMParticipantCorps",
      "target" : [{
        "code" : "FRCDAParticipant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.dateEtHeureParticipation",
      "target" : [{
        "code" : "FRCDAParticipant.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.IdentifiantParticipant",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.typeParticipant",
      "target" : [{
        "code" : "FRCDAParticipant.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.adresses",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.coordonneesTelecom",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.identiteParticipant.nom",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.identiteParticipant.ProfessionSpecialite",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.identiteParticipant.description",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingEntity.desc",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.Organisation",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.scopingEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.Organisation.identifiant",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.scopingEntity.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.Organisation.code",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.scopingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.Organisation.description",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.scopingEntity.desc",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.dispositifAutomatique",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingDevice",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.categorie",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingDevice.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.nomModele",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingDevice.manufacturerModelName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipantCorps.participantRole.nomLogiciel",
      "target" : [{
        "code" : "FRCDAParticipant.participantRole.playingDevice.softwareName",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-actor-extension",
    "element" : [{
      "code" : "FRCDAParticipant",
      "target" : [{
        "code" : "FRActorExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.code",
      "target" : [{
        "code" : "FRActorExtension.extension[typeCode].value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.id",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.addr",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.telecom",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingEntity.name",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingEntity.code",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingEntity.desc",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.scopingEntity",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FROrganizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.scopingEntity.id",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FROrganizationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.scopingEntity.code",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FROrganizationDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.scopingEntity.desc",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:FROrganizationDocument.extension:description",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingDevice",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:Device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingDevice.code",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:Device.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingDevice.manufacturerModelName",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:Device.manufacturer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAParticipant.participantRole.playingDevice.softwareName",
      "target" : [{
        "code" : "FRActorExtension.extension[actor].value[x]:Device.deviceName.name",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
