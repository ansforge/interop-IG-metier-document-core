# Modèle logique métier - FR LM Isolat microbiologique - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Isolat microbiologique 

 
Isolat microbiologique 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMIsolatMicrobiologique.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMIsolatMicrobiologique.csv), [Excel](../StructureDefinition-FRLMIsolatMicrobiologique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMIsolatMicrobiologique",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIsolatMicrobiologique",
  "version" : "0.1.0",
  "name" : "FRLMIsolatMicrobiologique",
  "title" : "Modèle logique métier - FR LM Isolat microbiologique",
  "status" : "draft",
  "date" : "2026-09-03T10:02:14+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIsolatMicrobiologique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMIsolatMicrobiologique",
      "path" : "FRLMIsolatMicrobiologique",
      "short" : "Modèle logique métier - FR LM Isolat microbiologique",
      "definition" : "Isolat microbiologique"
    },
    {
      "id" : "FRLMIsolatMicrobiologique.header.date",
      "path" : "FRLMIsolatMicrobiologique.header.date",
      "short" : "Date et heure des résultats"
    },
    {
      "id" : "FRLMIsolatMicrobiologique.codeIsolat",
      "path" : "FRLMIsolatMicrobiologique.codeIsolat",
      "short" : "Code isolat",
      "definition" : "Code isolat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.isolatMicrobiologique",
      "path" : "FRLMIsolatMicrobiologique.isolatMicrobiologique",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat",
      "path" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
      "path" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.identifiant",
      "short" : "Identifiant de l'isolat",
      "definition" : "Identifiant de l'isolat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
      "path" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent",
      "short" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
      "definition" : "L'agent infectieux cultivé (bactérie, levure, virus, parasite)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
      "path" : "FRLMIsolatMicrobiologique.isolatMicrobiologique.isolat.agent.code",
      "short" : "Code isolat",
      "definition" : "Code isolat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.laboratoireExecutant",
      "path" : "FRLMIsolatMicrobiologique.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
      "path" : "FRLMIsolatMicrobiologique.batterieExamensDeBiologieMedicale",
      "short" : "Batterie d'examens de biologie médicale",
      "definition" : "Batterie d'examens de biologie médicale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBatterieExamensBiologieMedicale"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.resultatElementCliniquePertinent",
      "path" : "FRLMIsolatMicrobiologique.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.imageIllustrative",
      "path" : "FRLMIsolatMicrobiologique.imageIllustrative",
      "short" : "Image ou graphe",
      "definition" : "Image ou graphe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
      }]
    },
    {
      "id" : "FRLMIsolatMicrobiologique.commentaire",
      "path" : "FRLMIsolatMicrobiologique.commentaire",
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
