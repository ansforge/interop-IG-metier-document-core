# Mapping Métier/CDA/FHIR : "Informateur" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Informateur" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "informateur" et l'élément CDA "informant"
* Mapping 2 : entre l'élément CDA "informant" et l'extension FHIR "InformantExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingInformateurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingInformateurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"informateur\\\" et l'élément CDA \\\"informant\\\"\n - Mapping 2 : entre l'élément CDA \\\"informant\\\" et l'extension FHIR \\\"InformantExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informateur",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-informant",
    "element" : [{
      "code" : "FRLMInformateur",
      "target" : [{
        "code" : "informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformateur.informateur",
      "target" : [{
        "code" : "informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément informateur est de type PersonneStructure."
      }]
    },
    {
      "code" : "FRLMInformateur.informateur",
      "target" : [{
        "code" : "informant.relatedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'élément informateur est de type PersonneStructure."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-informant",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "informant",
      "target" : [{
        "code" : "extension:InformantExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "informant.assignedEntity",
      "target" : [{
        "code" : "extension:InformantExtension.extension:party.ValueReference",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(PractitionerRole or Patient)"
      }]
    },
    {
      "code" : "informant.relatedEntity",
      "target" : [{
        "code" : "extension:InformantExtension.extension:party.ValueReference",
        "equivalence" : "equivalent",
        "comment" : "extension:party.ValueReference.resolve().ofType(RelatedPerson)"
      }]
    }]
  }]
}

```
