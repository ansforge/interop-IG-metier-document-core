# Mapping FRLMQRCode → FRCDAQRCode / FRLMQRCode → FRCompositionDocument.section:sectionQrCode - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMQRCode → FRCDAQRCode / FRLMQRCode → FRCompositionDocument.section:sectionQrCode 

 
Mapping des éléments du modèle métier FRLMQRCode vers la section CDA FRCDAQRCode, puis vers la section FHIR FRCompositionDocument.section:sectionQrCode. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionQRCodeLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionQRCodeLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Code à barres\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMQRCode vers la section CDA FRCDAQRCode, puis vers la section FHIR FRCompositionDocument.section:sectionQrCode.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-code-a-barres",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMQRCode",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDACodeABarres",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.entry.observationMedia:FRLMObservationMedia",
      "target" : [{
        "code" : "Section.entry.FRCDACodeABarres",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMQRCode",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMQRCode",
      "target" : [{
        "code" : "Composition.section:sectionQrCode",
        "display" : "FRCompositionDocument.section:sectionQrCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionQrCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionQrCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.description",
      "target" : [{
        "code" : "Composition.section:sectionQrCode.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMQRCode.entry.observationMedia:FRLMObservationMedia",
      "target" : [{
        "code" : "Composition.section:sectionQrCode.entry:FRCDAMediaDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
