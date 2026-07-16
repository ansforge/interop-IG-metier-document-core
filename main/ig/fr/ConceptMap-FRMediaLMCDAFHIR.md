# Mapping FRLMImageIllustrative → FRCDAImageIllustrative → FRMediaDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMImageIllustrative → FRCDAImageIllustrative → FRMediaDocument 

 
Mapping des éléments du modèle métier FRLMImageIllustrative vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMediaLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMediaLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Image illustrative\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMImageIllustrative vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-image-illustrative",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative",
    "element" : [{
      "code" : "FRLMImageIllustrative",
      "target" : [{
        "code" : "FRCDAImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.identifiant",
      "target" : [{
        "code" : "FRCDAImageIllustrative.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.langue",
      "target" : [{
        "code" : "FRCDAImageIllustrative.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.imageEncodee",
      "target" : [{
        "code" : "FRCDAImageIllustrative.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.mediaType",
      "target" : [{
        "code" : "FRCDAImageIllustrative.value.mediaType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.representation",
      "target" : [{
        "code" : "FRCDAImageIllustrative.value.representation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.subject",
      "target" : [{
        "code" : "FRCDAImageIllustrative.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.specimen",
      "target" : [{
        "code" : "FRCDAImageIllustrative.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.performer",
      "target" : [{
        "code" : "FRCDAImageIllustrative.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.auteur",
      "target" : [{
        "code" : "FRCDAImageIllustrative.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.informant",
      "target" : [{
        "code" : "FRCDAImageIllustrative.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.participant",
      "target" : [{
        "code" : "FRCDAImageIllustrative.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.entryRelationship",
      "target" : [{
        "code" : "FRCDAImageIllustrative.entryRelationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.reference",
      "target" : [{
        "code" : "FRCDAImageIllustrative.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMImageIllustrative.precondition",
      "target" : [{
        "code" : "FRCDAImageIllustrative.precondition",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-media-document",
    "element" : [{
      "code" : "FRCDAImageIllustrative",
      "target" : [{
        "code" : "FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.id",
      "target" : [{
        "code" : "FRMediaDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.languageCode",
      "target" : [{
        "code" : "FRMediaDocument.content.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.value",
      "target" : [{
        "code" : "FRMediaDocument.content.data",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.value.mediaType",
      "target" : [{
        "code" : "FRMediaDocument.content.contentType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.value.representation",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.subject",
      "target" : [{
        "code" : "FRMediaDocument.subject:Patient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.specimen",
      "target" : [{
        "code" : "FRMediaDocument.subject:Specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.performer",
      "target" : [{
        "code" : "FRMediaDocument.operator.extension:performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.author",
      "target" : [{
        "code" : "FRMediaDocument.operator.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.informant",
      "target" : [{
        "code" : "FRMediaDocument.operator.extension:informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.participant",
      "target" : [{
        "code" : "FRMediaDocument.operator.extension:participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.entryRelationship",
      "target" : [{
        "code" : "FRMediaDocument.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.reference",
      "target" : [{
        "code" : "FRMediaDocument.partOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAImageIllustrative.precondition",
      "target" : [{
        "code" : "FRMediaDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
