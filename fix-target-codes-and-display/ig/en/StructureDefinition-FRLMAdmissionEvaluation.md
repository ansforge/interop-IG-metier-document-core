# Logical model - FR LM Admission Evaluation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Admission Evaluation 

 
Section Évaluation à l'admission 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAdmissionEvaluation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAdmissionEvaluation.csv), [Excel](../StructureDefinition-FRLMAdmissionEvaluation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAdmissionEvaluation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdmissionEvaluation",
  "version" : "0.1.0",
  "name" : "FRLMAdmissionEvaluation",
  "title" : "Logical model - FR LM Admission Evaluation",
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
  "description" : "Section Évaluation à l'admission",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdmissionEvaluation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSection|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAdmissionEvaluation",
      "path" : "FRLMAdmissionEvaluation",
      "short" : "Logical model - FR LM Admission Evaluation",
      "definition" : "Section Évaluation à l'admission"
    },
    {
      "id" : "FRLMAdmissionEvaluation.titleSection",
      "path" : "FRLMAdmissionEvaluation.titleSection",
      "min" : 1
    },
    {
      "id" : "FRLMAdmissionEvaluation.subSection",
      "path" : "FRLMAdmissionEvaluation.subSection",
      "max" : "0"
    },
    {
      "id" : "FRLMAdmissionEvaluation.entry.encounterInformation",
      "path" : "FRLMAdmissionEvaluation.entry.encounterInformation",
      "short" : "Entrée Informations sur la rencontre",
      "definition" : "Entrée Informations sur la rencontre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMAdmissionEvaluation.entry.objectiveFindings",
      "path" : "FRLMAdmissionEvaluation.entry.objectiveFindings",
      "short" : "Constatations objectives",
      "definition" : "Constatations objectives",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMAdmissionEvaluation.entry.functionalStatus[x]",
      "path" : "FRLMAdmissionEvaluation.entry.functionalStatus[x]",
      "short" : "Statut fonctionnel",
      "definition" : "Statut fonctionnel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMAdmissionEvaluation.entry.note",
      "path" : "FRLMAdmissionEvaluation.entry.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
