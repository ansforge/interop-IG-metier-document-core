# Modèle logique métier - FR LM Laboratoire exécutant - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Laboratoire exécutant 

 
Laboratoire exécutant 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md), [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-fr-lm-resultat-examens-biologie-element-clinique-pertinent.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-laboratoire-executant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-laboratoire-executant.csv), [Excel](../StructureDefinition-fr-lm-laboratoire-executant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-laboratoire-executant",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant",
  "version" : "0.1.0",
  "name" : "FRLMLaboratoireExecutant",
  "title" : "Modèle logique métier - FR LM Laboratoire exécutant",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-laboratoire-executant",
      "path" : "fr-lm-laboratoire-executant",
      "short" : "Modèle logique métier - FR LM Laboratoire exécutant",
      "definition" : "Laboratoire exécutant"
    },
    {
      "id" : "fr-lm-laboratoire-executant.dateExecution",
      "path" : "fr-lm-laboratoire-executant.dateExecution",
      "short" : "Date de l’exécution",
      "definition" : "Date de l’exécution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-laboratoire-executant.executant[x]",
      "path" : "fr-lm-laboratoire-executant.executant[x]",
      "short" : "Directeur du laboratoire",
      "definition" : "Directeur du laboratoire",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    }]
  }
}

```
