# Mapping FRLMObservationMedia → FRCDAImageIllustrative / FRLMObservationMedia → FRMediaDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationMedia → FRCDAImageIllustrative / FRLMObservationMedia → FRMediaDocument 

 
Mapping des éléments du modèle métier FRLMObservationMedia vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRMediaLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRMediaLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Image illustrative\"",
  "status" : "draft",
  "date" : "2026-08-10T14:36:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservationMedia vers le profil CDA FRCDAImageIllustrative, puis vers le profil FHIR FRMediaDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-media",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-image-illustrative",
    "element" : [{
      "code" : "FRLMObservationMedia",
      "target" : [{
        "code" : "FRCDAImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.identifiant",
      "target" : [{
        "code" : "FRCDAImageIllustrative.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.data",
      "target" : [{
        "code" : "FRCDAImageIllustrative.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.contentType",
      "target" : [{
        "code" : "FRCDAImageIllustrative.value.mediaType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMPatient",
      "target" : [{
        "code" : "FRCDAImageIllustrative.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMSpecimen",
      "target" : [{
        "code" : "FRCDAImageIllustrative.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.note",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le profil CDA ne comporte pas d'élément dédié pour représenter une note."
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.performer[x]",
      "target" : [{
        "code" : "FRCDAImageIllustrative.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.participant[x]",
      "target" : [{
        "code" : "FRCDAImageIllustrative.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.author[x]",
      "target" : [{
        "code" : "FRCDAImageIllustrative.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.informant[x]",
      "target" : [{
        "code" : "FRCDAImageIllustrative.informant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-media",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-media-document",
    "element" : [{
      "code" : "FRLMObservationMedia",
      "target" : [{
        "code" : "FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.identifiant",
      "target" : [{
        "code" : "FRMediaDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.data",
      "target" : [{
        "code" : "FRMediaDocument.content.data",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.contentType",
      "target" : [{
        "code" : "FRMediaDocument.content.contentType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMPatient",
      "target" : [{
        "code" : "FRMediaDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMSpecimen",
      "target" : [{
        "code" : "FRMediaDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.note",
      "target" : [{
        "code" : "FRMediaDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.performer[x]",
      "target" : [{
        "code" : "FRMediaDocument.operator",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.participant[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.author[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.informant[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
