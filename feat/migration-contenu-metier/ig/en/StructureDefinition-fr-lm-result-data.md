# Logical model - FR LM Compte rendu de biologie de 1er niveau - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Compte rendu de biologie de 1er niveau 

 
Section Compte rendu de biologie de 1er niveau 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-result-data.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-result-data.csv), [Excel](../StructureDefinition-fr-lm-result-data.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-result-data",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-result-data",
  "version" : "0.1.0",
  "name" : "FRLMResultData",
  "title" : "Logical model - FR LM Compte rendu de biologie de 1er niveau",
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
  "description" : "Section Compte rendu de biologie de 1er niveau",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-result-data",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-result-data",
      "path" : "fr-lm-result-data",
      "short" : "Logical model - FR LM Compte rendu de biologie de 1er niveau",
      "definition" : "Section Compte rendu de biologie de 1er niveau"
    },
    {
      "id" : "fr-lm-result-data.subSection",
      "path" : "fr-lm-result-data.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-result-data.entry.resultatsExamensBiologieMedicale",
      "path" : "fr-lm-result-data.entry.resultatsExamensBiologieMedicale",
      "short" : "Entrée Résultats d'examens de biologie médicale",
      "definition" : "Entrée Résultats d'examens de biologie médicale",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-resultats-examens-biologie-medicale"
      }]
    }]
  }
}

```
