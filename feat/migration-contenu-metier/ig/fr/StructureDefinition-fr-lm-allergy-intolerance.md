# Logical model - FR LM Allergy Intolerance - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Allergy Intolerance 

 
Allergie ou Hypersensibilité 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Allergies And Intolerances](StructureDefinition-fr-lm-allergies-and-intolerances.md) and [Logical model - FR LM Examination Report](StructureDefinition-fr-lm-examination-report.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-allergy-intolerance)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Organization Period (http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-organization-period.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-allergy-intolerance.csv), [Excel](../StructureDefinition-fr-lm-allergy-intolerance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-allergy-intolerance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance",
  "version" : "0.1.0",
  "name" : "FRLMAllergyIntolerance",
  "title" : "Logical model - FR LM Allergy Intolerance",
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
  "description" : "Allergie ou Hypersensibilité",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-allergy-intolerance",
      "path" : "fr-lm-allergy-intolerance",
      "short" : "Logical model - FR LM Allergy Intolerance",
      "definition" : "Allergie ou Hypersensibilité"
    },
    {
      "id" : "fr-lm-allergy-intolerance.header.status",
      "path" : "fr-lm-allergy-intolerance.header.status",
      "short" : "Statut clinique de l'allergie",
      "binding" : {
        "description" : "jdv-hl7-allergyintolerance-clinical-cisis (2.16.840.1.113883.4.642.3.1372)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-allergyintolerance-clinical-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.type",
      "path" : "fr-lm-allergy-intolerance.type",
      "short" : "Allergie / hypersensibilité non allergique / intolérance / idiosyncrasie",
      "definition" : "Allergie / hypersensibilité non allergique / intolérance / idiosyncrasie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : " jdv-type-event-indesirable-previsible-cisis (1.2.250.1.213.1.1.5.842)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-evenement-indesirable-previsible-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.category",
      "path" : "fr-lm-allergy-intolerance.category",
      "short" : "food | medication | environment | biologic",
      "definition" : "food | medication | environment | biologic",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : " jdv-hl7-allergy-intolerance-category-cisis (2.16.840.1.113883.4.642.3.133)"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.agentOrAllergen",
      "path" : "fr-lm-allergy-intolerance.agentOrAllergen",
      "short" : "Agent responsable\n- Médicaments : CIP ou UCD\n- Substances : SMS\n- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales\n- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions\n- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis",
      "definition" : "Agent responsable\n- Médicaments : CIP ou UCD\n- Substances : SMS\n- Aliments : CIM-11 Chapitre X Extensions – Allergènes ou substances non médicinales\n- Agents environnementaux ou physiques : idem CIM-11 Chapitre X Extensions\n- Allergènes pouvant induire une contre-indication vaccinale : jdv-allergie-vaccin-cisis",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.note",
      "path" : "fr-lm-allergy-intolerance.note",
      "short" : "commentaire",
      "definition" : "commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.criticality",
      "path" : "fr-lm-allergy-intolerance.criticality",
      "short" : "Criticité",
      "definition" : "Criticité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-allergy-intolerance-criticality-cisis (2.16.840.1.113883.4.642.3.129",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-allergy-intolerance-criticality-cisis|20260619134041"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.certainty",
      "path" : "fr-lm-allergy-intolerance.certainty",
      "short" : "Certitude",
      "definition" : "Certitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-condition-ver-status-cisis (2.16.840.1.113883.4.642.3.166)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-condition-ver-status-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.period",
      "path" : "fr-lm-allergy-intolerance.period",
      "short" : "Période",
      "definition" : "Période",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.period.onsetDate",
      "path" : "fr-lm-allergy-intolerance.period.onsetDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.period.endDate",
      "path" : "fr-lm-allergy-intolerance.period.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction",
      "path" : "fr-lm-allergy-intolerance.reaction",
      "short" : "Réaction observée",
      "definition" : "Réaction observée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.agentOrAllergen",
      "path" : "fr-lm-allergy-intolerance.reaction.agentOrAllergen",
      "short" : "Agent responsable : - Substances : SMS",
      "definition" : "Agent responsable : - Substances : SMS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "SMS"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.manifestation",
      "path" : "fr-lm-allergy-intolerance.reaction.manifestation",
      "short" : "Manifestation\nCIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hypersen-sibilité",
      "definition" : "Manifestation\nCIM-11 / Chapitre 04 Maladies du système immunitaire / Bloc Affections allergiques ou d'hypersen-sibilité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "CIM-11"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.severity",
      "path" : "fr-lm-allergy-intolerance.reaction.severity",
      "short" : "Sévérité de la manifestion",
      "definition" : "Sévérité de la manifestion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "SNOMED_CT (preferred)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-severite-observation-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.period",
      "path" : "fr-lm-allergy-intolerance.reaction.period",
      "short" : "Période",
      "definition" : "Période",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.period.onsetDate",
      "path" : "fr-lm-allergy-intolerance.reaction.period.onsetDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-allergy-intolerance.reaction.period.endDate",
      "path" : "fr-lm-allergy-intolerance.reaction.period.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
