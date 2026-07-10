# Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Personne / Structure (RelatedEntity)" 

 
Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping: 
* Mapping 1 : entre le modèle métier "FRLMPersonneStructure" et l'élément CDA "relatedEntity"
* Mapping 2 : entre l'élément CDA "relatedEntity" et le profil FHIR "FrRelatedPersonDocument"
* Mapping 3 : entre l'élément CDA "relatedEntity" et l'élément FHIR "Patient.contact"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingPersonneStructureRelatedEntityFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingPersonneStructureRelatedEntityFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (RelatedEntity)\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne / Structure (RelatedEntity)\"",
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
  "description" : "Ce ConceptMap de l'élément PersonneStructure présente trois groupes de mapping: \n - Mapping 1 : entre le modèle métier \\\"FRLMPersonneStructure\\\" et l'élément CDA \\\"relatedEntity\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedEntity\\\" et le profil FHIR \\\"FrRelatedPersonDocument\\\"\n - Mapping 3 : entre l'élément CDA \\\"relatedEntity\\\" et l'élément FHIR \\\"Patient.contact\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-personne-structure",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
    "element" : [{
      "code" : "FRLMPersonneStructure",
      "target" : [{
        "code" : "relatedEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.professionRole",
      "target" : [{
        "code" : "relatedEntity@classCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.lien",
      "target" : [{
        "code" : "relatedEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.adresse",
      "target" : [{
        "code" : "relatedEntity.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.coordonneesTelecom",
      "target" : [{
        "code" : "relatedEntity.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.IdentitePersonne",
      "target" : [{
        "code" : "relatedEntity.relatedPerson",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.IdentitePersonne.nomPersonne",
      "target" : [{
        "code" : "relatedEntity.relatedPerson.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.IdentitePersonne.prenomPersonne",
      "target" : [{
        "code" : "relatedEntity.relatedPerson.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.IdentitePersonne.civilite",
      "target" : [{
        "code" : "relatedEntity.relatedPerson.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPersonneStructure.personne.IdentitePersonne.titre",
      "target" : [{
        "code" : "relatedEntity.relatedPerson.name.suffix",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-related-person-document",
    "element" : [{
      "code" : "relatedEntity",
      "target" : [{
        "code" : "RelatedPerson",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity@classCode",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "relatedEntity.code",
      "target" : [{
        "code" : "RelatedPerson.relationship.coding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.addr",
      "target" : [{
        "code" : "RelatedPerson.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.telecom",
      "target" : [{
        "code" : "RelatedPerson.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson",
      "target" : [{
        "code" : "RelatedPerson.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.family",
      "target" : [{
        "code" : "RelatedPerson.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.given",
      "target" : [{
        "code" : "RelatedPerson.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.prefix",
      "target" : [{
        "code" : "RelatedPerson.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.suffix",
      "target" : [{
        "code" : "RelatedPerson.name.suffix",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-entity",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-patient-fhir-document",
    "element" : [{
      "code" : "relatedEntity",
      "target" : [{
        "code" : "Patient.contact",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity@classCode",
      "target" : [{
        "code" : "Patient.contact.relationship:Role",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.code",
      "target" : [{
        "code" : "Patient.contact.relationship:RelationType.coding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.addr",
      "target" : [{
        "code" : "Patient.contact.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.telecom",
      "target" : [{
        "code" : "Patient.contact.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name",
      "target" : [{
        "code" : "Patient.contact.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.family",
      "target" : [{
        "code" : "Patient.contact.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.given",
      "target" : [{
        "code" : "Patient.contact.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.prefix",
      "target" : [{
        "code" : "Patient.contact.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedEntity.relatedPerson.name.suffix",
      "target" : [{
        "code" : "Patient.contact.name.suffix",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
