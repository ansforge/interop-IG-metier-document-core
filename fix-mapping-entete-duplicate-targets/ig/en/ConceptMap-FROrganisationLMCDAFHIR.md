# Mapping FRLMOrganisation → FRCDAAssignedEntity.representedOrganization → Organization - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMOrganisation → FRCDAAssignedEntity.representedOrganization → Organization 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMOrganisation" et la structure CDA générique portant une organisation
* Mapping 2 : entre le modèle métier "FRLMOrganisation" et la ressource FHIR "Organization"
 
Ce mapping est réutilisé chaque fois qu'une structure apparaît dans l'entête du document (structure d'exercice d'un professionnel de santé, structure de conservation, structure destinataire, structure informatrice, structure participante, organisation prescriptrice, organisation responsable d'une prise en charge, etc.). 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FROrganisationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FROrganisationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FROrganisationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Structure\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMOrganisation\\\" et la structure CDA générique portant une organisation\n - Mapping 2 : entre le modèle métier \\\"FRLMOrganisation\\\" et la ressource FHIR \\\"Organization\\\"\n\nCe mapping est réutilisé chaque fois qu'une structure apparaît dans l'entête du document (structure d'exercice d'un professionnel de santé, structure de conservation, structure destinataire, structure informatrice, structure participante, organisation prescriptrice, organisation responsable d'une prise en charge, etc.).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-entity",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrganisation",
      "target" : [{
        "code" : "AssignedEntity.representedOrganization",
        "display" : "assignedEntity.representedOrganization",
        "equivalence" : "equivalent",
        "comment" : "Structure CDA générique reprise dans toutes les occurrences d'organisation (representedOrganization, representedCustodianOrganization, scopingOrganization, receivedOrganization, healthcareFacility.location, etc.), ici illustrée via assignedEntity.representedOrganization."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-represented-organization",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrganisation.identifier",
      "target" : [{
        "code" : "Organization.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.type",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la catégorie d'établissement, distinct du secteur d'activité."
      }]
    },
    {
      "code" : "FRLMOrganisation.name",
      "target" : [{
        "code" : "Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.address",
      "target" : [{
        "code" : "Organization.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.telecom",
      "target" : [{
        "code" : "Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.partOf",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à l'organisation parente dans representedOrganization."
      }]
    },
    {
      "code" : "FRLMOrganisation.industrySector",
      "target" : [{
        "code" : "Organization.standardIndustryClassCode",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
    "sourceVersion" : "0.1.0",
    "target" : "http://hl7.org/fhir/StructureDefinition/Organization",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "FRLMOrganisation",
      "target" : [{
        "code" : "Organization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.identifier",
      "target" : [{
        "code" : "Organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.type",
      "target" : [{
        "code" : "Organization.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.name",
      "target" : [{
        "code" : "Organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.address",
      "target" : [{
        "code" : "Organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.telecom",
      "target" : [{
        "code" : "Organization.telecom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.partOf",
      "target" : [{
        "code" : "Organization.partOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.industrySector",
      "target" : [{
        "code" : "Organization.type",
        "equivalence" : "relatedto",
        "comment" : "Organization.type est 0..* : type et industrySector y sont tous deux portés, avec des codifications différentes."
      }]
    }]
  }]
}

```
