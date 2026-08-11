# Mapping FRLMAttachment → FRCDADocumentAttache → FRDocumentReferenceDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAttachment → FRCDADocumentAttache → FRDocumentReferenceDocument 

 
Mapping des éléments du modèle métier FRLMAttachment vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAttachmentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAttachmentLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Document Referencé\"",
  "status" : "draft",
  "date" : "2026-08-11T08:03:55+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAttachment vers le profil CDA FRCDADocumentAttache, puis vers le profil FHIR FRDocumentReferenceDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attachment",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-attache",
    "element" : [{
      "code" : "FRLMAttachment",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frObservationMedia.observationMedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.contentType",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frObservationMedia.observationMedia.value.mediaType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.language",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frObservationMedia.observationMedia.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.data",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frObservationMedia.observationMedia.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.url",
      "target" : [{
        "code" : "FRCDADocumentAttache.component:frObservationMedia.observationMedia.value.reference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.size",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut CDA direct identifié pour la taille de la pièce jointe."
      }]
    },
    {
      "code" : "FRLMAttachment.title",
      "target" : [{
        "equivalence" : "equivalent",
        "comment" : "Le titre du document attaché est mappé vers le texte de l'observation du type de document attaché."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attachment",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-document-reference-document",
    "element" : [{
      "code" : "FRLMAttachment",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.contentType",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.contentType",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.language",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.data",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.data",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.url",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.url",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.size",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.size",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachment.title",
      "target" : [{
        "code" : "FRDocumentReferenceDocument.content.attachment.title",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
