# Logical model - FR LM DICOM Study Metadata - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM DICOM Study Metadata 

 
Section Object Catalog 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Corps document](StructureDefinition-fr-lm-corps-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-dicom-study-metadata.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-dicom-study-metadata.csv), [Excel](../StructureDefinition-fr-lm-dicom-study-metadata.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-dicom-study-metadata",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dicom-study-metadata",
  "version" : "0.1.0",
  "name" : "FRLMDicomStudyMetadata",
  "title" : "Logical model - FR LM DICOM Study Metadata",
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
  "description" : "Section Object Catalog",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dicom-study-metadata",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-section|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-dicom-study-metadata",
      "path" : "fr-lm-dicom-study-metadata",
      "short" : "Logical model - FR LM DICOM Study Metadata",
      "definition" : "Section Object Catalog"
    },
    {
      "id" : "fr-lm-dicom-study-metadata.titleSection",
      "path" : "fr-lm-dicom-study-metadata.titleSection",
      "min" : 1
    },
    {
      "id" : "fr-lm-dicom-study-metadata.subSection",
      "path" : "fr-lm-dicom-study-metadata.subSection",
      "max" : "0"
    },
    {
      "id" : "fr-lm-dicom-study-metadata.entry.imagingStudy",
      "path" : "fr-lm-dicom-study-metadata.entry.imagingStudy",
      "short" : "Entrée Examen imagerie",
      "definition" : "Entrée Examen imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study"
      }]
    }]
  }
}

```
