# Mapping FRLMDataEnterer → FRCDADataEnterer → DataEntererExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDataEnterer → FRCDADataEnterer → DataEntererExtension 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMDataEnterer" et l'élément CDA "dataEnterer"
* Mapping 2 : entre le modèle métier "FRLMDataEnterer" et l'extension FHIR "DataEntererExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDataEntererLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDataEntererLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-20T08:45:34+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMDataEnterer\\\" et l'élément CDA \\\"dataEnterer\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMDataEnterer\\\" et l'extension FHIR \\\"DataEntererExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-data-enterer",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-data-enterer",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDataEnterer",
      "target" : [{
        "code" : "dataEnterer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.date",
      "target" : [{
        "code" : "dataEnterer.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.dataEnterer:healthProfessional",
      "target" : [{
        "code" : "dataEnterer.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'opérateur de saisie professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMDataEnterer.dataEnterer:patient",
      "target" : [{
        "code" : "dataEnterer.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'opérateur de saisie patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-data-enterer",
    "sourceVersion" : "0.1.0",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/data-enterer-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "FRLMDataEnterer",
      "target" : [{
        "code" : "Extension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.date",
      "target" : [{
        "code" : "Extension.extension:time.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.dataEnterer:healthProfessional",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMDataEnterer.dataEnterer:patient",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."
      }]
    }]
  }]
}

```
