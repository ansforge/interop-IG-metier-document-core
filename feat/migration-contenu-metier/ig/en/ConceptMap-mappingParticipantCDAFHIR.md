# Mapping Métier/CDA/FHIR : "Participant" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Participant" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "participant" et l'élément CDA "participant"
* Mapping 2 : entre l'élément CDA "participant" et l'extension FHIR "ParticipantExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingParticipantCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingParticipantCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Participant\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Participant\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"participant\\\" et l'élément CDA \\\"participant\\\"\n - Mapping 2 : entre l'élément CDA \\\"participant\\\" et l'extension FHIR \\\"ParticipantExtension\\\" ",
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
        "code" : "participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.typeParticipation",
      "target" : [{
        "code" : "participant@typeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.roleFonctionnel",
      "target" : [{
        "code" : "participant.functionCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.dateDebutEtOuFinParticipation",
      "target" : [{
        "code" : "participant.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant",
      "target" : [{
        "code" : "participant.associatedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément participant est de type PersonneStructure"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "participant",
      "target" : [{
        "code" : "extension:ParticipantExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant@typeCode",
      "target" : [{
        "code" : "extension:ParticipantExtension.extention:type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.functionCode",
      "target" : [{
        "code" : "extension:ParticipantExtension.extention:function.coding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.time",
      "target" : [{
        "code" : "extension:ParticipantExtension.extention:time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity",
      "target" : [{
        "code" : "extension:ParticipantExtension.party",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "participant.associatedEntity@classCode",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.qualification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.id",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.identifier",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole).practitioner.resolve()"
      }]
    },
    {
      "code" : "participant.associatedEntity.code",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.qualification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.addr",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.telecom",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.name",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.name.family",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.name.given",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.name.prefix",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.name.suffix",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.scopingOrganization",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole).organization.resolve()"
      }]
    },
    {
      "code" : "participant.associatedEntity.scopingOrganization.id",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.scopingOrganization.name",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.scopingOrganization.telecom",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "participant.associatedEntity.scopingOrganization.addr",
      "target" : [{
        "code" : "extension:ParticipantExtension.party.PractitionerRole.Organization.address",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
