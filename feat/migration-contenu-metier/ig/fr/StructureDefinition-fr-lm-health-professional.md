# Logical model - FR LM Health Professional - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Health Professional 

 
Une personne (professionnel ou patient ou autre) 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Attester](StructureDefinition-fr-lm-attester.md), [Logical model - FR LM Data Enterer](StructureDefinition-fr-lm-data-enterer.md), [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Entry](StructureDefinition-fr-lm-entry.md)... Show 13 more, [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md), [Logical model - FR LM Informant](StructureDefinition-fr-lm-informant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-fr-lm-intended-recipient.md), [Modèle logique métier - FR LM Laboratoire exécutant](StructureDefinition-fr-lm-laboratoire-executant.md), [Logical model - FR LM Legal Authentication](StructureDefinition-fr-lm-legal-authentication.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Order](StructureDefinition-fr-lm-order.md), [Logical model - FR LM Participant](StructureDefinition-fr-lm-participant.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model - FR LM Section](StructureDefinition-fr-lm-section.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-health-professional)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-health-professional.csv), [Excel](../StructureDefinition-fr-lm-health-professional.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-health-professional",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional",
  "version" : "0.1.0",
  "name" : "FRLMHealthProfessional",
  "title" : "Logical model - FR LM Health Professional",
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
  "description" : "Une personne (professionnel ou patient ou autre)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-health-professional",
      "path" : "fr-lm-health-professional",
      "short" : "Logical model - FR LM Health Professional",
      "definition" : "Une personne (professionnel ou patient ou autre)"
    },
    {
      "id" : "fr-lm-health-professional.identifier",
      "path" : "fr-lm-health-professional.identifier",
      "short" : "Identifiant.",
      "definition" : "Identifiant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-health-professional.name",
      "path" : "fr-lm-health-professional.name",
      "short" : "Nom du professionnel de santé.",
      "definition" : "Nom du professionnel de santé.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-human-name"
      }]
    },
    {
      "id" : "fr-lm-health-professional.address",
      "path" : "fr-lm-health-professional.address",
      "short" : "Adresses géopostales du professionnel de santé.",
      "definition" : "Adresses géopostales du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-health-professional.telecom",
      "path" : "fr-lm-health-professional.telecom",
      "short" : "Coordonnées télécom du professionnel de santé.",
      "definition" : "Coordonnées télécom du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "fr-lm-health-professional.professionalRole",
      "path" : "fr-lm-health-professional.professionalRole",
      "short" : "Rôle professionnel",
      "definition" : "Rôle professionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-health-professional.professionalRole.role",
      "path" : "fr-lm-health-professional.professionalRole.role",
      "short" : "Rôle du professionnel de santé.",
      "definition" : "Rôle du professionnel de santé.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-health-professional.professionalRole.organisation",
      "path" : "fr-lm-health-professional.professionalRole.organisation",
      "short" : "Organisation à laquelle le professionnel de santé est rattaché pour exercer ce rôle.",
      "definition" : "Organisation à laquelle le professionnel de santé est rattaché pour exercer ce rôle.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-health-professional.professionalRole.specialty",
      "path" : "fr-lm-health-professional.professionalRole.specialty",
      "short" : "Spécialité d'un professionnel de santé qui décrit le rôle fonctionnel qu'il exerce au sein de l'organisation.",
      "definition" : "Spécialité d'un professionnel de santé qui décrit le rôle fonctionnel qu'il exerce au sein de l'organisation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
