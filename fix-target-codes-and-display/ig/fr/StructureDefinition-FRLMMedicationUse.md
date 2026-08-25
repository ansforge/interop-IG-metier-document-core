# Logical model - FR LM Medication Use - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Medication Use 

 
Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient. 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMMedicationUse)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMMedicationUse.csv), [Excel](../StructureDefinition-FRLMMedicationUse.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationUse",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse",
  "version" : "0.1.0",
  "name" : "FRLMMedicationUse",
  "title" : "Logical model - FR LM Medication Use",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationUse",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationUse",
      "path" : "FRLMMedicationUse",
      "short" : "Logical model - FR LM Medication Use",
      "definition" : "Déclaration de l'utilisation d'un médicament, faisant partie d'une synthèse des traitements médicamenteux du patient."
    },
    {
      "id" : "FRLMMedicationUse.header.author[x]",
      "path" : "FRLMMedicationUse.header.author[x]",
      "short" : "Auteur de la déclaration d'utilisation du médicament"
    },
    {
      "id" : "FRLMMedicationUse.header.status",
      "path" : "FRLMMedicationUse.header.status",
      "short" : "Statut de la déclaration d'utilisation du médicament (par exemple : enregistré)"
    },
    {
      "id" : "FRLMMedicationUse.treatmentStatus",
      "path" : "FRLMMedicationUse.treatmentStatus",
      "short" : "Statut actuel de la prise du médicament (par exemple : en cours, suspendu, arrêté)",
      "definition" : "Statut actuel de la prise du médicament (par exemple : en cours, suspendu, arrêté)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedicationUse.changeType",
      "path" : "FRLMMedicationUse.changeType",
      "short" : "Type de changement relatif à l'utilisation du médicament dans une synthèse médicamenteuse (par exemple : ajouté, supprimé, modifié). Pertinent au moment de la sortie d'hospitalisation ou lors d'une modification de la liste des médicaments actifs.",
      "definition" : "Type de changement relatif à l'utilisation du médicament dans une synthèse médicamenteuse (par exemple : ajouté, supprimé, modifié). Pertinent au moment de la sortie d'hospitalisation ou lors d'une modification de la liste des médicaments actifs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedicationUse.medication",
      "path" : "FRLMMedicationUse.medication",
      "short" : "Décrit le produit médicamenteux.",
      "definition" : "Décrit le produit médicamenteux.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      }]
    },
    {
      "id" : "FRLMMedicationUse.reason[x]",
      "path" : "FRLMMedicationUse.reason[x]",
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
      "id" : "FRLMMedicationUse.dosageInstructions",
      "path" : "FRLMMedicationUse.dosageInstructions",
      "short" : "Détails sur la manière dont le médicament est ou a été pris, ou doit être pris.",
      "definition" : "Détails sur la manière dont le médicament est ou a été pris, ou doit être pris.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
      }]
    },
    {
      "id" : "FRLMMedicationUse.periodOfUse",
      "path" : "FRLMMedicationUse.periodOfUse",
      "short" : "Période pendant laquelle le patient a pris, prend ou est susceptible de prendre le médicament.",
      "definition" : "Période pendant laquelle le patient a pris, prend ou est susceptible de prendre le médicament.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMMedicationUse.derivedFrom[x]",
      "path" : "FRLMMedicationUse.derivedFrom[x]",
      "short" : "Prescriptions, délivrances ou administrations à l'origine de cette déclaration d'utilisation du médicament.",
      "definition" : "Prescriptions, délivrances ou administrations à l'origine de cette déclaration d'utilisation du médicament.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMMedicationUse.note",
      "path" : "FRLMMedicationUse.note",
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
