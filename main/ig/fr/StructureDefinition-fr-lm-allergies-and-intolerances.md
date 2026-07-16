# Logical model - FR LM Allergies And Intolerances - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Allergies And Intolerances 

 
Section Allergies et hypersensibilités 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-allergies-and-intolerances)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-allergies-and-intolerances.csv), [Excel](../StructureDefinition-fr-lm-allergies-and-intolerances.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-allergies-and-intolerances",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergies-and-intolerances",
  "version" : "0.1.0",
  "name" : "FRLMAllergiesAndIntolerances",
  "title" : "Logical model - FR LM Allergies And Intolerances",
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
  "description" : "Section Allergies et hypersensibilités",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergies-and-intolerances",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-allergies-and-intolerances",
      "path" : "fr-lm-allergies-and-intolerances",
      "short" : "Logical model - FR LM Allergies And Intolerances",
      "definition" : "Section Allergies et hypersensibilités"
    },
    {
      "id" : "fr-lm-allergies-and-intolerances.titleSection",
      "path" : "fr-lm-allergies-and-intolerances.titleSection",
      "short" : "Allergies et hypersensibilités",
      "min" : 1
    },
    {
      "id" : "fr-lm-allergies-and-intolerances.subSection",
      "path" : "fr-lm-allergies-and-intolerances.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-allergies-and-intolerances.entry",
      "path" : "fr-lm-allergies-and-intolerances.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-allergies-and-intolerances.entry.allergieIntolerance",
      "path" : "fr-lm-allergies-and-intolerances.entry.allergieIntolerance",
      "short" : "Entrée Allergie ou Hypersensibilité",
      "definition" : "Entrée Allergie ou Hypersensibilité",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance"
      }]
    }]
  }
}

```
