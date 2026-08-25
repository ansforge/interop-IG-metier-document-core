# Mapping FRLMPresentedForm → FRCDADocumentPDFCopie / FRLMPresentedForm → FRCompositionDocument.section:sectionPresentedForm - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPresentedForm → FRCDADocumentPDFCopie / FRLMPresentedForm → FRCompositionDocument.section:sectionPresentedForm 

 
Mapping des éléments du modèle métier FRLMPresentedForm vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:sectionPresentedForm. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPresentedFormLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPresentedFormLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionPresentedFormLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Document PDF-copie\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T11:34:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPresentedForm vers la section CDA FRCDADocumentPDFCopie, puis vers la section FHIR FRCompositionDocument.section:sectionPresentedForm.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-document-pdf-copie",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPresentedForm",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADocumentPDFCopie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.entry.attachment",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDADocumentAttache",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPresentedForm",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPresentedForm",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionPresentedForm",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPresentedForm.entry.attachment",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
