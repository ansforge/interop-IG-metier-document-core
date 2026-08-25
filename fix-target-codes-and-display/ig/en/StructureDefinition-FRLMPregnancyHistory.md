# Logical model- FR LM Pregnancy History - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Pregnancy History 

 
Historique de la grossesse 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Pregnancy History](StructureDefinition-FRLMSectionPregnancyHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPregnancyHistory.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPregnancyHistory.csv), [Excel](../StructureDefinition-FRLMPregnancyHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPregnancyHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyHistory",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyHistory",
  "title" : "Logical model- FR LM Pregnancy History",
  "status" : "draft",
  "date" : "2026-08-25T11:34:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Historique de la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyHistory",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPregnancyHistory",
      "path" : "FRLMPregnancyHistory",
      "short" : "Logical model- FR LM Pregnancy History",
      "definition" : "Historique de la grossesse"
    },
    {
      "id" : "FRLMPregnancyHistory.header.status",
      "path" : "FRLMPregnancyHistory.header.status",
      "min" : 1
    },
    {
      "id" : "FRLMPregnancyHistory.directSubject[x]",
      "path" : "FRLMPregnancyHistory.directSubject[x]",
      "short" : "Sujet de l'observation (si différent du patient)",
      "definition" : "Sujet de l'observation (si différent du patient)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.observationDate[x]",
      "path" : "FRLMPregnancyHistory.observationDate[x]",
      "short" : "Période de la grossesse",
      "definition" : "Période de la grossesse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.type",
      "path" : "FRLMPregnancyHistory.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-historique-grossesses-cisis (1.2.250.1.213.1.1.5.852)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-historique-grossesses-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMPregnancyHistory.method",
      "path" : "FRLMPregnancyHistory.method",
      "short" : "Methode utilisée",
      "definition" : "Methode utilisée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result",
      "path" : "FRLMPregnancyHistory.result",
      "short" : "Resultat de l'observation sur l'historique de grossesse",
      "definition" : "Resultat de l'observation sur l'historique de grossesse",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result.value[x]",
      "path" : "FRLMPregnancyHistory.result.value[x]",
      "short" : "Valeur du resultat",
      "definition" : "Valeur du resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Ratio"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result.uncertainty",
      "path" : "FRLMPregnancyHistory.result.uncertainty",
      "short" : "Incertitude associée au resultat",
      "definition" : "Incertitude associée au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result.uncertainty.value",
      "path" : "FRLMPregnancyHistory.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result.uncertainty.type",
      "path" : "FRLMPregnancyHistory.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.result.dataAbsentReason",
      "path" : "FRLMPregnancyHistory.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.interpretation",
      "path" : "FRLMPregnancyHistory.interpretation",
      "short" : "Interpretation du resultat",
      "definition" : "Interpretation du resultat",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.note",
      "path" : "FRLMPregnancyHistory.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.component",
      "path" : "FRLMPregnancyHistory.component",
      "short" : "Composant detaillé de l'observation",
      "definition" : "Composant detaillé de l'observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.derivedFrom[x]",
      "path" : "FRLMPregnancyHistory.derivedFrom[x]",
      "short" : "Observation ou examen source dont derive cette information",
      "definition" : "Observation ou examen source dont derive cette information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy"
      }]
    },
    {
      "id" : "FRLMPregnancyHistory.hasMember[x]",
      "path" : "FRLMPregnancyHistory.hasMember[x]",
      "short" : "Observations associées",
      "definition" : "Observations associées",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
