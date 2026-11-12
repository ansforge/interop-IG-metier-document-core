# Mapping Métier/CDA/FHIR : "Validateur" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Validateur" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "validateur" et l'élément CDA "authenticator"
* Mapping 2 : entre l'élément CDA "authenticator" et l'élément FHIR "Composition.attester"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingValidateurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingValidateurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Validateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"validateur\\\" et l'élément CDA \\\"authenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"authenticator\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-validateur",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator",
    "element" : [{
      "code" : "FRLMValidateur",
      "target" : [{
        "code" : "authenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMValidateur.dateHeureAttestationValidite",
      "target" : [{
        "code" : "authenticator.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMValidateur.validateur",
      "target" : [{
        "code" : "authenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément validateur est de type : PersonneStructure"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-authenticator",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "authenticator",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.where(mode='professional')"
      }]
    },
    {
      "code" : "authenticator.time",
      "target" : [{
        "code" : "Composition.attester.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.id",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.identifier",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.code",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.qualification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.addr",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.telecom",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.name",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.name.family",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.name.given",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.name.prefix",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.name.suffix",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization.id",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization.name",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization.telecom",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization.addr",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "authenticator.assignedEntity.representedOrganization.standardIndustryClassCode",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.type",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
