# Logical model - FR LM Resultats d'examens de biologie medicale - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Resultats d'examens de biologie medicale 

 
Resultats d'examens de biologie medicale 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Compte rendu de biologie de 1er niveau](StructureDefinition-fr-lm-result-data.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-resultats-examens-biologie-medicale)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-resultats-examens-biologie-medicale.csv), [Excel](../StructureDefinition-fr-lm-resultats-examens-biologie-medicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-resultats-examens-biologie-medicale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultats-examens-biologie-medicale",
  "version" : "0.1.0",
  "name" : "FRLMResultatsExamensBiologieMedicale",
  "title" : "Logical model - FR LM Resultats d'examens de biologie medicale",
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
  "description" : "Resultats d'examens de biologie medicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultats-examens-biologie-medicale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-resultats-examens-biologie-medicale",
      "path" : "fr-lm-resultats-examens-biologie-medicale",
      "short" : "Logical model - FR LM Resultats d'examens de biologie medicale",
      "definition" : "Resultats d'examens de biologie medicale"
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.header.status",
      "path" : "fr-lm-resultats-examens-biologie-medicale.header.status",
      "short" : "Niveau de complétude"
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.code",
      "path" : "fr-lm-resultats-examens-biologie-medicale.code",
      "short" : "Code dont dérive le code de section",
      "definition" : "Code dont dérive le code de section",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.laboratoireExecutant",
      "path" : "fr-lm-resultats-examens-biologie-medicale.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant.",
      "definition" : "Laboratoire sous-traitant.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.prelevement",
      "path" : "fr-lm-resultats-examens-biologie-medicale.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.batterieExamensDeBiologieMedicale",
      "path" : "fr-lm-resultats-examens-biologie-medicale.batterieExamensDeBiologieMedicale",
      "short" : "Batterie d'examens de biologie médicale",
      "definition" : "Batterie d'examens de biologie médicale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.isolatMicrobiologique",
      "path" : "fr-lm-resultats-examens-biologie-medicale.isolatMicrobiologique",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-isolat-microbiologique"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.resultatElementCliniquePertinent",
      "path" : "fr-lm-resultats-examens-biologie-medicale.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.observationMedia",
      "path" : "fr-lm-resultats-examens-biologie-medicale.observationMedia",
      "short" : "Image ou graphe",
      "definition" : "Image ou graphe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media"
      }]
    },
    {
      "id" : "fr-lm-resultats-examens-biologie-medicale.commentaire",
      "path" : "fr-lm-resultats-examens-biologie-medicale.commentaire",
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
