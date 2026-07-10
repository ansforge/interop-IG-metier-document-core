# Mapping FRLMDocumentPDFCopie → FRCDADocumentPDFCopie → FRCompositionDocument.section:pdfDocumentCopy - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDocumentPDFCopie → FRCDADocumentPDFCopie → FRCompositionDocument.section:pdfDocumentCopy 

 
Mapping des éléments du modèle métier FRLMDocumentPDFCopie vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:pdfDocumentCopy. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPDFDocumentCopyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPDFDocumentCopyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Document PDF-copie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDocumentPDFCopie vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:pdfDocumentCopy.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-document-pdf-copie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-pdf-copie",
    "element" : [{
      "code" : "FRLMDocumentPDFCopie",
      "target" : [{
        "code" : "FRCDADocumentPDFCopie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentPDFCopie.codeSection",
      "target" : [{
        "code" : "FRCDADocumentPDFCopie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentPDFCopie.titreSection",
      "target" : [{
        "code" : "FRCDADocumentPDFCopie.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentPDFCopie.blocNarratif",
      "target" : [{
        "code" : "FRCDADocumentPDFCopie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDocumentPDFCopie.entree.documentAttache",
      "target" : [{
        "code" : "FRCDADocumentPDFCopie.entry:FRCDADocumentAttache",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-document-pdf-copie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDADocumentPDFCopie",
      "target" : [{
        "code" : "FRCompositionDocument.section:pdfDocumentCopy",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentPDFCopie.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:pdfDocumentCopy.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentPDFCopie.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:pdfDocumentCopy.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentPDFCopie.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:pdfDocumentCopy.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADocumentPDFCopie.entry:FRCDADocumentAttache",
      "target" : [{
        "code" : "FRCompositionDocument.section:pdfDocumentCopy.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
