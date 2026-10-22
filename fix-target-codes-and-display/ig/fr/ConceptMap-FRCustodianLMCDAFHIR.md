# Mapping FRLMHeaderDocument.custodian → FRCDACustodian → Composition.custodian - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHeaderDocument.custodian → FRCDACustodian → Composition.custodian 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre l'élément métier "custodian" du modèle FRLMHeaderDocument et l'élément CDA "custodian"
* Mapping 2 : entre l'élément métier "custodian" et l'élément FHIR "Composition.custodian"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRCustodianLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRCustodianLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRCustodianLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T08:09:30+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre l'élément métier \\\"custodian\\\" du modèle FRLMHeaderDocument et l'élément CDA \\\"custodian\\\"\n - Mapping 2 : entre l'élément métier \\\"custodian\\\" et l'élément FHIR \\\"Composition.custodian\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-custodian",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHeaderDocument.custodian",
      "target" : [{
        "code" : "Custodian.assignedCustodian",
        "equivalence" : "equivalent",
        "comment" : "La structure chargée de la conservation du document est de type FRLMOrganisation ; cf. le groupe dédié ci-dessous pour le détail de son mapping vers fr-cda-represented-custodian-organization."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-represented-custodian-organization",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrganisation.identifier",
      "target" : [{
        "code" : "CustodianOrganization.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.name",
      "target" : [{
        "code" : "CustodianOrganization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.address",
      "target" : [{
        "code" : "CustodianOrganization.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrganisation.telecom",
      "target" : [{
        "code" : "CustodianOrganization.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHeaderDocument.custodian",
      "target" : [{
        "code" : "Composition.custodian",
        "equivalence" : "equivalent",
        "comment" : "Composition.custodian.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    }]
  }]
}

```
