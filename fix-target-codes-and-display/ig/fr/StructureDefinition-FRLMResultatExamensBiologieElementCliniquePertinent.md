# Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent 

 
Résultat d'examens de biologie / élement clinique pertinent 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-FRLMBatterieExamensBiologieMedicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-FRLMIsolatMicrobiologique.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMResultatExamensBiologieElementCliniquePertinent.csv), [Excel](../StructureDefinition-FRLMResultatExamensBiologieElementCliniquePertinent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMResultatExamensBiologieElementCliniquePertinent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent",
  "version" : "0.1.0",
  "name" : "FRLMResultatExamensBiologieElementCliniquePertinent",
  "title" : "Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent",
  "status" : "draft",
  "date" : "2026-08-20T08:53:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Résultat d'examens de biologie / élement clinique pertinent",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent",
      "short" : "Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent",
      "definition" : "Résultat d'examens de biologie / élement clinique pertinent"
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.header.status",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.header.status",
      "short" : "Niveau de complétude"
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.codeIdentification",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.codeIdentification",
      "short" : "Code d'identification de l'analyse ou de l'observation",
      "definition" : "Code d'identification de l'analyse ou de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat[x]",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.valeurResultat[x]",
      "short" : "Valeur du résultat",
      "definition" : "Valeur du résultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "Ratio"
      },
      {
        "code" : "Range"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.interpretation",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.interpretation",
      "short" : "Code d'interprétation",
      "definition" : "Code d'interprétation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.methode",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.methode",
      "short" : "Méthode ou technique employée",
      "definition" : "Méthode ou technique employée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.commentaire",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.commentaire",
      "short" : "Commentaire d'interprétation des résultats",
      "definition" : "Commentaire d'interprétation des résultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.prelevement",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.resultatsAnterieurs",
      "short" : "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. \n - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage.",
      "definition" : "Résultats antérieurs. Plusieurs résultats antérieurs peuvent être ajoutés. \n - Ils doivent être comparables avec le résultat rendu, c'est-à-dire obtenus suivant la même méthode ou une méthode comparable, et exprimés dans la même unité ou dans le même système de codage.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference",
      "path" : "FRLMResultatExamensBiologieElementCliniquePertinent.intervallesReference",
      "short" : "Intervalles de référence",
      "definition" : "Intervalles de référence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
