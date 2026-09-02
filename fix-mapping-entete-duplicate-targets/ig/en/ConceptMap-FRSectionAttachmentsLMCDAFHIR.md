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
  "name" : "FRSectionAttachmentsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Documents ajoutés\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T10:43:57+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-documents-ajoutes",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAttachments",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADocumentsAjoutes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.attachment",
      "target" : [{
        "code" : "Section.entry:frDocumentAttache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.observation",
      "target" : [{
        "code" : "Section.entry:frSimpleObservation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachments",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAttachments",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionAttachments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.attachment",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAttachments.entry.observation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
