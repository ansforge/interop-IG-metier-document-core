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
  "date" : "2026-08-20T08:53:12+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-image-illustrative",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationMedia",
      "target" : [{
        "code" : "ObservationMedia",
        "display" : "FRCDAImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.identifiant",
      "target" : [{
        "code" : "ObservationMedia.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.data",
      "target" : [{
        "code" : "ObservationMedia.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.contentType",
      "target" : [{
        "code" : "ObservationMedia.value.mediaType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMPatient",
      "target" : [{
        "code" : "ObservationMedia.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMSpecimen",
      "target" : [{
        "code" : "ObservationMedia.specimen",
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
        "code" : "ObservationMedia.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.participant[x]",
      "target" : [{
        "code" : "ObservationMedia.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.author[x]",
      "target" : [{
        "code" : "ObservationMedia.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.informant[x]",
      "target" : [{
        "code" : "ObservationMedia.informant",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-media-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationMedia",
      "target" : [{
        "code" : "Media",
        "display" : "FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.identifiant",
      "target" : [{
        "code" : "Media.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.data",
      "target" : [{
        "code" : "Media.content.data",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.content.contentType",
      "target" : [{
        "code" : "Media.content.contentType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMPatient",
      "target" : [{
        "code" : "Media.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.subject:FRLMSpecimen",
      "target" : [{
        "code" : "Media.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.note",
      "target" : [{
        "code" : "Media.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationMedia.header.performer[x]",
      "target" : [{
        "code" : "Media.operator",
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
