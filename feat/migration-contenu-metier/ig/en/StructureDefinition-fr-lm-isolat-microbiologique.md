# Modèle logique métier - FR LM Isolat microbiologique - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Isolat microbiologique 

 
Isolat microbiologique 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-isolat-microbiologique.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-isolat-microbiologique.csv), [Excel](../StructureDefinition-fr-lm-isolat-microbiologique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-isolat-microbiologique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-isolat-microbiologique",
  "version" : "0.1.0",
  "name" : "FRLMIsolatMicrobiologique",
  "title" : "Modèle logique métier - FR LM Isolat microbiologique",
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
  "description" : "Isolat microbiologique",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-isolat-microbiologique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-isolat-microbiologique",
      "path" : "fr-lm-isolat-microbiologique",
      "short" : "Modèle logique métier - FR LM Isolat microbiologique",
      "definition" : "Isolat microbiologique"
    },
    {
      "id" : "fr-lm-isolat-microbiologique.header.date",
      "path" : "fr-lm-isolat-microbiologique.header.date",
      "short" : "Date et heure des résultats"
    },
    {
      "id" : "fr-lm-isolat-microbiologique.codeIsolat",
      "path" : "fr-lm-isolat-microbiologique.codeIsolat",
      "short" : "Code isolat",
      "definition" : "Code isolat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.isolatMicrobiologique",
      "path" : "fr-lm-isolat-microbiologique.isolatMicrobiologique",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat",
      "path" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.identifiant",
      "path" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.identifiant",
      "short" : "Identifiant de l'isolat",
      "definition" : "Identifiant de l'isolat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.agent",
      "path" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.agent",
      "short" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
      "definition" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.agent.code",
      "path" : "fr-lm-isolat-microbiologique.isolatMicrobiologique.isolat.agent.code",
      "short" : "Code isolat",
      "definition" : "Code isolat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.laboratoireExecutant",
      "path" : "fr-lm-isolat-microbiologique.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-laboratoire-executant"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.batterieExamensDeBiologieMedicale",
      "path" : "fr-lm-isolat-microbiologique.batterieExamensDeBiologieMedicale",
      "short" : "Batterie d'examens de biologie médicale",
      "definition" : "Batterie d'examens de biologie médicale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-batterie-examens-biologie-medicale"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.resultatElementCliniquePertinent",
      "path" : "fr-lm-isolat-microbiologique.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultat-examens-biologie-element-clinique-pertinent"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.imageIllustrative",
      "path" : "fr-lm-isolat-microbiologique.imageIllustrative",
      "short" : "Image ou graphe",
      "definition" : "Image ou graphe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation-media"
      }]
    },
    {
      "id" : "fr-lm-isolat-microbiologique.commentaire",
      "path" : "fr-lm-isolat-microbiologique.commentaire",
      "short" : "Commentaire de section interprétant l'ensemble des résultats",
      "definition" : "Commentaire de section interprétant l'ensemble des résultats",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
