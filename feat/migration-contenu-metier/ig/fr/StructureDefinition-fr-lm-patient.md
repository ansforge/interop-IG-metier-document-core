# Logical model - FR LM Patient - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Patient 

 
Patient/Usager concerné par le document. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Data Enterer](StructureDefinition-fr-lm-data-enterer.md), [Logical model - FR LM Entry](StructureDefinition-fr-lm-entry.md), [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md), [Logical model - FR LM Informant](StructureDefinition-fr-lm-informant.md)... Show 9 more, [Logical model - FR LM Intended Recipient](StructureDefinition-fr-lm-intended-recipient.md), [Logical model - FR LM Legal Authentication](StructureDefinition-fr-lm-legal-authentication.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Order](StructureDefinition-fr-lm-order.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model - FR LM Related Person](StructureDefinition-fr-lm-related-person.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)
* Référence ce Modèle logique: [Logical model - FR LM ObservationMedia](StructureDefinition-fr-lm-observation-media.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-patient)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-patient.csv), [Excel](../StructureDefinition-fr-lm-patient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-patient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient",
  "version" : "0.1.0",
  "name" : "FRLMPatient",
  "title" : "Logical model - FR LM Patient",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-patient",
      "path" : "fr-lm-patient",
      "short" : "Logical model - FR LM Patient",
      "definition" : "Patient/Usager concerné par le document.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "fr-lm-patient.identifier",
      "path" : "fr-lm-patient.identifier",
      "short" : "Identifiant du patient / usager.\n- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.\n- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.).",
      "definition" : "Identifiant du patient / usager.\n- Première occurrence obligatoire pour un document mis en partage dans un système d’information de santé partagé : Matricule INS du patient/usager tel que défini dans le cadre juridique.\n- Occurrence(s) suivante(s) (optionnelles) : Identifiant connu pour le patient/usager dans le système d’information du producteur du document (IPP, NIP, etc.).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-patient.address",
      "path" : "fr-lm-patient.address",
      "short" : "Adresse géopostale du patient/usager.",
      "definition" : "Adresse géopostale du patient/usager.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-patient.telecom",
      "path" : "fr-lm-patient.telecom",
      "short" : "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …).",
      "definition" : "Coordonnées télécom du patient/usager (numéro de téléphone, adresse e-mail, …).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "fr-lm-patient.name",
      "path" : "fr-lm-patient.name",
      "short" : "Noms et prénoms du patient/usager.",
      "definition" : "Noms et prénoms du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-human-name"
      }]
    },
    {
      "id" : "fr-lm-patient.administrativeGender",
      "path" : "fr-lm-patient.administrativeGender",
      "short" : "Sexe administratif du patient/usager.",
      "definition" : "Sexe administratif du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-patient.dateOfBirth",
      "path" : "fr-lm-patient.dateOfBirth",
      "short" : "Date et heure de naissance du patient/usager.",
      "definition" : "Date et heure de naissance du patient/usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-patient.deceased[x]",
      "path" : "fr-lm-patient.deceased[x]",
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
      "id" : "fr-lm-patient.multipleBirth[x]",
      "path" : "fr-lm-patient.multipleBirth[x]",
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
      "id" : "fr-lm-patient.birthPlace",
      "path" : "fr-lm-patient.birthPlace",
      "short" : "Lieu de naissance.\n  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.\n  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager.",
      "definition" : "Lieu de naissance.\n  - Obligatoire si le matricule INS est présent pour porter le code officiel géographique (COG) du lieu de naissance.\n  - Le lieu de naissance est constitué du nom et/ou de l’adresse du lieu de naissance du patient/usager.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-patient.contact",
      "path" : "fr-lm-patient.contact",
      "short" : "Représentant du patient/usager.",
      "definition" : "Représentant du patient/usager.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-patient.contact.address",
      "path" : "fr-lm-patient.contact.address",
      "short" : "Adresse géopostale.",
      "definition" : "Adresse géopostale.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-patient.contact.telecom",
      "path" : "fr-lm-patient.contact.telecom",
      "short" : "Coordonnées télécom.",
      "definition" : "Coordonnées télécom.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "fr-lm-patient.contact.name",
      "path" : "fr-lm-patient.contact.name",
      "short" : "Noms et Prénoms du représentant.",
      "definition" : "Noms et Prénoms du représentant.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-human-name"
      }]
    },
    {
      "id" : "fr-lm-patient.contact.organization",
      "path" : "fr-lm-patient.contact.organization",
      "short" : "Structure représentant le patient/usager.",
      "definition" : "Structure représentant le patient/usager.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    }]
  }
}

```
