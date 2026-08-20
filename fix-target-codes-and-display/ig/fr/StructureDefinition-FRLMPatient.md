# Logical model - FR LM Patient - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Patient 

 
Patient/Usager concerné par le document. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Data Enterer](StructureDefinition-FRLMDataEnterer.md), [Logical model - FR LM Entry](StructureDefinition-FRLMEntry.md), [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md), [Logical model - FR LM Informant](StructureDefinition-FRLMInformant.md)... Show 9 more, [Logical model - FR LM Intended Recipient](StructureDefinition-FRLMIntendedRecipient.md), [Logical model - FR LM Legal Authentication](StructureDefinition-FRLMLegalAuthentication.md), [Logical model - FR LM Medication Dispense](StructureDefinition-FRLMMedicationDispense.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Order](StructureDefinition-FRLMOrder.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md), [Logical model - FR LM Related Person](StructureDefinition-FRLMRelatedPerson.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)
* Référence ce Modèle logique: [Logical model - FR LM ObservationMedia](StructureDefinition-FRLMObservationMedia.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMPatient)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(5 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMPatient.csv), [Excel](../StructureDefinition-FRLMPatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
  "version" : "0.1.0",
  "name" : "FRLMPatient",
  "title" : "Logical model - FR LM Patient",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Patient/Usager concerné par le document.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPatient",
      "path" : "FRLMPatient",
      "short" : "Logical model - FR LM Patient",
      "definition" : "Patient/Usager concerné par le document.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "FRLMPatient.identifier",
      "path" : "FRLMPatient.identifier",
      "short" : "Identifiant du patient / usager.\n- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.\n- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.).",
      "definition" : "Identifiant du patient / usager.\n- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.\n- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMPatient.address",
      "path" : "FRLMPatient.address",
      "short" : "Adresse géopostale du patient/usager.",
      "definition" : "Adresse géopostale du patient/usager.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMPatient.telecom",
      "path" : "FRLMPatient.telecom",
      "short" : "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …).",
      "definition" : "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "FRLMPatient.name",
      "path" : "FRLMPatient.name",
      "short" : "Noms et prénoms du patient/usager.",
      "definition" : "Noms et prénoms du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
      }]
    },
    {
      "id" : "FRLMPatient.administrativeGender",
      "path" : "FRLMPatient.administrativeGender",
      "short" : "Sexe administratif du patient/usager.",
      "definition" : "Sexe administratif du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPatient.dateOfBirth",
      "path" : "FRLMPatient.dateOfBirth",
      "short" : "Date et heure de naissance du patient/usager.",
      "definition" : "Date et heure de naissance du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMPatient.deceased[x]",
      "path" : "FRLMPatient.deceased[x]",
      "short" : "Patient/usager décédé / Date et heure du décès.",
      "definition" : "Patient/usager décédé / Date et heure du décès.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMPatient.multipleBirth[x]",
      "path" : "FRLMPatient.multipleBirth[x]",
      "short" : "Patient/usager né d'une grossesse multiple / Nombre d'ordres de naissance.",
      "definition" : "Patient/usager né d'une grossesse multiple / Nombre d'ordres de naissance.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMPatient.birthPlace",
      "path" : "FRLMPatient.birthPlace",
      "short" : "Lieu de naissance.\n  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.\n  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager.",
      "definition" : "Lieu de naissance.\n  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.\n  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMPatient.contact",
      "path" : "FRLMPatient.contact",
      "short" : "Représentant du patient/usager.",
      "definition" : "Représentant du patient/usager.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPatient.contact.address",
      "path" : "FRLMPatient.contact.address",
      "short" : "Adresse géopostale.",
      "definition" : "Adresse géopostale.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMPatient.contact.telecom",
      "path" : "FRLMPatient.contact.telecom",
      "short" : "Coordonnées télécom.",
      "definition" : "Coordonnées télécom.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "FRLMPatient.contact.name",
      "path" : "FRLMPatient.contact.name",
      "short" : "Noms et Prénoms du représentant.",
      "definition" : "Noms et Prénoms du représentant.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
      }]
    },
    {
      "id" : "FRLMPatient.contact.organization",
      "path" : "FRLMPatient.contact.organization",
      "short" : "Structure représentant le patient/usager.",
      "definition" : "Structure représentant le patient/usager.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    }]
  }
}

```
