# Mapping FRLMParticipant → FRCDAParticipant → ParticipantExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMParticipant → FRCDAParticipant → ParticipantExtension 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMParticipant" (entête) et l'élément CDA "participant"
* Mapping 2 : entre le modèle métier "FRLMParticipant" et l'extension FHIR "ParticipantExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRParticipantHeaderLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRParticipantHeaderLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Participant\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-14T14:32:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMParticipant\\\" (entête) et l'élément CDA \\\"participant\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMParticipant\\\" et l'extension FHIR \\\"ParticipantExtension\\\" ",
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
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "participant.associatedEntity.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "participant.associatedEntity.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "participant@typeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "participant.functionCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.period",
      "target" : [{
        "code" : "participant.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant:healthProfessional",
      "target" : [{
        "code" : "participant.associatedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le participant professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMParticipant.participant:organisation",
      "target" : [{
        "code" : "participant.associatedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le participant structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMParticipant.participant:device",
      "target" : [{
        "code" : "participant.associatedEntity",
        "equivalence" : "equivalent",
        "comment" : "Le participant système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "FRLMParticipant",
      "target" : [{
        "code" : "Extension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.identifier",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "relatedto",
        "comment" : "Porté par l'identifiant de la ressource référencée par extension:party.value[x], selon le type effectif du participant."
      }]
    },
    {
      "code" : "FRLMParticipant.name",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "relatedto",
        "comment" : "Porté par le nom de la ressource référencée par extension:party.value[x], selon le type effectif du participant."
      }]
    },
    {
      "code" : "FRLMParticipant.type",
      "target" : [{
        "code" : "Extension.extension:type.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.role",
      "target" : [{
        "code" : "Extension.extension:function.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.period",
      "target" : [{
        "code" : "Extension.extension:time.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMParticipant.participant:healthProfessional",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMParticipant.participant:organisation",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMParticipant.participant:device",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    }]
  }]
}

```
