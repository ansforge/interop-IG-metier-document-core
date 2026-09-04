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
  "name" : "FRDeviceUseLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Utilisation de dispositif médical\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T14:19:44+00:00",
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
        "code" : "Supply.effectiveTime",
        "equivalence" : "wider",
        "comment" : "Le CDA ne décompose pas l'intervalle en low/high distincts ; le début est porté par l'ensemble de effectiveTime."
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "Supply.effectiveTime",
        "equivalence" : "wider",
        "comment" : "Le CDA ne décompose pas l'intervalle en low/high distincts ; la fin est portée par l'ensemble de effectiveTime."
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
      "code" : "FRLMDeviceUse.reason[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frEnRapportAvecALD",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frEnRapportAvecAccidentTravail",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]",
      "target" : [{
        "code" : "Supply.entryRelationship:frEnRapportAvecLaPrevention",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]",
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
        "code" : "DeviceUseStatement.timing[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.onsetDate",
      "target" : [{
        "code" : "DeviceUseStatement.timing[x]",
        "equivalence" : "wider",
        "comment" : "timing[x] n'est pas décomposé en start/end distincts sur ce profil ; le début est porté par l'ensemble du choix de type."
      }]
    },
    {
      "code" : "FRLMDeviceUse.periodOfUse.endDate",
      "target" : [{
        "code" : "DeviceUseStatement.timing[x]",
        "equivalence" : "wider",
        "comment" : "timing[x] n'est pas décomposé en start/end distincts sur ce profil ; la fin est portée par l'ensemble du choix de type."
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
      "code" : "FRLMDeviceUse.reason[x]",
      "target" : [{
        "code" : "DeviceUseStatement.reasonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDeviceUse.reason[x]",
      "target" : [{
        "code" : "DeviceUseStatement.reasonReference",
        "display" : "FRObservationALDDocument / FRObservationWorkRelatedAccidentDocument / FRObservationPreventionDocument",
        "equivalence" : "equivalent",
        "comment" : "Cible non slicée ; le motif référence l'une de ces observations selon le contexte métier."
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
