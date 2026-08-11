# Mapping FRLMAttachments → FRCDADocumentsAjoutes/ FRLMAttachments → FRCompositionDocument.section:sectionAttachments - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAttachments → FRCDADocumentsAjoutes/ FRLMAttachments → FRCompositionDocument.section:sectionAttachments 

 
Mapping des éléments du modèle métier FRLMAttachments vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:sectionAttachments. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAttachmentsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAttachmentsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Documents ajoutés\"",
  "status" : "draft",
  "date" : "2026-08-11T15:27:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAttachments vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:sectionAttachments.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attachments",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documents-ajoutes",
    "element" : [{
      "code" : "FRLMAttachments",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.codeSection",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.titleSection",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.description",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.attachment:FRLMAttachment",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.entry:frDocumentAttache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.observation:FRLMObservation",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.entry:frSimpleObservation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-attachments",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMAttachments",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry:attachment:FRLMAttachment",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry:observation:FRLMObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionAttachments.entry:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
