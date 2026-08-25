# Logical model - FR LM Compte rendu de biologie de 1er niveau - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Compte rendu de biologie de 1er niveau 

 
Section Compte rendu de biologie de 1er niveau 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-FRLMCorpsDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMResultData.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMResultData.csv), [Excel](../StructureDefinition-FRLMResultData.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMResultData",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData",
  "version" : "0.1.0",
  "name" : "FRLMResultData",
  "title" : "Logical model - FR LM Compte rendu de biologie de 1er niveau",
  "status" : "draft",
  "date" : "2026-08-25T20:08:46+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultData",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMResultData",
      "path" : "FRLMResultData",
      "short" : "Logical model - FR LM Compte rendu de biologie de 1er niveau",
      "definition" : "Section Compte rendu de biologie de 1er niveau"
    },
    {
      "id" : "FRLMResultData.subSection",
      "path" : "FRLMResultData.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMResultData.entry.resultatsExamensBiologieMedicale",
      "path" : "FRLMResultData.entry.resultatsExamensBiologieMedicale",
      "short" : "Entrée Résultats d'examens de biologie médicale",
      "definition" : "Entrée Résultats d'examens de biologie médicale",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMResultatsExamensBiologieMedicale"
      }]
    }]
  }
}

```
