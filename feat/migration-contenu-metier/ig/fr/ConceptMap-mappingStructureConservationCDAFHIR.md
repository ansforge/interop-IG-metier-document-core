# Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Structure chargée de la conservation du document" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "structureConservation" et l'élément CDA "custodian"
* Mapping 2 : entre l'élément CDA "custodian" et l'élément FHIR "Composition.custodian"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingStructureConservationCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingStructureConservationCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"structureConservation\\\" et l'élément CDA \\\"custodian\\\"\n - Mapping 2 : entre l'élément CDA \\\"custodian\\\" et l'élément FHIR \\\"Composition.custodian\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-structure-conservation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian",
    "element" : [{
      "code" : "FRLMStructureConservation",
      "target" : [{
        "code" : "custodian",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStructureConservation.structure",
      "target" : [{
        "code" : "custodian.assignedCustodian",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStructureConservation.structure.identifiantStructure",
      "target" : [{
        "code" : "custodian.assignedCustodian.representedCustodianOrganization.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStructureConservation.structure.nomStructure",
      "target" : [{
        "code" : "custodian.assignedCustodian.representedCustodianOrganization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStructureConservation.structure.adresse",
      "target" : [{
        "code" : "custodian.assignedCustodian.representedCustodianOrganization.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMStructureConservation.structure.coordonneesTelecom",
      "target" : [{
        "code" : "custodian.assignedCustodian.representedCustodianOrganization.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-custodian",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "custodian",
      "target" : [{
        "code" : "Composition.custodian",
        "equivalence" : "equivalent",
        "comment" : "Composition.custodian.resolve().ofType(Organization)"
      }]
    },
    {
      "code" : "custodian.assignedCustodian",
      "target" : [{
        "code" : "Composition.custodian.organization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "custodian.assignedCustodian.representedCustodianOrganization.id",
      "target" : [{
        "code" : "Composition.custodian.organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "custodian.assignedCustodian.representedCustodianOrganization.name",
      "target" : [{
        "code" : "Composition.custodian.organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "custodian.assignedCustodian.representedCustodianOrganization.addr",
      "target" : [{
        "code" : "Composition.custodian.organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "custodian.assignedCustodian.representedCustodianOrganization.telecom",
      "target" : [{
        "code" : "Composition.custodian.organization.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
