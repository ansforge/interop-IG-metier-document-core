# Mapping FRLMBatterieExamensBiologieMedicale → FRCDABatterieExamensDeBiologieMedicale → FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMBatterieExamensBiologieMedicale → FRCDABatterieExamensDeBiologieMedicale → FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modèle métier FRLMBatterieExamensBiologieMedicale vers le profil CDA FRCDABatterieExamensDeBiologieMedicale, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLaboratoryBatteryResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLaboratoryBatteryResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Batterie d'examens de biologie médicale\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMBatterieExamensBiologieMedicale vers le profil CDA FRCDABatterieExamensDeBiologieMedicale, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale",
    "element" : [{
      "code" : "FRLMBatterieExamensBiologieMedicale",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.identifiant",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.codeBatterieExamen",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.statut",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.dateExamen",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.laboratoireExecutant",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.auteur",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.participant",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.prelevement",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.imageIllustrative",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.commentaire",
      "target" : [{
        "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDABatterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.id",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.statusCode",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.effectiveTime",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.subject",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.performer",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.author",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frPrelevement",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frResultatExamensDeBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frImageIllustrative",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDABatterieExamensDeBiologieMedicale.component:frCommentaireER",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
