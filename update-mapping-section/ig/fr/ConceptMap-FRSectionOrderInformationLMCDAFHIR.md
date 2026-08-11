# Mapping FRLMOrderInformation → FRCDADICOMDemandeExamen / FRLMOrderInformation → FRCompositionDocument.section:sectionOrder - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMOrderInformation → FRCDADICOMDemandeExamen / FRLMOrderInformation → FRCompositionDocument.section:sectionOrder 

 
Mapping des éléments du modèle métier FRLMOrderInformation vers la section CDA FRCDADICOMDemandeExamen, puis vers la section FHIR FRCompositionDocument.section:sectionOrder. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionOrderInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionOrderInformationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Demande d'examen d'imagerie",
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
  "description" : "Mapping des éléments du modèle métier FRLMOrderInformation vers la section CDA FRCDADICOMDemandeExamen, puis vers la section FHIR FRCompositionDocument.section:sectionOrder.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-demande-examen",
    "element" : [{
      "code" : "FRLMOrderInformation",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.titleSection",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.description",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.codeSection",
      "target" : [{
        "code" : "FRCDADICOMDemandeExamen.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.entry.orderInformation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifiee dans FRCDADICOMDemandeExamen pour FRLMOrderInformation.entry.orderInformation."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-order-information",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMOrderInformation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionOrder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionOrder.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionOrder.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionOrder.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.entry.orderInformation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionOrder.entry:FRServiceRequestImagingDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
