# Modèle logique métier - FR LM Adverse Drug Reaction - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Adverse Drug Reaction 

 
Effet indésirable médicamenteux 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Predictable Adverse Drug Reaction](StructureDefinition-fr-lm-predictable-adverse-drug-reaction.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-adverse-drug-reaction.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-adverse-drug-reaction.csv), [Excel](../StructureDefinition-fr-lm-adverse-drug-reaction.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-adverse-drug-reaction",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction",
  "version" : "0.1.0",
  "name" : "FRLMAdverseDrugReaction",
  "title" : "Modèle logique métier - FR LM Adverse Drug Reaction",
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
  "description" : "Effet indésirable médicamenteux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-adverse-drug-reaction",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-adverse-drug-reaction",
      "path" : "fr-lm-adverse-drug-reaction",
      "short" : "Modèle logique métier - FR LM Adverse Drug Reaction",
      "definition" : "Effet indésirable médicamenteux"
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.adverseDrugReactionType",
      "path" : "fr-lm-adverse-drug-reaction.adverseDrugReactionType",
      "short" : "Type d'effet indésirable",
      "definition" : "Type d'effet indésirable",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Type d'effet indésirable provenant du jdv-type-effet-indesirable-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-origine-effet-indesirable-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.value",
      "path" : "fr-lm-adverse-drug-reaction.value",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.medicationAdministration",
      "path" : "fr-lm-adverse-drug-reaction.medicationAdministration",
      "short" : "Médicament, substance incriminée, posologie",
      "definition" : "Médicament, substance incriminée, posologie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.reaction",
      "path" : "fr-lm-adverse-drug-reaction.reaction",
      "short" : "Réaction observée",
      "definition" : "Réaction observée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.causalityAssessment",
      "path" : "fr-lm-adverse-drug-reaction.causalityAssessment",
      "short" : "Imputabilité",
      "definition" : "Imputabilité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Niveau d'imputabilité provenant du jdv-imputabilite-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-imputabilite-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.severity",
      "path" : "fr-lm-adverse-drug-reaction.severity",
      "short" : "Gravité",
      "definition" : "Gravité",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Gravité provenant du jdv-gravite-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-gravite-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-adverse-drug-reaction.outcome",
      "path" : "fr-lm-adverse-drug-reaction.outcome",
      "short" : "Évolution de l'effet indésirable",
      "definition" : "Évolution de l'effet indésirable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "Évolution de l'effet indésirable provenant du jdv-evolution-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-evolution-cisis|20260619134042"
      }
    }]
  }
}

```
