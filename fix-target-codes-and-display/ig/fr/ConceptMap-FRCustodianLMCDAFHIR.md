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
  "title" : "Mapping Métier/CDA/FHIR : \"Structure chargée de la conservation du document\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T15:24:46+00:00",
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
        "code" : "Custodian.assignedCustodian.representedCustodianOrganization",
        "display" : "custodian.assignedCustodian.representedCustodianOrganization",
        "equivalence" : "equivalent",
        "comment" : "La structure chargée de la conservation du document est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR pour le détail de son mapping."
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
