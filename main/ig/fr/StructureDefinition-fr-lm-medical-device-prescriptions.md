# Logical Model - FR LM Medical Device Prescriptions - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical Model - FR LM Medical Device Prescriptions 

 
Section Prescription de dispositifs médicaux 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-medical-device-prescriptions)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 **Vue différentielle** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMSection](StructureDefinition-fr-lm-section.md) 

** Résumé **

Obligatoire : 1 élément(1 élément obligatoire(s) imbriqué(s))
 Interdit : 1 élément

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-medical-device-prescriptions.csv), [Excel](../StructureDefinition-fr-lm-medical-device-prescriptions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-medical-device-prescriptions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medical-device-prescriptions",
  "version" : "0.1.0",
  "name" : "FRLMMedicalDevicePrescriptions",
  "title" : "Logical Model - FR LM Medical Device Prescriptions",
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
  "description" : "Section Prescription de dispositifs médicaux",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medical-device-prescriptions",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-medical-device-prescriptions",
      "path" : "fr-lm-medical-device-prescriptions",
      "short" : "Logical Model - FR LM Medical Device Prescriptions",
      "definition" : "Section Prescription de dispositifs médicaux"
    },
    {
      "id" : "fr-lm-medical-device-prescriptions.subSection",
      "path" : "fr-lm-medical-device-prescriptions.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-medical-device-prescriptions.entry",
      "path" : "fr-lm-medical-device-prescriptions.entry",
      "min" : 1
    },
    {
      "id" : "fr-lm-medical-device-prescriptions.entry.deviceUse",
      "path" : "fr-lm-medical-device-prescriptions.entry.deviceUse",
      "short" : "Entrée Dispositif médical prescrit",
      "definition" : "Entrée Dispositif médical prescrit",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device-use"
      }]
    }]
  }
}

```
