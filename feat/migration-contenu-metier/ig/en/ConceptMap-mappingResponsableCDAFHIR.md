# Mapping Métier/CDA/FHIR : "Responsable du document" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Responsable du document" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "responsable" et l'élément CDA "legalAuthenticator"
* Mapping 2 : entre l'élément CDA "legalAuthenticator" et l'élément FHIR "Composition.attester"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingResponsableCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingResponsableCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Responsable du document\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"responsable\\\" et l'élément CDA \\\"legalAuthenticator\\\"\n - Mapping 2 : entre l'élément CDA \\\"legalAuthenticator\\\" et l'élément FHIR \\\"Composition.attester\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-responsable",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-legal-authenticator",
    "element" : [{
      "code" : "FRLMResponsable",
      "target" : [{
        "code" : "legalAuthenticator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResponsable.dateHeureAttestationPriseResponsabilite",
      "target" : [{
        "code" : "legalAuthenticator.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResponsable.responsable",
      "target" : [{
        "code" : "legalAuthenticator.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément responsable est de type PersonneStructure."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-legal-authenticator",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "legalAuthenticator",
      "target" : [{
        "code" : "Composition.attester",
        "equivalence" : "equivalent",
        "comment" : "attester.where(mode='legal')"
      }]
    },
    {
      "code" : "legalAuthenticator.time",
      "target" : [{
        "code" : "Composition.attester.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.id",
      "target" : [{
        "code" : "Composition.attester.party.Practitioner.identifier",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole).practitioner.resolve()"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.code",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.qualification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.addr",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.telecom",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.name",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.name.family",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.name.given",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.name.prefix",
      "target" : [{
        "code" : "Composition.attester.party.Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.name.suffix",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization",
        "equivalence" : "equivalent",
        "comment" : "attester.party.resolve().ofType(PractitionerRole).organization.resolve()"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization.id",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization.name",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization.telecom",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization.addr",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "legalAuthenticator.assignedEntity.representedOrganization.standardIndustryClassCode",
      "target" : [{
        "code" : "Composition.attester.party.PractitionerRole.Organization.type",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
