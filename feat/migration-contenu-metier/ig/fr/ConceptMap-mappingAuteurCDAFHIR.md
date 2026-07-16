# Mapping Métier/CDA/FHIR : "Auteur" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Auteur" 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "Auteur" et l'élément CDA "author"
* Mapping 2 : entre l'élément CDA "author" et l'élément FHIR "Composition.author"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingAuteurCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingAuteurCDAFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"Auteur\\\" et l'élément CDA \\\"author\\\"\n - Mapping 2 : entre l'élément CDA \\\"author\\\" et l'élément FHIR \\\"Composition.author\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-auteur",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author",
    "element" : [{
      "code" : "FRLMAuteur",
      "target" : [{
        "code" : "author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAuteur.roleFonctionnel",
      "target" : [{
        "code" : "author.functionCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAuteur.horodatageParticipation",
      "target" : [{
        "code" : "author.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAuteur.FRLMPersonneStructure",
      "target" : [{
        "code" : "author.assignedAuthor",
        "equivalence" : "equivalent",
        "comment" : "L'élément PersonneStructure est de type PersonneStructure."
      }]
    },
    {
      "code" : "FRLMAuteur.FRLMSystemeStructureAuteur",
      "target" : [{
        "code" : "author.assignedAuthor",
        "equivalence" : "equivalent",
        "comment" : "L'élément SystemeStructureAuteur est de type Systeme"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "author",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "author.time",
      "target" : [{
        "code" : "Composition.author.extension:time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "author.functionCode",
      "target" : [{
        "code" : "Composition.author.PractitionerRole.code",
        "equivalence" : "equivalent",
        "comment" : "Auteur du document est un professionnel et author.ofType(PractitionerRole)"
      }]
    },
    {
      "code" : "author.assignedAuthor",
      "target" : [{
        "code" : "Composition.author.Practitioner",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(Practitioner)"
      }]
    },
    {
      "code" : "author.assignedAuthor",
      "target" : [{
        "code" : "Composition.author.Patient",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(Patient)"
      }]
    },
    {
      "code" : "author.assignedAuthor",
      "target" : [{
        "code" : "Composition.author.Device",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(Device)"
      }]
    }]
  }]
}

```
