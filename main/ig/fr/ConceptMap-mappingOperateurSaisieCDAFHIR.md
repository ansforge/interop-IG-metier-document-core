# Mapping Métier/CDA/FHIR : "Opérateur de saisie" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Opérateur de saisie" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "operateurSaisie" et l'élément CDA "dataEnterer"
* Mapping 2 : entre l'élément CDA "dataEnterer" et l'extension FHIR "DataEntererExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingOperateurSaisieCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingOperateurSaisieCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"operateurSaisie\\\" et l'élément CDA \\\"dataEnterer\\\"\n - Mapping 2 : entre l'élément CDA \\\"dataEnterer\\\" et l'extension FHIR \\\"DataEntererExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-operateur-saisie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer",
    "element" : [{
      "code" : "FRLMOperateurSaisie",
      "target" : [{
        "code" : "dataEnterer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOperateurSaisie.dateSaisie",
      "target" : [{
        "code" : "dataEnterer.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOperateurSaisie.operateurSaisie",
      "target" : [{
        "code" : "dataEnterer.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément operateurSaisie est de type PersonneStructure."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-data-enterer",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "dataEnterer",
      "target" : [{
        "code" : "DataEntererExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "dataEnterer.time",
      "target" : [{
        "code" : "DataEntererExtension.extension:time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "dataEnterer.assignedEntity",
      "target" : [{
        "code" : "DataEntererExtension.extension:party.ValueReference",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole)"
      }]
    }]
  }]
}

```
