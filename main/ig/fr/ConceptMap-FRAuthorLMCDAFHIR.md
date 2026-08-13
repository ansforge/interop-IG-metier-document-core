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
  "title" : "Mapping Métier/CDA/FHIR : \"Auteur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-13T14:36:19+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-header-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-author",
    "element" : [{
      "code" : "FRLMHeaderDocument.author",
      "target" : [{
        "code" : "author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:healthProfessional",
      "target" : [{
        "code" : "author.assignedAuthor",
        "equivalence" : "equivalent",
        "comment" : "L'auteur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:organisation",
      "target" : [{
        "code" : "author.assignedAuthor",
        "equivalence" : "equivalent",
        "comment" : "L'auteur structure est de type FRLMOrganisation, porté par assignedAuthor.representedOrganization, cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:device",
      "target" : [{
        "code" : "author.assignedAuthor.assignedAuthoringDevice",
        "equivalence" : "equivalent",
        "comment" : "L'auteur système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-header-document",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMHeaderDocument.author",
      "target" : [{
        "code" : "Composition.author",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(PractitionerRole or Organization or Device)"
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:healthProfessional",
      "target" : [{
        "code" : "Composition.author.PractitionerRole",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:organisation",
      "target" : [{
        "code" : "Composition.author.Organization",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMHeaderDocument.author:device",
      "target" : [{
        "code" : "Composition.author.Device",
        "equivalence" : "equivalent",
        "comment" : "Composition.author.resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
      }]
    }]
  }]
}

```
