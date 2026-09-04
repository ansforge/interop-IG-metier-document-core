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
  "name" : "FRDataEntererLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Opérateur de saisie\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMDataEnterer\\\" et l'élément CDA \\\"dataEnterer\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMDataEnterer\\\" et l'extension FHIR \\\"DataEntererExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-data-enterer",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDataEnterer",
      "target" : [{
        "code" : "DataEnterer",
        "display" : "dataEnterer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.date",
      "target" : [{
        "code" : "DataEnterer.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDataEnterer.dataEnterer[x]",
      "target" : [{
        "code" : "DataEnterer.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Cas où dataEnterer[x] référence un FRLMHealthProfessional (cf. FRHealthProfessionalLMCDAFHIR) ou un FRLMPatient (cf. FRPatientLMCDAFHIR)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer",
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
      "code" : "FRLMDataEnterer.dataEnterer[x]",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Cas où dataEnterer[x] référence un FRLMHealthProfessional (Extension.extension:party.value[x].resolve().ofType(PractitionerRole)) — cf. FRHealthProfessionalLMCDAFHIR. Cas où dataEnterer[x] référence un FRLMPatient (Extension.extension:party.value[x].resolve().ofType(Patient)) — cf. FRPatientLMCDAFHIR."
      }]
    }]
  }]
}

```
