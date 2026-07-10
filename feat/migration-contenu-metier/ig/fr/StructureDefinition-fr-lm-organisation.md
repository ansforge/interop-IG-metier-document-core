# Logical model - FR LM Organisation - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Organisation 

 
Une structure (organisation) pour les professionnels de santé. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Entry](StructureDefinition-fr-lm-entry.md), [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md), [Logical model - FR LM Health Professional](StructureDefinition-fr-lm-health-professional.md)... Show 15 more, [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md), [Logical model - FR LM Informant](StructureDefinition-fr-lm-informant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-fr-lm-intended-recipient.md), [Modèle logique métier - FR LM Laboratoire exécutant](StructureDefinition-fr-lm-laboratoire-executant.md), [Logical model - FR LM Legal Authentication](StructureDefinition-fr-lm-legal-authentication.md), [Logical model - FR LM Location](StructureDefinition-fr-lm-location.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Order](StructureDefinition-fr-lm-order.md), [Logical model - FR LM Organisation](StructureDefinition-fr-lm-organisation.md), [Logical model - FR LM Participant](StructureDefinition-fr-lm-participant.md), [Logical model - FR LM Patient](StructureDefinition-fr-lm-patient.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md), [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md), [Logical model - FR LM Section](StructureDefinition-fr-lm-section.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-organisation)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-organisation.csv), [Excel](../StructureDefinition-fr-lm-organisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-organisation",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation",
  "version" : "0.1.0",
  "name" : "FRLMOrganisation",
  "title" : "Logical model - FR LM Organisation",
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
  "description" : "Une structure (organisation) pour les professionnels de santé.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-organisation",
      "path" : "fr-lm-organisation",
      "short" : "Logical model - FR LM Organisation",
      "definition" : "Une structure (organisation) pour les professionnels de santé.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "fr-lm-organisation.identifier",
      "path" : "fr-lm-organisation.identifier",
      "short" : "Identifiant de la structure",
      "definition" : "Identifiant de la structure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-organisation.type",
      "path" : "fr-lm-organisation.type",
      "short" : "Type de structure",
      "definition" : "Type de structure",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Catégorie d'établissement provenant du jdv FHIR https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-j368-categorie-etablissement-cisis|20260505120000"
      }
    },
    {
      "id" : "fr-lm-organisation.name",
      "path" : "fr-lm-organisation.name",
      "short" : "Nom de la structure",
      "definition" : "Nom de la structure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-organisation.address",
      "path" : "fr-lm-organisation.address",
      "short" : "Adresse de la structure",
      "definition" : "Adresse de la structure",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-organisation.telecom",
      "path" : "fr-lm-organisation.telecom",
      "short" : "Coordonnées télécom",
      "definition" : "Coordonnées télécom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "fr-lm-organisation.partOf",
      "path" : "fr-lm-organisation.partOf",
      "short" : "Lieu dont celui-ci fait physiquement partie",
      "definition" : "Lieu dont celui-ci fait physiquement partie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-organisation.industrySector",
      "path" : "fr-lm-organisation.industrySector",
      "short" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS",
      "definition" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "JDV_J02_XdsHealthcareFacilityTypeCode_CISIS (Code de type d'établissement de santé provenant du JDV FHIR)",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/JDV_J02-XdsHealthcareFacilityTypeCode-CISIS/FHIR/JDV-J02-XdsHealthcareFacilityTypeCode-CISIS|20260223120000"
      }
    }]
  }
}

```
