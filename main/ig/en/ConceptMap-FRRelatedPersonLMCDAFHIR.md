# Mapping FRLMRelatedPerson → FRCDARelatedEntity → RelatedPerson - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMRelatedPerson → FRCDARelatedEntity → RelatedPerson 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMRelatedPerson" et l'élément CDA "relatedEntity"
* Mapping 2 : entre le modèle métier "FRLMRelatedPerson" et la ressource FHIR "RelatedPerson"
 
Ce mapping est réutilisé chaque fois qu'une personne liée au patient/usager (autre qu'un professionnel de santé) apparaît dans l'entête du document (informateur, destinataire, participant, etc.). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRRelatedPersonLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRRelatedPersonLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRRelatedPersonLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Personne liée au patient\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMRelatedPerson\\\" et l'élément CDA \\\"relatedEntity\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMRelatedPerson\\\" et la ressource FHIR \\\"RelatedPerson\\\"\n\nCe mapping est réutilisé chaque fois qu'une personne liée au patient/usager (autre qu'un professionnel de santé) apparaît dans l'entête du document (informateur, destinataire, participant, etc.).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-related-entity",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMRelatedPerson",
      "target" : [{
        "code" : "RelatedEntity",
        "display" : "relatedEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.identifier",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de champ id explicite porté par relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.subject",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Porté implicitement par le contexte : relatedEntity est un sous-élément du patient dans recordTarget."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.relationship",
      "target" : [{
        "code" : "RelatedEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.address",
      "target" : [{
        "code" : "RelatedEntity.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.telecom",
      "target" : [{
        "code" : "RelatedEntity.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.gender",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié au sexe de la personne liée dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.birthDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la date de naissance de la personne liée dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.deceased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié au décès de la personne liée dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.multipleBirth",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la naissance multiple de la personne liée dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.photo",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la photo de la personne liée dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.period",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la période de validité du lien dans relatedEntity."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.communication",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la langue de communication de la personne liée dans relatedEntity."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-person",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMRelatedPerson.name",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-related-person-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMRelatedPerson",
      "target" : [{
        "code" : "RelatedPerson",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.identifier",
      "target" : [{
        "code" : "RelatedPerson.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.name",
      "display" : "FRLMHumanName",
      "target" : [{
        "code" : "RelatedPerson.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.subject",
      "target" : [{
        "code" : "RelatedPerson.patient",
        "equivalence" : "equivalent",
        "comment" : "RelatedPerson.patient.resolve().ofType(Patient)"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.relationship",
      "target" : [{
        "code" : "RelatedPerson.relationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.address",
      "target" : [{
        "code" : "RelatedPerson.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.telecom",
      "target" : [{
        "code" : "RelatedPerson.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.gender",
      "target" : [{
        "code" : "RelatedPerson.gender",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.birthDate",
      "target" : [{
        "code" : "RelatedPerson.birthDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.deceased",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "RelatedPerson R4 ne porte pas nativement d'indicateur de décès."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.multipleBirth",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "RelatedPerson R4 ne porte pas nativement d'indicateur de naissance multiple."
      }]
    },
    {
      "code" : "FRLMRelatedPerson.photo",
      "target" : [{
        "code" : "RelatedPerson.photo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.period",
      "target" : [{
        "code" : "RelatedPerson.period",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.communication",
      "target" : [{
        "code" : "RelatedPerson.communication",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.communication.language",
      "target" : [{
        "code" : "RelatedPerson.communication.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRelatedPerson.communication.preferred",
      "target" : [{
        "code" : "RelatedPerson.communication.preferred",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-related-person-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHumanName.family",
      "target" : [{
        "code" : "RelatedPerson.name.family",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.given",
      "target" : [{
        "code" : "RelatedPerson.name.given",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.prefix",
      "target" : [{
        "code" : "RelatedPerson.name.prefix",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHumanName.suffix",
      "target" : [{
        "code" : "RelatedPerson.name.suffix",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
