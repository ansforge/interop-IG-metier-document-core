# Mapping FRLMConclusion → FRCDADICOMConclusion / FRLMConclusion → FRDiagnosticReportImagingDocument / FRLMConclusion → FRCompositionDocument.section:sectionImpression - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMConclusion → FRCDADICOMConclusion / FRLMConclusion → FRDiagnosticReportImagingDocument / FRLMConclusion → FRCompositionDocument.section:sectionImpression 

 
Mapping des éléments du modèle métier FRLMConclusion vers la section CDA FRCDADICOMConclusion, puis vers le profil FHIR FRDiagnosticReportImagingDocument / FRCompositionDocument.section:sectionImpression. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionConclusionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionConclusionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Conclusion\"",
  "status" : "draft",
  "date" : "2026-08-18T08:13:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMConclusion vers la section CDA FRCDADICOMConclusion, puis vers le profil FHIR FRDiagnosticReportImagingDocument / FRCompositionDocument.section:sectionImpression.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dicom-conclusion",
    "element" : [{
      "code" : "FRLMConclusion",
      "target" : [{
        "code" : "FRCDADICOMConclusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConclusion.codeSection",
      "target" : [{
        "code" : "FRCDADICOMConclusion.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConclusion.description",
      "target" : [{
        "code" : "FRCDADICOMConclusion.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConclusion.titleSection",
      "target" : [{
        "code" : "FRCDADICOMConclusion.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConclusion.entry.conditionOrFinding[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifiee dans FRCDADICOMConclusion pour FRLMConclusion.entry.conditionOrFinding[x]. La section FRCDADICOMConclusion est non codée en CDA"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-diagnostic-report-imaging-document",
    "element" : [{
      "code" : "FRLMConclusion",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.conclusion",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMConclusion.entry.conditionOrFinding[x]",
      "target" : [{
        "code" : "FRDiagnosticReportImagingDocument.result",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-conclusion",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMConclusion",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionImpression",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
