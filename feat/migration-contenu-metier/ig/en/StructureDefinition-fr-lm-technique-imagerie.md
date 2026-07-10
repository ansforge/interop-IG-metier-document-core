# Logical model- FR LM Technique imagerie - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Technique imagerie 

 
Entrée Technique imagerie 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-technique-imagerie.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-technique-imagerie.csv), [Excel](../StructureDefinition-fr-lm-technique-imagerie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-technique-imagerie",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-technique-imagerie",
  "version" : "0.1.0",
  "name" : "FRLMTechniqueImagerie",
  "title" : "Logical model- FR LM Technique imagerie",
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
  "description" : "Entrée Technique imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-technique-imagerie",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-technique-imagerie",
      "path" : "fr-lm-technique-imagerie",
      "short" : "Logical model- FR LM Technique imagerie",
      "definition" : "Entrée Technique imagerie"
    },
    {
      "id" : "fr-lm-technique-imagerie.codeActe",
      "path" : "fr-lm-technique-imagerie.codeActe",
      "short" : "Code de l'acte d'imagerie",
      "definition" : "Code de l'acte d'imagerie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-code-document-imagerie-cisis (1.2.250.1.213.1.1.5.687)"
      }
    },
    {
      "id" : "fr-lm-technique-imagerie.description",
      "path" : "fr-lm-technique-imagerie.description",
      "short" : "Partie narrative de l'observation",
      "definition" : "Partie narrative de l'observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Narrative"
      }]
    },
    {
      "id" : "fr-lm-technique-imagerie.modaliteAcquisition",
      "path" : "fr-lm-technique-imagerie.modaliteAcquisition",
      "short" : "Modalité d’acquisition",
      "definition" : "Modalité d’acquisition",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modalite-acquisition-cisis (1.2.250.1.213.1.1.5.618)"
      }
    },
    {
      "id" : "fr-lm-technique-imagerie.lateralite",
      "path" : "fr-lm-technique-imagerie.lateralite",
      "short" : "Latéralité et topographie",
      "definition" : "Latéralité et topographie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "SNOMED CT (2.16.840.1.113883.6.96)"
      }
    },
    {
      "id" : "fr-lm-technique-imagerie.lateralite.precisionTopographique",
      "path" : "fr-lm-technique-imagerie.lateralite.precisionTopographique",
      "short" : "Précision topographique",
      "definition" : "Précision topographique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-technique-imagerie.lateralite.precisionTopographique.nom",
      "path" : "fr-lm-technique-imagerie.lateralite.precisionTopographique.nom",
      "short" : "name",
      "definition" : "name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-technique-imagerie.lateralite.precisionTopographique.valeur",
      "path" : "fr-lm-technique-imagerie.lateralite.precisionTopographique.valeur",
      "short" : "Valeur de la topographie",
      "definition" : "Valeur de la topographie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modificateur-topographique-cisis (1.2.250.1.213.1.1.5.688)"
      }
    }]
  }
}

```
