# Logical model - FR LM Imaging Study - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Imaging Study 

 
DICOM Examen Imagerie 

**Usages:**

* Use this Logical Model: [Logical model - FR LM DICOM Study Metadata](StructureDefinition-FRLMDicomStudyMetadata.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-FRLMPregnancyHistory.md) and [Logical model- FR LM Pregnancy Observation](StructureDefinition-FRLMPregnancyObservation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMImagingStudy.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMImagingStudy.csv), [Excel](../StructureDefinition-FRLMImagingStudy.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMImagingStudy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy",
  "version" : "0.1.0",
  "name" : "FRLMImagingStudy",
  "title" : "Logical model - FR LM Imaging Study",
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
  "description" : "DICOM Examen Imagerie",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImagingStudy",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMImagingStudy",
      "path" : "FRLMImagingStudy",
      "short" : "Logical model - FR LM Imaging Study",
      "definition" : "DICOM Examen Imagerie"
    },
    {
      "id" : "FRLMImagingStudy.header.identifier",
      "path" : "FRLMImagingStudy.header.identifier",
      "short" : "UUID instance examen",
      "min" : 1
    },
    {
      "id" : "FRLMImagingStudy.modality",
      "path" : "FRLMImagingStudy.modality",
      "short" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "definition" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-modalite-acquisition-cisis : Modalité d'imagerie",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis|20260420150250"
      }
    },
    {
      "id" : "FRLMImagingStudy.bodySite",
      "path" : "FRLMImagingStudy.bodySite",
      "short" : "Localisations anatomiques",
      "definition" : "Localisations anatomiques",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMImagingStudy.encounter",
      "path" : "FRLMImagingStudy.encounter",
      "short" : "Rencontre associée à l'examen",
      "definition" : "Rencontre associée à l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMImagingStudy.started",
      "path" : "FRLMImagingStudy.started",
      "short" : "Date de l'examen",
      "definition" : "Date de l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMImagingStudy.basedOn",
      "path" : "FRLMImagingStudy.basedOn",
      "short" : "Demande d'examen",
      "definition" : "Demande d'examen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest"
      }]
    },
    {
      "id" : "FRLMImagingStudy.numberOfSeries",
      "path" : "FRLMImagingStudy.numberOfSeries",
      "short" : "Nombre de séries d'actes d'imagerie composant l'examen",
      "definition" : "Nombre de séries d'actes d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMImagingStudy.numberOfInstances",
      "path" : "FRLMImagingStudy.numberOfInstances",
      "short" : "Nombre d'instances d'imagerie composant l'examen",
      "definition" : "Nombre d'instances d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMImagingStudy.studyCustodian",
      "path" : "FRLMImagingStudy.studyCustodian",
      "short" : "Organisation responsable de l'examen",
      "definition" : "Organisation responsable de l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMImagingStudy.studyEndpoint",
      "path" : "FRLMImagingStudy.studyEndpoint",
      "short" : "Endpoint de l'examen d'imagerie",
      "definition" : "Endpoint de l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint"
      }]
    },
    {
      "id" : "FRLMImagingStudy.series",
      "path" : "FRLMImagingStudy.series",
      "short" : "Séries d'actes d'imagerie composant l'examen",
      "definition" : "Séries d'actes d'imagerie composant l'examen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSeries"
      }]
    }]
  }
}

```
