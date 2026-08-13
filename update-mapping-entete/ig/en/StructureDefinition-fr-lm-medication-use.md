# Logical model - FR LM Medication Use - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Medication Use 

 
Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-medication-use.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-medication-use.csv), [Excel](../StructureDefinition-fr-lm-medication-use.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-medication-use",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-use",
  "version" : "0.1.0",
  "name" : "FRLMMedicationUse",
  "title" : "Logical model - FR LM Medication Use",
  "status" : "draft",
  "date" : "2026-08-13T13:19:20+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-use",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-medication-use",
      "path" : "fr-lm-medication-use",
      "short" : "Logical model - FR LM Medication Use",
      "definition" : "Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient."
    },
    {
      "id" : "fr-lm-medication-use.header.author[x]",
      "path" : "fr-lm-medication-use.header.author[x]",
      "short" : "Auteur de la déclaration d'utilisation du médicament"
    },
    {
      "id" : "fr-lm-medication-use.header.status",
      "path" : "fr-lm-medication-use.header.status",
      "short" : "Statut de la déclaration d'utilisation du médicament (par exemple : enregistré)"
    },
    {
      "id" : "fr-lm-medication-use.treatmentStatus",
      "path" : "fr-lm-medication-use.treatmentStatus",
      "short" : "Statut actuel de la prise du médicament (par exemple : en cours, suspendu, arrêté)",
      "definition" : "Statut actuel de la prise du médicament (par exemple : en cours, suspendu, arrêté)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication-use.changeType",
      "path" : "fr-lm-medication-use.changeType",
      "short" : "Type de changement relatif à l'utilisation du médicament dans une synthèse médicamenteuse (par exemple : ajouté, supprimé, modifié). Pertinent au moment de la sortie d'hospitalisation ou lors d'une modification de la liste des médicaments actifs.",
      "definition" : "Type de changement relatif à l'utilisation du médicament dans une synthèse médicamenteuse (par exemple : ajouté, supprimé, modifié). Pertinent au moment de la sortie d'hospitalisation ou lors d'une modification de la liste des médicaments actifs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication-use.medication",
      "path" : "fr-lm-medication-use.medication",
      "short" : "Décrit le produit médicamenteux.",
      "definition" : "Décrit le produit médicamenteux.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication"
      }]
    },
    {
      "id" : "fr-lm-medication-use.reason[x]",
      "path" : "fr-lm-medication-use.reason[x]",
      "short" : "Motif de l'utilisation du médicament.",
      "definition" : "Motif de l'utilisation du médicament.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-medication-use.dosageInstructions",
      "path" : "fr-lm-medication-use.dosageInstructions",
      "short" : "Détails sur la manière dont le médicament est ou a été pris, ou doit être pris.",
      "definition" : "Détails sur la manière dont le médicament est ou a été pris, ou doit être pris.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dosageInstructions"
      }]
    },
    {
      "id" : "fr-lm-medication-use.periodOfUse",
      "path" : "fr-lm-medication-use.periodOfUse",
      "short" : "Période pendant laquelle le patient a pris, prend ou est susceptible de prendre le médicament.",
      "definition" : "Période pendant laquelle le patient a pris, prend ou est susceptible de prendre le médicament.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-medication-use.derivedFrom[x]",
      "path" : "fr-lm-medication-use.derivedFrom[x]",
      "short" : "Prescriptions, délivrances ou administrations à l'origine de cette déclaration d'utilisation du médicament.",
      "definition" : "Prescriptions, délivrances ou administrations à l'origine de cette déclaration d'utilisation du médicament.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-item"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-dispense"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-medication-use.note",
      "path" : "fr-lm-medication-use.note",
      "short" : "Informations complémentaires concernant la déclaration d'utilisation du médicament.",
      "definition" : "Informations complémentaires concernant la déclaration d'utilisation du médicament.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
