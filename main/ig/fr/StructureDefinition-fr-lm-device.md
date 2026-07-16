# Logical model - Device - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - Device 

 
Dispositif médical 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Attester](StructureDefinition-fr-lm-attester.md), [Logical model - FR LM Device use](StructureDefinition-fr-lm-device-use.md), [Logical model - FR LM Entry](StructureDefinition-fr-lm-entry.md), [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)... Show 11 more, [Logical model - FR LM Intended Recipient](StructureDefinition-fr-lm-intended-recipient.md), [Logical model - Laboratory Observation](StructureDefinition-fr-lm-laboratory-observation.md), [Logical model - FR LM Legal Authentication](StructureDefinition-fr-lm-legal-authentication.md), [Logical model - FR LM Medication](StructureDefinition-fr-lm-medication.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Participant](StructureDefinition-fr-lm-participant.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model- FR LM Procedure](StructureDefinition-fr-lm-procedure.md), [Logical model - FR LM Section](StructureDefinition-fr-lm-section.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-device)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-device.csv), [Excel](../StructureDefinition-fr-lm-device.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-device",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device",
  "version" : "0.1.0",
  "name" : "FRLMDevice",
  "title" : "Logical model - Device",
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
  "description" : "Dispositif médical",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-device",
      "path" : "fr-lm-device",
      "short" : "Logical model - Device",
      "definition" : "Dispositif médical"
    },
    {
      "id" : "fr-lm-device.identifier",
      "path" : "fr-lm-device.identifier",
      "short" : "Identifiant du DM",
      "definition" : "Identifiant du DM",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-device.udi",
      "path" : "fr-lm-device.udi",
      "short" : "Identifiant unique du DM (UDI)",
      "definition" : "Identifiant unique du DM (UDI)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-device.manufacturer",
      "path" : "fr-lm-device.manufacturer",
      "short" : "Nom du fabricant du DM. Si le code du fabricant est inclus dans l'identifiant, le nom du fabricant doit correspondre à ce code.",
      "definition" : "Nom du fabricant du DM. Si le code du fabricant est inclus dans l'identifiant, le nom du fabricant doit correspondre à ce code.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.manufactureDate",
      "path" : "fr-lm-device.manufactureDate",
      "short" : "Date d'heure de production du DM",
      "definition" : "Date d'heure de production du DM",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-device.expiryDate",
      "path" : "fr-lm-device.expiryDate",
      "short" : "Date d'expiration du DM",
      "definition" : "Date d'expiration du DM",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-device.lotNumber",
      "path" : "fr-lm-device.lotNumber",
      "short" : "Numéro de lot du DM. Optionnel si le numéro de lot est inclus dans l'identifiant.",
      "definition" : "Numéro de lot du DM. Optionnel si le numéro de lot est inclus dans l'identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.serialNumber",
      "path" : "fr-lm-device.serialNumber",
      "short" : "Numéro de série attribué par le fabricant. Optionnel si le numéro de série est inclus dans l'identifiant.",
      "definition" : "Numéro de série attribué par le fabricant. Optionnel si le numéro de série est inclus dans l'identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.name",
      "path" : "fr-lm-device.name",
      "short" : "Nom du DM",
      "definition" : "Nom du DM",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-device.name.value",
      "path" : "fr-lm-device.name.value",
      "short" : "Nom du DM (ex Nom du DM associé à l'UDI, Nom commercial du DM attribué par le fabricant)",
      "definition" : "Nom du DM (ex Nom du DM associé à l'UDI, Nom commercial du DM attribué par le fabricant)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.name.type",
      "path" : "fr-lm-device.name.type",
      "short" : "Type de nom du DM (ex Nom du DM associé à l'UDI, nom commercial du DM attribué par le fabricant)",
      "definition" : "Type de nom du DM (ex Nom du DM associé à l'UDI, nom commercial du DM attribué par le fabricant)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-device.modelNumber",
      "path" : "fr-lm-device.modelNumber",
      "short" : "Numéro de modèle attribué par le fabricant.",
      "definition" : "Numéro de modèle attribué par le fabricant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.version",
      "path" : "fr-lm-device.version",
      "short" : "Version du DM",
      "definition" : "Version du DM",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-device.type",
      "path" : "fr-lm-device.type",
      "short" : "Type de DM - EMDN (1.2.250.1.213.2.68)",
      "definition" : "Type de DM - EMDN (1.2.250.1.213.2.68)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-device.note",
      "path" : "fr-lm-device.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
