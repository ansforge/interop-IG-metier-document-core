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
  "name" : "FRSectionOrderInformationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Demande d'examen d'imagerie",
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
  "description" : "Mapping des éléments du modèle métier FRLMOrderInformation vers la section CDA FRCDADICOMDemandeExamen, puis vers la section FHIR FRCompositionDocument.section:sectionOrder.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrderInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dicom-demande-examen",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrderInformation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDADICOMDemandeExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.codeSection",
      "target" : [{
        "code" : "Section.code",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrderInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMOrderInformation",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionOrder",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMOrderInformation.entry.orderInformation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
