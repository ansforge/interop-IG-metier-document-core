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
  "date" : "2026-08-23T21:45:18+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.identifiant",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.codeAnalyseObservation",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.dateHeureResultat",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.interpretation",
      "target" : [{
        "code" : "Observation.interpretationCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.methode",
      "target" : [{
        "code" : "Observation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.auteur",
      "target" : [{
        "code" : "Observation.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.valideur",
      "target" : [{
        "code" : "Observation.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.responsable",
      "target" : [{
        "code" : "Observation.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.dispositifAutomatique",
      "target" : [{
        "code" : "Observation.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.commentaire",
      "target" : [{
        "code" : "Observation.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.prelevement",
      "target" : [{
        "code" : "Observation.entryRelationship:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
      "target" : [{
        "code" : "Observation.entryRelationship.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference",
      "target" : [{
        "code" : "Observation.referenceRange.observationRange",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat-examens-de-biologie-element-clinique-pertinent",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Observation.id",
      "target" : [{
        "code" : "Observation.identifier",
        "display" : "FRObservationLaboratoryReportResultsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.code",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.effectiveTime",
      "target" : [{
        "code" : "Observation.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.value",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.interpretationCode",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.methodCode",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.performer",
      "target" : [{
        "code" : "Observation.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.author",
      "target" : [{
        "code" : "Observation.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.participant",
      "target" : [{
        "code" : "Observation.performer.extension:validateurResultat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.participant",
      "target" : [{
        "code" : "Observation.performer.extension:responsableExamen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.participant",
      "target" : [{
        "code" : "Observation.performer.extension:dispositifAuto",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.entryRelationship:frPrelevement",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.entryRelationship.observation",
      "target" : [{
        "code" : "Observation.extension:workflow-supportingInfo",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.referenceRange.observationRange",
      "target" : [{
        "code" : "Observation.valueRange",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
