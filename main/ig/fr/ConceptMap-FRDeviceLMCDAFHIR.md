# Mapping FRLMDevice → FRCDADispositifMedical / FRLMDevice → Device - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDevice → FRCDADispositifMedical / FRLMDevice → Device 

 
Mapping des éléments du modèle métier FRLMDevice vers le profil CDA FRCDADispositifMedical, puis vers la ressource FHIR Device. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRDeviceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRDeviceLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Dispositif médical\"",
  "status" : "draft",
  "date" : "2026-08-11T09:29:09+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMDevice vers le profil CDA FRCDADispositifMedical, puis vers la ressource FHIR Device.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-device",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-dispositif-medical",
    "element" : [{
      "code" : "FRLMDevice",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant.participantRole.playingDevice",
        "equivalence" : "relatedto",
        "comment" : "Le modèle métier FRLMDevice correspond à la composante playingDevice portée dans l'entrée CDA FRCDADispositifMedical."
      }]
    },
    {
      "code" : "FRLMDevice.identifier",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant.participantRole.id",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.udi",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant.participantRole.id",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.manufacturer",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de fabricant dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.manufactureDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de date de fabrication dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.expiryDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de date d'expiration dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.lotNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de numéro de lot dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.serialNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de numéro de série dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.name",
      "target" : [{
        "code" : "FRCDADispositifMedical.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.name.value",
      "target" : [{
        "code" : "FRCDADispositifMedical.text",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.name.type",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite pour typer le nom dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.modelNumber",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de numéro de modèle dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.version",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ explicite de version dans FRCDADispositifMedical.playingDevice."
      }]
    },
    {
      "code" : "FRLMDevice.type",
      "target" : [{
        "code" : "FRCDADispositifMedical.participant.participantRole.playingDevice.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.note",
      "target" : [{
        "code" : "FRCDADispositifMedical.text",
        "equivalence" : "relatedto"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-device",
    "target" : "http://hl7.org/fhir/StructureDefinition/Device",
    "targetVersion" : "4.0.1",
    "element" : [{
      "code" : "FRLMDevice",
      "target" : [{
        "code" : "Device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.identifier",
      "target" : [{
        "code" : "Device.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.udi",
      "target" : [{
        "code" : "Device.udiCarrier.deviceIdentifier",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.manufacturer",
      "target" : [{
        "code" : "Device.manufacturer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.manufactureDate",
      "target" : [{
        "code" : "Device.manufactureDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.expiryDate",
      "target" : [{
        "code" : "Device.expirationDate",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.lotNumber",
      "target" : [{
        "code" : "Device.lotNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.serialNumber",
      "target" : [{
        "code" : "Device.serialNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.name",
      "target" : [{
        "code" : "Device.deviceName",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.name.value",
      "target" : [{
        "code" : "Device.deviceName.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.name.type",
      "target" : [{
        "code" : "Device.deviceName.type",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.modelNumber",
      "target" : [{
        "code" : "Device.modelNumber",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.version",
      "target" : [{
        "code" : "Device.version.value",
        "equivalence" : "relatedto"
      }]
    },
    {
      "code" : "FRLMDevice.type",
      "target" : [{
        "code" : "Device.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDevice.note",
      "target" : [{
        "code" : "Device.note.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
