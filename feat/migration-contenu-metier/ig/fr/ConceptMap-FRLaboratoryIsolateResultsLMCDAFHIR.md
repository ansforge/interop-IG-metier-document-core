# Mapping FRLMIsolatMicrobiologique → FRCDAIsolatMicrobiologique → FRObservationLaboratoryReportResultsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMIsolatMicrobiologique → FRCDAIsolatMicrobiologique → FRObservationLaboratoryReportResultsDocument 

 
Mapping des éléments du modèle métier FRLMIsolatMicrobiologique vers le profil CDA FRCDAIsolatMicrobiologique, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRLaboratoryIsolateResultsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRLaboratoryIsolateResultsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Isolat microbiologique\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMIsolatMicrobiologique vers le profil CDA FRCDAIsolatMicrobiologique, puis vers le profil FHIR FRObservationLaboratoryReportResultsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-isolat-microbiologique",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-isolat-microbiologique",
    "element" : [{
      "code" : "FRLMIsolatMicrobiologique",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.identifiant",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.codeIsolat",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.statut",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.dateResultat",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.choice:SujetNonHumain",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.specimen.specimenRole",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.specimen.specimenRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.specimen.specimenRole.specimenPlayingEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.specimen.specimenRole.specimenPlayingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.laboratoireExecutant",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.auteur",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.valideur",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.responsable",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.dispositifAutomatique",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.imageIllustrative",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.component:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.commentaire",
      "target" : [{
        "code" : "FRCDAIsolatMicrobiologique.component:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-isolat-microbiologique",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "element" : [{
      "code" : "FRCDAIsolatMicrobiologique",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.id",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.code",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.statusCode",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.effectiveTime",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.subject",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.specimen",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.performer",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.author",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:validateurResultat",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:responsableExamen",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.participant",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.performer.extension:dispositifAuto",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.component:frBatterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.component:frResultatExamensDeBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.component:frImageIllustrative",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.derivedFrom:FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIsolatMicrobiologique.component:frCommentaireER",
      "target" : [{
        "code" : "FRObservationLaboratoryReportResultsDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
