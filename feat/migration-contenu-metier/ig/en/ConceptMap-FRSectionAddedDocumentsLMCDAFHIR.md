# Mapping FRLMDocumentsAjoutes → FRCDADocumentsAjoutes → FRCompositionDocument.section:addedDocuments - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDocumentsAjoutes → FRCDADocumentsAjoutes → FRCompositionDocument.section:addedDocuments 

 
Mapping des éléments du modèle métier FRLMDocumentsAjoutes vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:addedDocuments. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAddedDocumentsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAddedDocumentsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Documents ajoutés\"",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDocumentsAjoutes vers la section CDA FRCDADocumentsAjoutes, puis vers la section FHIR FRCompositionDocument.section:addedDocuments.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-documents-ajoutes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documents-ajoutes",
    "element" : [{
      "code" : "FRLMDocumentsAjoutes",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentsAjoutes.codeSection",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentsAjoutes.titreSection",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentsAjoutes.blocNarratif",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentsAjoutes.entree.documentAttache",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.entry:frDocumentAttache",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentsAjoutes.entree.simpleObservation",
      "target" : [{
        "code" : "FRCDADocumentsAjoutes.entry:frSimpleObservation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-documents-ajoutes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADocumentsAjoutes",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentsAjoutes.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentsAjoutes.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentsAjoutes.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentsAjoutes.entry:frDocumentAttache",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentsAjoutes.entry:frSimpleObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:addedDocuments.entry:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
