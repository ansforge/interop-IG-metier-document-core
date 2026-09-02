# Mapping FRLMHeaderDocument.author[x] → FRCDAAuthor → Composition.author - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHeaderDocument.author[x] → FRCDAAuthor → Composition.author 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre l'élément métier "author[x]" du modèle FRLMHeaderDocument et l'élément CDA "author"
* Mapping 2 : entre l'élément métier "author[x]" et l'élément FHIR "Composition.author"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAuthorLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAuthorLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRAuthorLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
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
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre l'élément métier \\\"author[x]\\\" du modèle FRLMHeaderDocument et l'élément CDA \\\"author\\\"\n - Mapping 2 : entre l'élément métier \\\"author[x]\\\" et l'élément FHIR \\\"Composition.author\\\" ",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-author",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHeaderDocument.author[x]",
      "target" : [{
        "code" : "Author",
        "display" : "author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author[x]",
      "target" : [{
        "code" : "Author.assignedAuthor",
        "equivalence" : "equivalent",
        "comment" : "Cas où l'auteur est de type FRLMHealthProfessional (cf. FRHealthProfessionalLMCDAFHIR), FRLMOrganisation (porté par assignedAuthor.representedOrganization, cf. FROrganisationLMCDAFHIR) ou FRLMDevice (porté par assignedAuthor.assignedAuthoringDevice, cf. FRDeviceLMCDAFHIR)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHeaderDocument.author[x]",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR. Composition.author.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR. Composition.author.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    }]
  }]
}

```
