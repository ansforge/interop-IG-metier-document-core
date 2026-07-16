# Logical model - FR LM Legal Authentication - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Legal Authentication 

 
Représente le responsable du document, qui est : 
* soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel.
* soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …).
* soit le patient/usager responsable du document d'expression personnelle
* soit le SNR responsable du document produit via ce SNR.
* Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit
 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-legal-authentication)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-legal-authentication.csv), [Excel](../StructureDefinition-fr-lm-legal-authentication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-legal-authentication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-legal-authentication",
  "version" : "0.1.0",
  "name" : "FRLMLegalAuthentication",
  "title" : "Logical model - FR LM Legal Authentication",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Représente le responsable du document, qui est : \n - soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel. \n - soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …). \n - soit le patient/usager responsable du document d'expression personnelle \n - soit le SNR responsable du document produit via ce SNR. \n - Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-legal-authentication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-legal-authentication",
      "path" : "fr-lm-legal-authentication",
      "short" : "Logical model - FR LM Legal Authentication",
      "definition" : "Représente le responsable du document, qui est : \n - soit le professionnel qui prend la responsabilité du document produit par un lui-même ou un autre professionnel. \n - soit le professionnel qui prend la responsabilité du document produit par un système de structure (ES, …). \n - soit le patient/usager responsable du document d'expression personnelle \n - soit le SNR responsable du document produit via ce SNR. \n - Soit le Dossier Pharmaceutique (DP) responsable des documents qu'il produit",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "fr-lm-legal-authentication.dateTime",
      "path" : "fr-lm-legal-authentication.dateTime",
      "short" : "Date/Heure de la prise de responsabilité.",
      "definition" : "Date/Heure de la prise de responsabilité.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-legal-authentication.legalAuthenticator[x]",
      "path" : "fr-lm-legal-authentication.legalAuthenticator[x]",
      "short" : "Responsable du document.",
      "definition" : "Responsable du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    }]
  }
}

```
