# Mapping Métier/CDA/FHIR : Codes-barres - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Codes-barres 

 
Mapping des éléments du modèle métier FRLMCodesAbarres vers la section CDA FRCDACodeABarres, puis vers la section FHIR FRCompositionDocument.section:barCodes. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionBarCodesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionBarCodesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Code à barres\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCodesAbarres vers la section CDA FRCDACodeABarres, puis vers la section FHIR FRCompositionDocument.section:barCodes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-codes-a-barres",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-code-a-barres",
    "element" : [{
      "code" : "FRLMCodesAbarres",
      "target" : [{
        "code" : "FRCDACodeABarres",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCodesAbarres.codeSection",
      "target" : [{
        "code" : "FRCDACodeABarres.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCodesAbarres.titreSection",
      "target" : [{
        "code" : "FRCDACodeABarres.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCodesAbarres.blocNarratif",
      "target" : [{
        "code" : "FRCDACodeABarres.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCodesAbarres.entree.imageIllustrative",
      "target" : [{
        "code" : "FRCDACodeABarres.entry.FRCDACodeABarres",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-code-a-barres",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDACodeABarres",
      "target" : [{
        "code" : "FRCompositionDocument.section:barCodes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACodeABarres.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:barCodes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACodeABarres.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:barCodes.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACodeABarres.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:barCodes.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDACodeABarres.entry.FRCDACodeABarres",
      "target" : [{
        "code" : "FRCompositionDocument.section:barCodes.entry:FRCDAMediaDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
