# Mapping FRLMPatientSujetNonHumain -> FRCDAPatientAvecSujetNonHumain -> FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPatientSujetNonHumain -> FRCDAPatientAvecSujetNonHumain -> FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modele metier FRLMPatientSujetNonHumain vers l'element CDA FRCDAPatientAvecSujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance et Observation/subject. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPatientWithNonHumanSubjectLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPatientWithNonHumanSubjectLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Patient avec sujet non humain\"",
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
  "description" : "Mapping des éléments du modele metier FRLMPatientSujetNonHumain vers l'element CDA FRCDAPatientAvecSujetNonHumain, puis vers les ressources FHIR Observation/Specimen/Substance et Observation/subject.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-patient-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain",
    "element" : [{
      "code" : "FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "FRCDAPatientAvecSujetNonHumain",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientSujetNonHumain.sujet",
      "target" : [{
        "code" : "FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientSujetNonHumain.adresse",
      "target" : [{
        "code" : "FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.addr",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-record-target",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDARecordTarget.patientRole",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.subject",
        "equivalence" : "equivalent",
        "comment" : "Subject = Reference(FRPatientINSDocument)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDAPatientAvecSujetNonHumain",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen.subject:Substance",
        "equivalence" : "equivalent",
        "comment" : "specimen.subject = Reference(Substance)."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-patient-avec-sujet-non-humain",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/substance",
    "element" : [{
      "code" : "FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code",
      "target" : [{
        "code" : "Substance.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPatientAvecSujetNonHumain.subject.relatedSubject.code.qualifier.value",
      "target" : [{
        "code" : "Substance.category",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
