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
  "date" : "2026-08-21T08:13:05+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBatterieExamensBiologieMedicale",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMBatterieExamensBiologieMedicale",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDABatterieExamensDeBiologieMedicale",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.identifiant",
      "target" : [{
        "code" : "Organizer.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.codeBatterieExamen",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.statut",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.dateExamen",
      "target" : [{
        "code" : "Organizer.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.choice:FRLMSujetNonHumain",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.choice:FRLMPatientSujetNonHumain",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.laboratoireExecutant",
      "target" : [{
        "code" : "Organizer.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.auteur",
      "target" : [{
        "code" : "Organizer.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.participant",
      "target" : [{
        "code" : "Organizer.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.prelevement",
      "target" : [{
        "code" : "Organizer.component:frPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
      "target" : [{
        "code" : "Organizer.component:frResultatExamensDeBiologieElementCliniquePertinent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.imageIllustrative",
      "target" : [{
        "code" : "Organizer.component:frImageIllustrative",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMBatterieExamensBiologieMedicale.commentaire",
      "target" : [{
        "code" : "Organizer.component:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-batterie-examens-de-biologie-medicale",
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
      "code" : "Organizer.performer",
      "target" : [{
        "code" : "Observation.performer.extension:laboratoireExecutant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Organizer.author",
      "target" : [{
        "code" : "Observation.author",
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
      "code" : "Organizer.component:frPrelevement",
      "target" : [{
        "code" : "Observation.specimen",
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
