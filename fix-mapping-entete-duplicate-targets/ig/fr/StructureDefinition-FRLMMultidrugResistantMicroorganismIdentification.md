# Logical model - FR LM Multidrug Resistant Microorganism Identification - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Multidrug Resistant Microorganism Identification 

 
Identification de micro-organismes multirésistants 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMMultidrugResistantMicroorganismIdentification)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMMultidrugResistantMicroorganismIdentification.csv), [Excel](../StructureDefinition-FRLMMultidrugResistantMicroorganismIdentification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMultidrugResistantMicroorganismIdentification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMultidrugResistantMicroorganismIdentification",
  "version" : "0.1.0",
  "name" : "FRLMMultidrugResistantMicroorganismIdentification",
  "title" : "Logical model - FR LM Multidrug Resistant Microorganism Identification",
  "status" : "draft",
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Identification de micro-organismes multirésistants",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMultidrugResistantMicroorganismIdentification",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMultidrugResistantMicroorganismIdentification",
      "path" : "FRLMMultidrugResistantMicroorganismIdentification",
      "short" : "Logical model - FR LM Multidrug Resistant Microorganism Identification",
      "definition" : "Identification de micro-organismes multirésistants"
    },
    {
      "id" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "path" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "short" : "Code de l’observation",
      "definition" : "Code de l’observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "path" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "short" : "Description sous forme textuelle des micro-organismes identifiés",
      "definition" : "Description sous forme textuelle des micro-organismes identifiés",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
