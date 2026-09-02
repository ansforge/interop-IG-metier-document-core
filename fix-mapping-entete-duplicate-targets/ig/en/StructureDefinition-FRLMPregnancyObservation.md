# Logical model- FR LM Pregnancy Observation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model- FR LM Pregnancy Observation 

 
Observation sur la grossesse 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Supporting Information](StructureDefinition-FRLMSupportingInformation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPregnancyObservation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPregnancyObservation.csv), [Excel](../StructureDefinition-FRLMPregnancyObservation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPregnancyObservation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation",
  "version" : "0.1.0",
  "name" : "FRLMPregnancyObservation",
  "title" : "Logical model- FR LM Pregnancy Observation",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Observation sur la grossesse",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPregnancyObservation",
      "path" : "FRLMPregnancyObservation",
      "short" : "Logical model- FR LM Pregnancy Observation",
      "definition" : "Observation sur la grossesse"
    },
    {
      "id" : "FRLMPregnancyObservation.header.status",
      "path" : "FRLMPregnancyObservation.header.status",
      "short" : "Statut de l'observation",
      "min" : 1
    },
    {
      "id" : "FRLMPregnancyObservation.directSubject[x]",
      "path" : "FRLMPregnancyObservation.directSubject[x]",
      "short" : "Sujet de l'observation (si different du patient)",
      "definition" : "Sujet de l'observation (si different du patient)",
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
      "id" : "FRLMPregnancyObservation.observationDate[x]",
      "path" : "FRLMPregnancyObservation.observationDate[x]",
      "short" : "Date de l'observation",
      "definition" : "Date de l'observation",
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
      "id" : "FRLMPregnancyObservation.type",
      "path" : "FRLMPregnancyObservation.type",
      "short" : "Type d'observation",
      "definition" : "Type d'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-issue-grossesse-cisis (1.2.250.1.213.1.1.5.731)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-issue-grossesse-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMPregnancyObservation.method",
      "path" : "FRLMPregnancyObservation.method",
      "short" : "Methode utilisee",
      "definition" : "Methode utilisee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-mode-accouchement-cisis (1.2.250.1.213.1.1.5.735)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-mode-accouchement-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMPregnancyObservation.result",
      "path" : "FRLMPregnancyObservation.result",
      "short" : "Valeur de l'observation",
      "definition" : "Valeur de l'observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.value[x]",
      "path" : "FRLMPregnancyObservation.result.value[x]",
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
      "id" : "FRLMPregnancyObservation.result.uncertainty",
      "path" : "FRLMPregnancyObservation.result.uncertainty",
      "short" : "Incertitude associee au resultat",
      "definition" : "Incertitude associee au resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.uncertainty.value",
      "path" : "FRLMPregnancyObservation.result.uncertainty.value",
      "short" : "Niveau d'incertitude du resultat",
      "definition" : "Niveau d'incertitude du resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.uncertainty.type",
      "path" : "FRLMPregnancyObservation.result.uncertainty.type",
      "short" : "Type d'incertitude",
      "definition" : "Type d'incertitude",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "path" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "short" : "Raison de l'absence de resultat",
      "definition" : "Raison de l'absence de resultat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange",
      "path" : "FRLMPregnancyObservation.result.referenceRange",
      "short" : "Intervalle de reference",
      "definition" : "Intervalle de reference",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.low",
      "path" : "FRLMPregnancyObservation.result.referenceRange.low",
      "short" : "Limite inférieure de l'intervalle",
      "definition" : "Limite inférieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.high",
      "path" : "FRLMPregnancyObservation.result.referenceRange.high",
      "short" : "Limite supérieure de l'intervalle",
      "definition" : "Limite supérieure de l'intervalle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.normalValue",
      "path" : "FRLMPregnancyObservation.result.referenceRange.normalValue",
      "short" : "Valeur normale",
      "definition" : "Valeur normale",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.type",
      "path" : "FRLMPregnancyObservation.result.referenceRange.type",
      "short" : "Type d'intervalle de reference",
      "definition" : "Type d'intervalle de reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.appliesTo",
      "path" : "FRLMPregnancyObservation.result.referenceRange.appliesTo",
      "short" : "Population ou contexte d'application",
      "definition" : "Population ou contexte d'application",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.age",
      "path" : "FRLMPregnancyObservation.result.referenceRange.age",
      "short" : "Tranche d'age",
      "definition" : "Tranche d'age",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.result.referenceRange.text",
      "path" : "FRLMPregnancyObservation.result.referenceRange.text",
      "short" : "Texte libre de l'intervalle de reference",
      "definition" : "Texte libre de l'intervalle de reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.interpretation",
      "path" : "FRLMPregnancyObservation.interpretation",
      "short" : "Interpretation du resultat",
      "definition" : "Interpretation du resultat",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.note",
      "path" : "FRLMPregnancyObservation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.component",
      "path" : "FRLMPregnancyObservation.component",
      "short" : "Composant detaillé de l'observation",
      "definition" : "Composant detaillé de l'observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPregnancyObservation.derivedFrom[x]",
      "path" : "FRLMPregnancyObservation.derivedFrom[x]",
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
      "id" : "FRLMPregnancyObservation.hasMember[x]",
      "path" : "FRLMPregnancyObservation.hasMember[x]",
      "short" : "Observations associees rattachees a cette entree",
      "definition" : "Observations associees rattachees a cette entree",
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
