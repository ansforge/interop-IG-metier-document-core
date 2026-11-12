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
  "date" : "2026-08-31T08:09:30+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIsolatMicrobiologique",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-isolat-microbiologique",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMIsolatMicrobiologique",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDAIsolatMicrobiologique",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.identifiant",
      "target" : [{
        "code" : "Organizer.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.codeIsolat",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.statut",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.dateResultat",
      "target" : [{
        "code" : "Organizer.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.choice:SujetNonHumain",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.choice:PatientSujetNonHumain",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique",
      "target" : [{
        "code" : "Organizer.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat",
      "target" : [{
        "code" : "Organizer.specimen.specimenRole",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
      "target" : [{
        "code" : "Organizer.specimen.specimenRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
      "target" : [{
        "code" : "Organizer.specimen.specimenRole.specimenPlayingEntity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
      "target" : [{
        "code" : "Organizer.specimen.specimenRole.specimenPlayingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.laboratoireExecutant",
      "target" : [{
        "code" : "Organizer.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.auteur",
      "target" : [{
        "code" : "Organizer.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.valideur",
      "target" : [{
        "code" : "Organizer.participant",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.responsable",
      "target" : [{
        "code" : "Organizer.participant",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.dispositifAutomatique",
      "target" : [{
        "code" : "Organizer.participant",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Organizer.component:frBatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.imageIllustrative",
      "target" : [{
        "code" : "Organizer.component:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIsolatMicrobiologique.commentaire",
      "target" : [{
        "code" : "Organizer.component:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-isolat-microbiologique",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-laboratory-report-results-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "Organizer",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.id",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.code",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.statusCode",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.effectiveTime",
      "target" : [{
        "code" : "Observation.effectivePeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.specimen",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.performer",
      "target" : [{
        "code" : "Observation.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.author",
      "target" : [{
        "code" : "Observation.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.participant",
      "target" : [{
        "code" : "Observation.performer.extension:validateurResultat",
        "display" : "Authenticator (CDA participant) : participant/@typeCode='AUTHEN'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.participant",
      "target" : [{
        "code" : "Observation.performer.extension:responsableExamen",
        "display" : "Responsible Party (CDA participant) : participant/@typeCode='RESP'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.participant",
      "target" : [{
        "code" : "Observation.performer.extension:dispositifAuto",
        "display" : "Device (CDA participant) : participant/@typeCode='DEV'",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.component:frBatterieExamensDeBiologieMedicale",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.component:frImageIllustrative",
      "target" : [{
        "code" : "Observation.derivedFrom:FRMediaDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.component:frCommentaireER",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
