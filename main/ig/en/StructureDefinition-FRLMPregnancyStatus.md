# Logical model- FR LM Pregnancy Status - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Pregnancy Status 

 
Statut de grossesse 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Pregnancy History](StructureDefinition-FRLMSectionPregnancyHistory.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPregnancyStatus.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPregnancyStatus.csv), [Excel](../StructureDefinition-FRLMPregnancyStatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPregnancyStatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyStatus",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyStatus",
  "title" : "Logical model- FR LM Pregnancy Status",
  "status" : "draft",
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Statut de grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyStatus",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPregnancyStatus",
      "path" : "FRLMPregnancyStatus",
      "short" : "Logical model- FR LM Pregnancy Status",
      "definition" : "Statut de grossesse"
    },
    {
      "id" : "FRLMPregnancyStatus.header.status",
      "path" : "FRLMPregnancyStatus.header.status",
      "min" : 1
    },
    {
      "id" : "FRLMPregnancyStatus.observationDate[x]",
      "path" : "FRLMPregnancyStatus.observationDate[x]",
      "short" : "Date ou periode de l'observation",
      "definition" : "Date ou periode de l'observation",
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
      "id" : "FRLMPregnancyStatus.type",
      "path" : "FRLMPregnancyStatus.type",
      "short" : "LOINC 11449-6 'Pregnancy status'",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.result",
      "path" : "FRLMPregnancyStatus.result",
      "short" : "Resultat de l'observation",
      "definition" : "Resultat de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.result.value[x]",
      "path" : "FRLMPregnancyStatus.result.value[x]",
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
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Statut de grossesse de la patiente (enceinte, pas enceinte, etc.)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-statut-grossesse-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMPregnancyStatus.result.uncertainty",
      "path" : "FRLMPregnancyStatus.result.uncertainty",
      "short" : "Incertitude associée au resultat",
      "definition" : "Incertitude associée au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.result.uncertainty.value",
      "path" : "FRLMPregnancyStatus.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.result.uncertainty.type",
      "path" : "FRLMPregnancyStatus.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.result.dataAbsentReason",
      "path" : "FRLMPregnancyStatus.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.note",
      "path" : "FRLMPregnancyStatus.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.hasMember[x]",
      "path" : "FRLMPregnancyStatus.hasMember[x]",
      "short" : "Observations rattachées a cette entrée",
      "definition" : "Observations rattachées a cette entrée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.hasMember[x].hasMemberFRLMLaboratoryObservation",
      "path" : "FRLMPregnancyStatus.hasMember[x].hasMemberFRLMLaboratoryObservation",
      "short" : "Observation de laboratoire associée",
      "definition" : "Observation de laboratoire associée",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratoryObservation"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.hasMember[x].hasMemberEstimatedDeliveryDate",
      "path" : "FRLMPregnancyStatus.hasMember[x].hasMemberEstimatedDeliveryDate",
      "short" : "Observation associée a la date d'accouchement. Le type de l'observation doit être issu du jeu de valeurs jdv-date-accouchement-cisis (1.2.250.1.213.1.1.5.853) : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-date-accouchement-cisis",
      "definition" : "Observation associée a la date d'accouchement. Le type de l'observation doit être issu du jeu de valeurs jdv-date-accouchement-cisis (1.2.250.1.213.1.1.5.853) : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-date-accouchement-cisis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    },
    {
      "id" : "FRLMPregnancyStatus.hasMember[x].hasMemberGestationalAge",
      "path" : "FRLMPregnancyStatus.hasMember[x].hasMemberGestationalAge",
      "short" : "Observation associée a l'age gestationnel. Le type de l'observation doit être issu du jeu de valeurs jdv-age-gestationnel-cisis (1.2.250.1.213.1.1.5.854) : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-age-gestationnel-cisis",
      "definition" : "Observation associée a l'age gestationnel. Le type de l'observation doit être issu du jeu de valeurs jdv-age-gestationnel-cisis (1.2.250.1.213.1.1.5.854) : https://smt.esante.gouv.fr/fhir/ValueSet/jdv-age-gestationnel-cisis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      }]
    }]
  }
}

```
