# Logical model - FR LM Hazardous Working Conditions - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Hazardous Working Conditions 

 
Section Facteurs de risque professionnels non codés 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMHazardousWorkingConditions)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Interdit : 2 éléments

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-FRLMSection.md) 

** Résumé **

Interdit : 2 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMHazardousWorkingConditions.csv), [Excel](../StructureDefinition-FRLMHazardousWorkingConditions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHazardousWorkingConditions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHazardousWorkingConditions",
  "version" : "0.1.0",
  "name" : "FRLMHazardousWorkingConditions",
  "title" : "Logical model - FR LM Hazardous Working Conditions",
  "status" : "draft",
  "date" : "2026-08-21T08:13:05+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Section Facteurs de risque professionnels non codés",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHazardousWorkingConditions",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHazardousWorkingConditions",
      "path" : "FRLMHazardousWorkingConditions",
      "short" : "Logical model - FR LM Hazardous Working Conditions",
      "definition" : "Section Facteurs de risque professionnels non codés"
    },
    {
      "id" : "FRLMHazardousWorkingConditions.subSection",
      "path" : "FRLMHazardousWorkingConditions.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMHazardousWorkingConditions.entry",
      "path" : "FRLMHazardousWorkingConditions.entry",
      "max" : "0"
    }]
  }
}

```
