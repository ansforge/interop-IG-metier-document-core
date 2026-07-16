# Logical model - FR LM Prescription - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Prescription 

 
Prescription 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Immunisation](StructureDefinition-fr-lm-immunisation.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-prescription-entree)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-prescription-entree.csv), [Excel](../StructureDefinition-fr-lm-prescription-entree.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-prescription-entree",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-entree",
  "version" : "0.1.0",
  "name" : "FRLMPrescriptionEntree",
  "title" : "Logical model - FR LM Prescription",
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
  "description" : "Prescription ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-entree",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-prescription-entree",
      "path" : "fr-lm-prescription-entree",
      "short" : "Logical model - FR LM Prescription",
      "definition" : "Prescription "
    },
    {
      "id" : "fr-lm-prescription-entree.identifiantPrescription",
      "path" : "fr-lm-prescription-entree.identifiantPrescription",
      "short" : "Identifiant de la prescription",
      "definition" : "Identifiant de la prescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-prescription-entree.nombreRenouvellements",
      "path" : "fr-lm-prescription-entree.nombreRenouvellements",
      "short" : "Nombre de renouvellements possibles",
      "definition" : "Nombre de renouvellements possibles",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "fr-lm-prescription-entree.quantitePrescription",
      "path" : "fr-lm-prescription-entree.quantitePrescription",
      "short" : "Quantité",
      "definition" : "Quantité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-prescription-entree.instructionsAuDispensateur",
      "path" : "fr-lm-prescription-entree.instructionsAuDispensateur",
      "short" : "Instructions au dispensateur",
      "definition" : "Instructions au dispensateur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
