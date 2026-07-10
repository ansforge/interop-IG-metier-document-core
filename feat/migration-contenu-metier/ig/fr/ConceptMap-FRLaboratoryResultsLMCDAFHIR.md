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
  "date" : "2026-07-10T14:07:21+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-resultats-examens-biologie-medicale",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-medicale",
    "element" : [{
      "code" : "FRLMResultatsExamensBiologieMedicale",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.code",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.statut",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.dateResultat",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.laboratoireExecutant",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.auteur",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.valideur",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.responsable",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.dispositifAutomatique",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.prelevement",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.imageIllustrative",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMResultatsExamensBiologieMedicale.commentaire",
      "target" : [{
        "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat-examens-de-biologie-medicale",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDAResultatExamensDeBiologie",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.statusCode",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.effectiveTime",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.subject",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.performer",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.author",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frPrelevement",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frCommentaireER",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frBatterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frIsolatMicrobiologique",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frResultatExamensDeBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultatExamensDeBiologie.entryRelationship:frImageIllustrative",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
