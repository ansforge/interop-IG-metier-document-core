# Logical model - FR LM SOP Instance - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM SOP Instance 

 
SOP Instance 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Series](StructureDefinition-FRLMSeries.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMSOPInstance)

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

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMSOPInstance.csv), [Excel](../StructureDefinition-FRLMSOPInstance.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSOPInstance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance",
  "version" : "0.1.0",
  "name" : "FRLMSOPInstance",
  "title" : "Logical model - FR LM SOP Instance",
  "status" : "draft",
  "date" : "2026-08-24T13:13:01+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "SOP Instance",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSOPInstance",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSOPInstance",
      "path" : "FRLMSOPInstance",
      "short" : "Logical model - FR LM SOP Instance",
      "definition" : "SOP Instance"
    },
    {
      "id" : "FRLMSOPInstance.header.identifier",
      "path" : "FRLMSOPInstance.header.identifier",
      "short" : "UUID SOP instance",
      "min" : 1
    },
    {
      "id" : "FRLMSOPInstance.sopClass",
      "path" : "FRLMSOPInstance.sopClass",
      "short" : "Classe SOP",
      "definition" : "Classe SOP",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "JDV-SOPClass_CISIS (1.2.250.1.213.1.1.5.689)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-sop-class-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMSOPInstance.instanceNumber",
      "path" : "FRLMSOPInstance.instanceNumber",
      "short" : "Numéro de l'instance dans la série",
      "definition" : "Numéro de l'instance dans la série",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMSOPInstance.numberOfFrames",
      "path" : "FRLMSOPInstance.numberOfFrames",
      "short" : "Nombre de cadres composant l'instance",
      "definition" : "Nombre de cadres composant l'instance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
