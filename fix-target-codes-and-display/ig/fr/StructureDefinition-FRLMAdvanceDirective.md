# Logical model - FR LM Advance Directive - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Advance Directive 

 
Directive anticipée 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Advance Directives](StructureDefinition-FRLMAdvanceDirectives.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMAdvanceDirective)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 1 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMAdvanceDirective.csv), [Excel](../StructureDefinition-FRLMAdvanceDirective.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAdvanceDirective",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective",
  "version" : "0.1.0",
  "name" : "FRLMAdvanceDirective",
  "title" : "Logical model - FR LM Advance Directive",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Directive anticipée",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAdvanceDirective",
      "path" : "FRLMAdvanceDirective",
      "short" : "Logical model - FR LM Advance Directive",
      "definition" : "Directive anticipée"
    },
    {
      "id" : "FRLMAdvanceDirective.header.status",
      "path" : "FRLMAdvanceDirective.header.status",
      "short" : "Statut de la directive anticipée",
      "min" : 1
    },
    {
      "id" : "FRLMAdvanceDirective.date",
      "path" : "FRLMAdvanceDirective.date",
      "short" : "Date de la directive anticipée",
      "definition" : "Date de la directive anticipée",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMAdvanceDirective.category",
      "path" : "FRLMAdvanceDirective.category",
      "short" : "Type de directive",
      "definition" : "Type de directive",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-type-directive-anticipee-cisis (1.2.250.1.213.1.1.5.136)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-type-directive-anticipee-cisis|20260716085853"
      }
    },
    {
      "id" : "FRLMAdvanceDirective.value",
      "path" : "FRLMAdvanceDirective.value",
      "short" : "Procédure autorisée ou pas",
      "definition" : "Procédure autorisée ou pas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMAdvanceDirective.note",
      "path" : "FRLMAdvanceDirective.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMAdvanceDirective.attachment",
      "path" : "FRLMAdvanceDirective.attachment",
      "short" : "Piece jointe associee a la directive",
      "definition" : "Piece jointe associee a la directive",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    }]
  }
}

```
