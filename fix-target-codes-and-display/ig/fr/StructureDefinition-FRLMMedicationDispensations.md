# Logical model - FR LM Medication Dispensations - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Medication Dispensations 

 
Section Dispensation médicaments 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMMedicationDispensations)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMMedicationDispensations.csv), [Excel](../StructureDefinition-FRLMMedicationDispensations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationDispensations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
  "version" : "0.1.0",
  "name" : "FRLMMedicationDispensations",
  "title" : "Logical model - FR LM Medication Dispensations",
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
  "description" : "Section Dispensation médicaments",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispensations",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationDispensations",
      "path" : "FRLMMedicationDispensations",
      "short" : "Logical model - FR LM Medication Dispensations",
      "definition" : "Section Dispensation médicaments"
    },
    {
      "id" : "FRLMMedicationDispensations.titleSection",
      "path" : "FRLMMedicationDispensations.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationDispensations.subSection",
      "path" : "FRLMMedicationDispensations.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMMedicationDispensations.entry",
      "path" : "FRLMMedicationDispensations.entry",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationDispensations.entry.medicationDispense",
      "path" : "FRLMMedicationDispensations.entry.medicationDispense",
      "short" : "Entrée Traitement dispensé",
      "definition" : "Entrée Traitement dispensé",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense"
      }]
    }]
  }
}

```
