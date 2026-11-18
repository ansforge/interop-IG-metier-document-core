# Modèle logique métier - FR LM Batterie d'examens de biologie médicale - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Modèle logique métier - FR LM Batterie d'examens de biologie médicale 

 
Entrée Batterie d'examens de biologie médicale 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-FRLMIsolatMicrobiologique.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMBatterieExamensBiologieMedicale.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMBatterieExamensBiologieMedicale.csv), [Excel](../StructureDefinition-FRLMBatterieExamensBiologieMedicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMBatterieExamensBiologieMedicale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBatterieExamensBiologieMedicale",
  "version" : "0.1.0",
  "name" : "FRLMBatterieExamensBiologieMedicale",
  "title" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
  "status" : "draft",
  "date" : "2026-09-04T09:35:26+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBatterieExamensBiologieMedicale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMBatterieExamensBiologieMedicale",
      "path" : "FRLMBatterieExamensBiologieMedicale",
      "short" : "Modèle logique métier - FR LM Batterie d'examens de biologie médicale",
      "definition" : "Entrée Batterie d'examens de biologie médicale"
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.codeBatterieExamen",
      "path" : "FRLMBatterieExamensBiologieMedicale.codeBatterieExamen",
      "short" : "Code de la batterie d'examen",
      "definition" : "Code de la batterie d'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.laboratoireExecutant",
      "path" : "FRLMBatterieExamensBiologieMedicale.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "definition" : "Laboratoire sous-traitant. Apparaît à ce niveau si et et seulement si ce résultat a été produit par un laboratoire exécutant distinct du laboratoire exécutant déclaré aux niveaux supérieurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant"
      }]
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.prelevement",
      "path" : "FRLMBatterieExamensBiologieMedicale.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
      "path" : "FRLMBatterieExamensBiologieMedicale.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent"
      }]
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.imageIllustrative",
      "path" : "FRLMBatterieExamensBiologieMedicale.imageIllustrative",
      "short" : "Image illustrative",
      "definition" : "Image illustrative",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
      }]
    },
    {
      "id" : "FRLMBatterieExamensBiologieMedicale.commentaire",
      "path" : "FRLMBatterieExamensBiologieMedicale.commentaire",
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
