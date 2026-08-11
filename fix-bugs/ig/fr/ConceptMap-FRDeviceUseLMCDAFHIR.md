# Mapping FRLMDeviceUse → FRCDADispositifMedical / FRLMDeviceUse → FRDeviceUseStatementDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDeviceUse → FRCDADispositifMedical / FRLMDeviceUse → FRDeviceUseStatementDocument 

 
Mapping des éléments du modèle métier FRLMDeviceUse vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDeviceUseLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDeviceUseLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\"",
  "status" : "draft",
  "date" : "2026-08-11T07:47:41+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDeviceUse vers le profil CDA FRCDADispositifMedical, puis vers le profil FHIR FRDeviceUseStatementDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-device-use",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical",
    "element" : [{
      "code" : "FRLMDeviceUse",
      "target" : [{
        "code" : "FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.identifier",
      "target" : [{
        "code" : "FRCDADispositifMedical.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.status",
      "target" : [{
        "code" : "FRCDADispositifMedical.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse",
      "target" : [{
        "code" : "FRCDADispositifMedical.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "target" : [{
        "code" : "FRCDADispositifMedical.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "FRCDADispositifMedical.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.duration",
      "target" : [{
        "code" : "FRCDADispositifMedical.expectedUseTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.performer[x]",
      "target" : [{
        "code" : "FRCDADispositifMedical.performer",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.device",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.bodySite",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune correspondance explicite de bodySite dans FRCDADispositifMedical."
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMCondition",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "FRCDADispositifMedical.entryRelationship:frEnRapportAvecPrevention",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMProcedure",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun entryRelationship explicite FRCDADispositifMedical pour le motif de type acte."
      }]
    },
    {
      "code" : "FRLMDeviceUse.note",
      "target" : [{
        "code" : "FRCDADispositifMedical.text",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-device-use",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-use-statement-document",
    "element" : [{
      "code" : "FRLMDeviceUse",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.identifier",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.status",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.timingPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.timingPeriod.start",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.timingPeriod.end",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.duration",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.timing[x]",
        "equivalence" : "relatedto",
        "comment" : "Le modèle métier porte une durée dédiée, alors que la cible FHIR ne fournit pas un champ direct équivalent sur DeviceUseStatement."
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.performer[x]",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.extension:performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.device",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.bodySite",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.bodySite",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:CodeableConcept",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:FRObservationALDDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:FRObservationWorkRelatedAccidentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.reasonReference:FRObservationPreventionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.note",
      "target" : [{
        "code" : "FRDeviceUseStatementDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
