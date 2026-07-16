# Mapping FRLMSujetNonHumain -> FRCDASujetNonHumain -> FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSujetNonHumain -> FRCDASujetNonHumain -> FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modele metier FRLMSujetNonHumain vers l'element CDA FRCDASujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRNonHumanSubjectLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRNonHumanSubjectLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Sujet non humain\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modele metier FRLMSujetNonHumain vers l'element CDA FRCDASujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain",
    "element" : [{
      "code" : "FRLMSujetNonHumain",
      "target" : [{
        "code" : "FRCDASujetNonHumain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSujetNonHumain.sujet",
      "target" : [{
        "code" : "FRCDASujetNonHumain.subject.relatedSubject.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSujetNonHumain.adresse",
      "target" : [{
        "code" : "FRCDASujetNonHumain.subject.relatedSubject.addr",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDASujetNonHumain",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASujetNonHumain.subject.relatedSubject.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen.subject:Substance",
        "equivalence" : "equivalent",
        "comment" : "specimen.subject = Reference(Substance)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/substance",
    "element" : [{
      "code" : "FRCDASujetNonHumain.subject.relatedSubject.code",
      "target" : [{
        "code" : "Substance.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASujetNonHumain.subject.relatedSubject.code.qualifier.value",
      "target" : [{
        "code" : "Substance.category",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
