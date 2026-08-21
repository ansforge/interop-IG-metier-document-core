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
  "date" : "2026-08-21T08:13:05+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-dispositif-medical",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDeviceUse",
      "target" : [{
        "code" : "Supply",
        "display" : "FRCDADispositifMedical",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.identifier",
      "target" : [{
        "code" : "Supply.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.status",
      "target" : [{
        "code" : "Supply.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse",
      "target" : [{
        "code" : "Supply.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "target" : [{
        "code" : "Supply.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "Supply.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.duration",
      "target" : [{
        "code" : "Supply.expectedUseTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.performer[x]",
      "target" : [{
        "code" : "Supply.performer",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.device",
      "target" : [{
        "code" : "Supply.participant",
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
        "code" : "Supply.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "Supply.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "Supply.entryRelationship:frEnRapportAvecPrevention",
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
        "code" : "Supply.text",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-device-use-statement-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMDeviceUse",
      "target" : [{
        "code" : "DeviceUseStatement",
        "display" : "FRDeviceUseStatementDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.identifier",
      "target" : [{
        "code" : "DeviceUseStatement.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.status",
      "target" : [{
        "code" : "DeviceUseStatement.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse",
      "target" : [{
        "code" : "DeviceUseStatement.timingPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "target" : [{
        "code" : "DeviceUseStatement.timingPeriod.start",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "DeviceUseStatement.timingPeriod.end",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.duration",
      "target" : [{
        "code" : "DeviceUseStatement.timing[x]",
        "equivalence" : "relatedto",
        "comment" : "Le modèle métier porte une durée dédiée, alors que la cible FHIR ne fournit pas un champ direct équivalent sur DeviceUseStatement."
      }]
    },
    {
      "code" : "FRLMDeviceUse.header.performer[x]",
      "target" : [{
        "code" : "DeviceUseStatement.extension:performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.device",
      "target" : [{
        "code" : "DeviceUseStatement.device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.bodySite",
      "target" : [{
        "code" : "DeviceUseStatement.bodySite",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:CodeableConcept",
      "target" : [{
        "code" : "DeviceUseStatement.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "DeviceUseStatement.reasonReference:FRObservationALDDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "DeviceUseStatement.reasonReference:FRObservationWorkRelatedAccidentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]:FRLMObservation",
      "target" : [{
        "code" : "DeviceUseStatement.reasonReference:FRObservationPreventionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.note",
      "target" : [{
        "code" : "DeviceUseStatement.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
