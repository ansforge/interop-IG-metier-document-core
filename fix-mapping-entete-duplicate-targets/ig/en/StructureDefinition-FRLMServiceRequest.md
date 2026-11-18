# Logical model - FR LM Service Request - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Service Request 

 
Demande d'examen ou de suivi / Objectif à atteindre 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Encounter](StructureDefinition-FRLMEncounter.md), [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Order Information](StructureDefinition-FRLMOrderInformation.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMServiceRequest.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMServiceRequest.csv), [Excel](../StructureDefinition-FRLMServiceRequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMServiceRequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest",
  "version" : "0.1.0",
  "name" : "FRLMServiceRequest",
  "title" : "Logical model - FR LM Service Request",
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
  "description" : "Demande d'examen ou de suivi / Objectif à atteindre",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMServiceRequest",
      "path" : "FRLMServiceRequest",
      "short" : "Logical model - FR LM Service Request",
      "definition" : "Demande d'examen ou de suivi / Objectif à atteindre"
    },
    {
      "id" : "FRLMServiceRequest.header.status",
      "path" : "FRLMServiceRequest.header.status",
      "short" : "Statut de la demande",
      "min" : 1
    },
    {
      "id" : "FRLMServiceRequest.code",
      "path" : "FRLMServiceRequest.code",
      "short" : "Type de la demande",
      "definition" : "Type de la demande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMServiceRequest.quantity",
      "path" : "FRLMServiceRequest.quantity",
      "short" : "Quantité demandée",
      "definition" : "Quantité demandée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMServiceRequest.bodySite",
      "path" : "FRLMServiceRequest.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMServiceRequest.reason[x]",
      "path" : "FRLMServiceRequest.reason[x]",
      "short" : "Motif de la demande",
      "definition" : "Motif de la demande",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMServiceRequest.priority",
      "path" : "FRLMServiceRequest.priority",
      "short" : "Priorité de la demande",
      "definition" : "Priorité de la demande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): HL7 Request Priority"
      }
    },
    {
      "id" : "FRLMServiceRequest.supportingInformation[x]",
      "path" : "FRLMServiceRequest.supportingInformation[x]",
      "short" : "Informations pertinentes pour l'interprétation des résultats, par exemple le statut de jeûne, le sexe, etc.",
      "definition" : "Informations pertinentes pour l'interprétation des résultats, par exemple le statut de jeûne, le sexe, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMProcedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationAdministration"
      }]
    },
    {
      "id" : "FRLMServiceRequest.specimen",
      "path" : "FRLMServiceRequest.specimen",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMServiceRequest.encounter",
      "path" : "FRLMServiceRequest.encounter",
      "short" : "Consultation à l'origine, pour avoir des informations complémentaires sur le contexte dans lequel cette demande est formulée",
      "definition" : "Consultation à l'origine, pour avoir des informations complémentaires sur le contexte dans lequel cette demande est formulée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMServiceRequest.occurrence[x]",
      "path" : "FRLMServiceRequest.occurrence[x]",
      "short" : "Date ou période prévisionnelle de l'examen",
      "definition" : "Date ou période prévisionnelle de l'examen",
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
      "id" : "FRLMServiceRequest.patientInstructions",
      "path" : "FRLMServiceRequest.patientInstructions",
      "short" : "Instructions au patient",
      "definition" : "Instructions au patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
