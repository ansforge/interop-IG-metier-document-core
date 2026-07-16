# Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (Auteur)" 

 
Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "PersonneStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrPractitionerRoleDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureAuteurFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingPersonneStructureAuteurFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (Auteur)\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap de l'élément PersonneStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"PersonneStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrPractitionerRoleDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure-auteur",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
    "element" : [{
      "code" : "FRLMPersonneStructureAuteur",
      "target" : [{
        "code" : "assignedAuthor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.identifiantPersonne",
      "target" : [{
        "code" : "assignedAuthor.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.professionRole",
      "target" : [{
        "code" : "assignedAuthor.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.adresse",
      "target" : [{
        "code" : "assignedAuthor.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.coordonneesTelecom",
      "target" : [{
        "code" : "assignedAuthor.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne",
      "target" : [{
        "code" : "assignedAuthor.assignedPerson",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.nomPersonne",
      "target" : [{
        "code" : "assignedAuthor.assignedPerson.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.prenomPersonne",
      "target" : [{
        "code" : "assignedAuthor.assignedPerson.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.civilite",
      "target" : [{
        "code" : "assignedAuthor.assignedPerson.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.personne.IdentitePersonne.titre",
      "target" : [{
        "code" : "assignedAuthor.assignedPerson.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure.identifiantStructure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure.nomStructure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure.adresse",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure.coordonneesTelecom",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructureAuteur.structure.secteurActivite",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-practitionerRole-document",
    "element" : [{
      "code" : "assignedAuthor",
      "target" : [{
        "code" : "PractitionerRole.Practitioner",
        "equivalence" : "equivalent",
        "comment" : "PractitionerRole.practitioner.resolve().ofType(Practitioner)"
      }]
    },
    {
      "code" : "assignedAuthor.id",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.code",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.qualification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.addr",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.telecom",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedPerson.name",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedPerson.name.family",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedPerson.name.given",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedPerson.name.prefix",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedPerson.name.suffix",
      "target" : [{
        "code" : "PractitionerRole.Practitioner.name.suffix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization",
      "target" : [{
        "code" : "PractitionerRole.Organization",
        "equivalence" : "equivalent",
        "comment" : "PractitionerRole.organization.resolve().ofType(Organization)"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.id",
      "target" : [{
        "code" : "PractitionerRole.Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.name",
      "target" : [{
        "code" : "PractitionerRole.Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.addr",
      "target" : [{
        "code" : "PractitionerRole.Organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.telecom",
      "target" : [{
        "code" : "PractitionerRole.Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.standardIndustryClassCode",
      "target" : [{
        "code" : "PractitionerRole.Organization.type",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
