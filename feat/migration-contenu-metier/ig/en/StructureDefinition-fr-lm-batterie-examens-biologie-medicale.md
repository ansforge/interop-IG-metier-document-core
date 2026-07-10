# Modèle logique métier - FR LM Batterie d'examens de biologie médicale - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Batterie d'examens de biologie médicale 

 
Entrée Batterie d'examens de biologie médicale 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-fr-lm-isolat-microbiologique.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-batterie-examens-biologie-medicale.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-batterie-examens-biologie-medicale.csv), [Excel](../StructureDefinition-fr-lm-batterie-examens-biologie-medicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-batterie-examens-biologie-medicale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale",
  "version" : "0.1.0",
  "name" : "FRLMBatterieExamensBiologieMedicale",
  "title" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Entrée Batterie d'examens de biologie médicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-batterie-examens-biologie-medicale",
      "path" : "fr-lm-batterie-examens-biologie-medicale",
      "short" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
      "definition" : "Entrée Batterie d'examens de biologie médicale"
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.codeBatterieExamen",
      "path" : "fr-lm-batterie-examens-biologie-medicale.codeBatterieExamen",
      "short" : "Code de la batterie d'examen",
      "definition" : "Code de la batterie d'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.laboratoireExecutant",
      "path" : "fr-lm-batterie-examens-biologie-medicale.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.prelevement",
      "path" : "fr-lm-batterie-examens-biologie-medicale.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.resultatElementCliniquePertinent",
      "path" : "fr-lm-batterie-examens-biologie-medicale.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.imageIllustrative",
      "path" : "fr-lm-batterie-examens-biologie-medicale.imageIllustrative",
      "short" : "Image illustrative",
      "definition" : "Image illustrative",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media"
      }]
    },
    {
      "id" : "fr-lm-batterie-examens-biologie-medicale.commentaire",
      "path" : "fr-lm-batterie-examens-biologie-medicale.commentaire",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
