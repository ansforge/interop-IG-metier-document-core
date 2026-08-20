# Logical model - FR LM Allergies And Intolerances - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Allergies And Intolerances 

 
Section Allergies et hypersensibilités 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMAllergiesAndIntolerances)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMAllergiesAndIntolerances.csv), [Excel](../StructureDefinition-FRLMAllergiesAndIntolerances.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAllergiesAndIntolerances",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
  "version" : "0.1.0",
  "name" : "FRLMAllergiesAndIntolerances",
  "title" : "Logical model - FR LM Allergies And Intolerances",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergiesAndIntolerances",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAllergiesAndIntolerances",
      "path" : "FRLMAllergiesAndIntolerances",
      "short" : "Logical model - FR LM Allergies And Intolerances",
      "definition" : "Section Allergies et hypersensibilités"
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.titleSection",
      "path" : "FRLMAllergiesAndIntolerances.titleSection",
      "short" : "Allergies et hypersensibilités",
      "min" : 1
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.subSection",
      "path" : "FRLMAllergiesAndIntolerances.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.entry",
      "path" : "FRLMAllergiesAndIntolerances.entry",
      "min" : 1
    },
    {
      "id" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "path" : "FRLMAllergiesAndIntolerances.entry.allergieIntolerance",
      "short" : "Entrée Allergie ou Hypersensibilité",
      "definition" : "Entrée Allergie ou Hypersensibilité",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergyIntolerance"
      }]
    }]
  }
}

```
