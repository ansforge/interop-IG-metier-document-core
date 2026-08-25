# Logical model - FR LM Resultats d'examens de biologie medicale - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Resultats d'examens de biologie medicale 

 
Resultats d'examens de biologie medicale 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Compte rendu de biologie de 1er niveau](StructureDefinition-FRLMResultData.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMResultatsExamensBiologieMedicale.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMResultatsExamensBiologieMedicale.csv), [Excel](../StructureDefinition-FRLMResultatsExamensBiologieMedicale.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMResultatsExamensBiologieMedicale",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatsExamensBiologieMedicale",
  "version" : "0.1.0",
  "name" : "FRLMResultatsExamensBiologieMedicale",
  "title" : "Logical model - FR LM Resultats d'examens de biologie medicale",
  "status" : "draft",
  "date" : "2026-08-25T11:56:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Resultats d'examens de biologie medicale",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatsExamensBiologieMedicale",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMResultatsExamensBiologieMedicale",
      "path" : "FRLMResultatsExamensBiologieMedicale",
      "short" : "Logical model - FR LM Resultats d'examens de biologie medicale",
      "definition" : "Resultats d'examens de biologie medicale"
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.header.status",
      "path" : "FRLMResultatsExamensBiologieMedicale.header.status",
      "short" : "Niveau de complétude"
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.code",
      "path" : "FRLMResultatsExamensBiologieMedicale.code",
      "short" : "Code dont dérive le code de section",
      "definition" : "Code dont dérive le code de section",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.laboratoireExecutant",
      "path" : "FRLMResultatsExamensBiologieMedicale.laboratoireExecutant",
      "short" : "Laboratoire sous-traitant.",
      "definition" : "Laboratoire sous-traitant.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoireExecutant"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.prelevement",
      "path" : "FRLMResultatsExamensBiologieMedicale.prelevement",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
      "path" : "FRLMResultatsExamensBiologieMedicale.batterieExamensDeBiologieMedicale",
      "short" : "Batterie d'examens de biologie médicale",
      "definition" : "Batterie d'examens de biologie médicale",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBatterieExamensBiologieMedicale"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique",
      "path" : "FRLMResultatsExamensBiologieMedicale.isolatMicrobiologique",
      "short" : "Isolat microbiologique",
      "definition" : "Isolat microbiologique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIsolatMicrobiologique"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
      "path" : "FRLMResultatsExamensBiologieMedicale.resultatElementCliniquePertinent",
      "short" : "Résultat d'examen de biologie / élément clinique pertinent",
      "definition" : "Résultat d'examen de biologie / élément clinique pertinent",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatExamensBiologieElementCliniquePertinent"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.observationMedia",
      "path" : "FRLMResultatsExamensBiologieMedicale.observationMedia",
      "short" : "Image ou graphe",
      "definition" : "Image ou graphe",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia"
      }]
    },
    {
      "id" : "FRLMResultatsExamensBiologieMedicale.commentaire",
      "path" : "FRLMResultatsExamensBiologieMedicale.commentaire",
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
