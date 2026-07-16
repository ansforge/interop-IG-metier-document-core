# Modèle logique métier - FR LM Batterie d'examens de biologie médicale - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Modèle logique métier - FR LM Batterie d'examens de biologie médicale 

 
Entrée Batterie d'examens de biologie médicale 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-batterie-examens-biologie-medicale)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-batterie-examens-biologie-medicale.csv), [Excel](../StructureDefinition-fr-lm-batterie-examens-biologie-medicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-batterie-examens-biologie-medicale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale",
  "version" : "0.1.0",
  "name" : "FRLMBatterieExamensBiologieMedicale",
  "title" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
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
  "description" : "Entrée Batterie d'examens de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-batterie-examens-biologie-medicale",
      "path" : "fr-lm-batterie-examens-biologie-medicale",
      "short" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
      "definition" : "Entrée Batterie d'examens de biologie médicale"
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.codeBatterieExamen",
      "path" : "fr-lm-batterie-examens-biologie-medicale.codeBatterieExamen",
      "short" : "Code de la batterie d'examen",
      "definition" : "Code de la batterie d'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.laboratoireExecutant",
      "path" : "fr-lm-batterie-examens-biologie-medicale.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.prelevement",
      "path" : "fr-lm-batterie-examens-biologie-medicale.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.resultatElementCliniquePertinent",
      "path" : "fr-lm-batterie-examens-biologie-medicale.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.imageIllustrative",
      "path" : "fr-lm-batterie-examens-biologie-medicale.imageIllustrative",
      "short" : "Image illustrative",
      "definition" : "Image illustrative",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.commentaire",
      "path" : "fr-lm-batterie-examens-biologie-medicale.commentaire",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
