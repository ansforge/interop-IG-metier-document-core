# Mapping FRLMResultatsExamensBiologieMedicale → FRCDAResultatExamensDeBiologie → FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMResultatsExamensBiologieMedicale → FRCDAResultatExamensDeBiologie → FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modèle métier FRLMResultatsExamensBiologieMedicale vers le profil CDA FRCDAResultatExamensDeBiologie, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLaboratoryResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLaboratoryResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultats d'examens de biologie médicale\"",
  "status" : "draft",
  "date" : "2026-08-21T08:13:05+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMResultatsExamensBiologieMedicale vers le profil CDA FRCDAResultatExamensDeBiologie, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatsExamensBiologieMedicale",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-examens-de-biologie-medicale",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMResultatsExamensBiologieMedicale",
      "target" : [{
        "code" : "Act",
        "display" : "FRCDAResultatExamensDeBiologie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.code",
      "target" : [{
        "code" : "Act.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.statut",
      "target" : [{
        "code" : "Act.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.dateResultat",
      "target" : [{
        "code" : "Act.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "Act.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "Act.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.laboratoireExecutant",
      "target" : [{
        "code" : "Act.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.auteur",
      "target" : [{
        "code" : "Act.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.valideur",
      "target" : [{
        "code" : "Act.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.responsable",
      "target" : [{
        "code" : "Act.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.dispositifAutomatique",
      "target" : [{
        "code" : "Act.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.prelevement",
      "target" : [{
        "code" : "Act.entryRelationship:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Act.entryRelationship:frBatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique",
      "target" : [{
        "code" : "Act.entryRelationship:frIsolatMicrobiologique",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.imageIllustrative",
      "target" : [{
        "code" : "Act.entryRelationship:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.commentaire",
      "target" : [{
        "code" : "Act.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultats-examens-de-biologie-medicale",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Act",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.code",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.statusCode",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.effectiveTime",
      "target" : [{
        "code" : "Observation.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.performer",
      "target" : [{
        "code" : "Observation.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.author",
      "target" : [{
        "code" : "Observation.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.participant",
      "target" : [{
        "code" : "Observation.performer.extension:validateurResultat",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.participant",
      "target" : [{
        "code" : "Observation.performer.extension:responsableExamen",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.participant",
      "target" : [{
        "code" : "Observation.performer.extension:dispositifAuto",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frPrelevement",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frBatterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frIsolatMicrobiologique",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Act.entryRelationship:frImageIllustrative",
      "target" : [{
        "code" : "Observation.derivedFrom:FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
