# Mapping FRLMResultatExamensBiologieElementCliniquePertinent → Profile: FRCDAResultatExamensDeBiologieElementCliniquePertinent → FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatExamensBiologieElementCliniquePertinent → Profile: FRCDAResultatExamensDeBiologieElementCliniquePertinent → FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modèle métier FRLMResultatExamensBiologieElementCliniquePertinent vers le profil CDA FRCDAResultatExamensDeBiologieElementCliniquePertinent, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLaboratoryResultClinicalElementLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLaboratoryResultClinicalElementLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultat d'examens de biologie - Élément clinique pertinent\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMResultatExamensBiologieElementCliniquePertinent vers le profil CDA FRCDAResultatExamensDeBiologieElementCliniquePertinent, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent",
    "element" : [{
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.identifiant",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.interpretation",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.methode",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.auteur",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.valideur",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.responsable",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.commentaire",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.prelevement",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.id",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.effectiveTime",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.value",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.interpretationCode",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.methodCode",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.subject",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.performer",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.author",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frPrelevement",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.entryRelationship.observation",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.extension:workflow-supportingInfo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent.referenceRange.observationRange",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.valueRange",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
