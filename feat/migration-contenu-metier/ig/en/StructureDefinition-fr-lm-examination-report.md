# Logical model - FR LM Examination Report - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Examination Report 

 
Section Acte d'imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-examination-report.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-examination-report.csv), [Excel](../StructureDefinition-fr-lm-examination-report.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-examination-report",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-examination-report",
  "version" : "0.1.0",
  "name" : "FRLMExaminationReport",
  "title" : "Logical model - FR LM Examination Report",
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
  "description" : "Section Acte d'imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-examination-report",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-examination-report",
      "path" : "fr-lm-examination-report",
      "short" : "Logical model - FR LM Examination Report",
      "definition" : "Section Acte d'imagerie"
    },
    {
      "id" : "fr-lm-examination-report.titleSection",
      "path" : "fr-lm-examination-report.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-examination-report.subSection.conclusion",
      "path" : "fr-lm-examination-report.subSection.conclusion",
      "short" : "Conclusion de l'examen",
      "definition" : "Conclusion de l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-conclusion"
      }]
    },
    {
      "id" : "fr-lm-examination-report.entry.imagingProcedures",
      "path" : "fr-lm-examination-report.entry.imagingProcedures",
      "short" : "Entrée Techniques d'imagerie",
      "definition" : "Entrée Techniques d'imagerie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      }]
    },
    {
      "id" : "fr-lm-examination-report.entry.medicationAdministrations",
      "path" : "fr-lm-examination-report.entry.medicationAdministrations",
      "short" : "Entrée Produits de santé administrés pendant l'acte d'imagerie",
      "definition" : "Entrée Produits de santé administrés pendant l'acte d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-examination-report.entry.adverseReactions",
      "path" : "fr-lm-examination-report.entry.adverseReactions",
      "short" : "Entrée allergies et intolérances",
      "definition" : "Entrée allergies et intolérances",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-allergy-intolerance"
      }]
    },
    {
      "id" : "fr-lm-examination-report.entry.results[x]",
      "path" : "fr-lm-examination-report.entry.results[x]",
      "short" : "Résultats d'examens",
      "definition" : "Résultats d'examens",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "string"
      }]
    }]
  }
}

```
