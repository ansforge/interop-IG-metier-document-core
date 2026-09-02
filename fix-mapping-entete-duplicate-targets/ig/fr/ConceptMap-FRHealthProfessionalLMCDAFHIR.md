# Mapping FRLMHealthProfessional → FRCDAAssignedEntity/FRCDAAssignedAuthor → FrPractitionerRoleDocument / FrPractitionerDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHealthProfessional → FRCDAAssignedEntity/FRCDAAssignedAuthor → FrPractitionerRoleDocument / FrPractitionerDocument 

 
Ce ConceptMap présente trois groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMHealthProfessional" et les éléments CDA "assignedEntity"/"assignedAuthor"
* Mapping 2 : entre le modèle métier "FRLMHealthProfessional" et le profil FHIR "FrPractitionerRoleDocument"
* Mapping 3 : entre le modèle métier "FRLMHealthProfessional" et le profil FHIR "FrPractitionerDocument" (référencé depuis PractitionerRole.practitioner)
 
Ce mapping est réutilisé chaque fois qu'un professionnel de santé apparaît dans l'entête du document (auteur, responsable, validateur, opérateur de saisie, informateur, participant, destinataire, prescripteur, professionnel référent d'une prise en charge, etc.). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRHealthProfessionalLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRHealthProfessionalLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRHealthProfessionalLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Professionnel de santé\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente trois groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMHealthProfessional\\\" et les éléments CDA \\\"assignedEntity\\\"/\\\"assignedAuthor\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMHealthProfessional\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\"\n - Mapping 3 : entre le modèle métier \\\"FRLMHealthProfessional\\\" et le profil FHIR \\\"FrPractitionerDocument\\\" (référencé depuis PractitionerRole.practitioner)\n\nCe mapping est réutilisé chaque fois qu'un professionnel de santé apparaît dans l'entête du document (auteur, responsable, validateur, opérateur de saisie, informateur, participant, destinataire, prescripteur, professionnel référent d'une prise en charge, etc.).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-entity",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHealthProfessional",
      "target" : [{
        "code" : "AssignedEntity",
        "display" : "assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "assignedEntity et assignedAuthor (porté par ClinicalDocument.author) partagent une structure CDA équivalente pour représenter un professionnel de santé."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.identifier",
      "target" : [{
        "code" : "AssignedEntity.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.name",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "AssignedEntity.assignedPerson référence le profil CDA SÉPARÉ fr-cda-assigned-person ; cf. groupes dédiés ci-dessous."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.address",
      "target" : [{
        "code" : "AssignedEntity.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.telecom",
      "target" : [{
        "code" : "AssignedEntity.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.role",
      "target" : [{
        "code" : "AssignedEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.organisation",
      "target" : [{
        "code" : "AssignedEntity.representedOrganization",
        "equivalence" : "equivalent",
        "comment" : "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure d'exercice."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.specialty",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la spécialité ; elle est portée par assignedEntity.code selon le contexte."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-person",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHealthProfessional.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "Person.name",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-name",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHumanName.use",
      "target" : [{
        "code" : "PN.use",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.family",
      "target" : [{
        "code" : "PN.item.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.given",
      "target" : [{
        "code" : "PN.item.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.prefix",
      "target" : [{
        "code" : "PN.item.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.suffix",
      "target" : [{
        "code" : "PN.item.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.period",
      "target" : [{
        "code" : "PN.validTime",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHealthProfessional",
      "target" : [{
        "code" : "PractitionerRole",
        "equivalence" : "equivalent",
        "comment" : "PractitionerRole ne porte que le rôle d'exercice ; l'identité de la personne (identifiant, nom, adresse, télécom) est portée par PractitionerRole.practitioner, cf. le groupe de mapping suivant vers FrPractitionerDocument."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.role",
      "target" : [{
        "code" : "PractitionerRole.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.organisation",
      "target" : [{
        "code" : "PractitionerRole.organization",
        "equivalence" : "equivalent",
        "comment" : "PractitionerRole.organization.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.professionalRole.specialty",
      "target" : [{
        "code" : "PractitionerRole.specialty",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHealthProfessional",
      "target" : [{
        "code" : "Practitioner",
        "equivalence" : "equivalent",
        "comment" : "Référencé depuis PractitionerRole.practitioner."
      }]
    },
    {
      "code" : "FRLMHealthProfessional.identifier",
      "target" : [{
        "code" : "Practitioner.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.address",
      "target" : [{
        "code" : "Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHealthProfessional.telecom",
      "target" : [{
        "code" : "Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHumanName.family",
      "target" : [{
        "code" : "Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.given",
      "target" : [{
        "code" : "Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.prefix",
      "target" : [{
        "code" : "Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.suffix",
      "target" : [{
        "code" : "Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
