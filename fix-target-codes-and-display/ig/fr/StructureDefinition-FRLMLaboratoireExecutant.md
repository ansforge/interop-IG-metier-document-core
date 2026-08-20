# Modèle logique métier - FR LM Laboratoire exécutant - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Modèle logique métier - FR LM Laboratoire exécutant 

 
Laboratoire exécutant 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-FRLMBatterieExamensBiologieMedicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-FRLMIsolatMicrobiologique.md), [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FRLMResultatExamensBiologieElementCliniquePertinent.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMLaboratoireExecutant)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMLaboratoireExecutant.csv), [Excel](../StructureDefinition-FRLMLaboratoireExecutant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMLaboratoireExecutant",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant",
  "version" : "0.1.0",
  "name" : "FRLMLaboratoireExecutant",
  "title" : "Modèle logique métier - FR LM Laboratoire exécutant",
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
  "description" : "Laboratoire exécutant",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMLaboratoireExecutant",
      "path" : "FRLMLaboratoireExecutant",
      "short" : "Modèle logique métier - FR LM Laboratoire exécutant",
      "definition" : "Laboratoire exécutant"
    },
    {
      "id" : "FRLMLaboratoireExecutant.dateExecution",
      "path" : "FRLMLaboratoireExecutant.dateExecution",
      "short" : "Date de l’exécution",
      "definition" : "Date de l’exécution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMLaboratoireExecutant.executant[x]",
      "path" : "FRLMLaboratoireExecutant.executant[x]",
      "short" : "Directeur du laboratoire",
      "definition" : "Directeur du laboratoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    }]
  }
}

```
