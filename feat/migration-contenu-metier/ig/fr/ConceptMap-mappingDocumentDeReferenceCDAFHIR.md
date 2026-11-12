# Mapping Métier/CDA/FHIR : "DocumentDeReference" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "DocumentDeReference" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "documentDeReference" et l'élément CDA "relatedDocument"
* Mapping 2 : entre l'élément CDA "relatedDocument" et l'élément FHIR "Composition.relatesTo"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingDocumentDeReferenceCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingDocumentDeReferenceCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"DocumentDeReference\"",
  "title" : "Mapping Métier/CDA/FHIR : \"DocumentDeReference\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"documentDeReference\\\" et l'élément CDA \\\"relatedDocument\\\"\n - Mapping 2 : entre l'élément CDA \\\"relatedDocument\\\" et l'élément FHIR \\\"Composition.relatesTo\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-reference",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document",
    "element" : [{
      "code" : "FRLMDocumentDeReference",
      "target" : [{
        "code" : "relatedDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentDeReference.typeReference",
      "target" : [{
        "code" : "relatedDocument@typeCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentDeReference.identifiantUniqueDocument",
      "target" : [{
        "code" : "relatedDocument.parentDocument.id",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-related-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "relatedDocument",
      "target" : [{
        "code" : "Composition.relatesTo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedDocument@typeCode",
      "target" : [{
        "code" : "Composition.relatesTo.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "relatedDocument.parentDocument.id",
      "target" : [{
        "code" : "Composition.relatesTo.targetIdentifier",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
