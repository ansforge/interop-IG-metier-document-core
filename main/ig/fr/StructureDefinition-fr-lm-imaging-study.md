# Logical model - FR LM Imaging Study - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Imaging Study 

 
DICOM Examen Imagerie 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM DICOM Study Metadata](StructureDefinition-fr-lm-dicom-study-metadata.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model- FR LM Pregnancy History](StructureDefinition-fr-lm-pregnancy-history.md) and [Logical model- FR LM Pregnancy Observation](StructureDefinition-fr-lm-pregnancy-observation.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-imaging-study)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 1 élément(2 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-imaging-study.csv), [Excel](../StructureDefinition-fr-lm-imaging-study.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-imaging-study",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study",
  "version" : "0.1.0",
  "name" : "FRLMImagingStudy",
  "title" : "Logical model - FR LM Imaging Study",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-imaging-study",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-imaging-study",
      "path" : "fr-lm-imaging-study",
      "short" : "Logical model - FR LM Imaging Study",
      "definition" : "DICOM Examen Imagerie"
    },
    {
      "id" : "fr-lm-imaging-study.header.identifier",
      "path" : "fr-lm-imaging-study.header.identifier",
      "short" : "UUID instance examen",
      "min" : 1
    },
    {
      "id" : "fr-lm-imaging-study.modality",
      "path" : "fr-lm-imaging-study.modality",
      "short" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "definition" : "Modalités d'imagerie utilisées lors de l'examen (DICOM CID029)",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-modalite-acquisition-cisis : Modalité d'imagerie",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modalite-acquisition-cisis|20260420150250"
      }
    },
    {
      "id" : "fr-lm-imaging-study.bodySite",
      "path" : "fr-lm-imaging-study.bodySite",
      "short" : "Localisations anatomiques",
      "definition" : "Localisations anatomiques",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.encounter",
      "path" : "fr-lm-imaging-study.encounter",
      "short" : "Rencontre associée à l'examen",
      "definition" : "Rencontre associée à l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.started",
      "path" : "fr-lm-imaging-study.started",
      "short" : "Date de l'examen",
      "definition" : "Date de l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.basedOn",
      "path" : "fr-lm-imaging-study.basedOn",
      "short" : "Demande d'examen",
      "definition" : "Demande d'examen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.numberOfSeries",
      "path" : "fr-lm-imaging-study.numberOfSeries",
      "short" : "Nombre de séries d'actes d'imagerie composant l'examen",
      "definition" : "Nombre de séries d'actes d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.numberOfInstances",
      "path" : "fr-lm-imaging-study.numberOfInstances",
      "short" : "Nombre d'instances d'imagerie composant l'examen",
      "definition" : "Nombre d'instances d'imagerie composant l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.studyCustodian",
      "path" : "fr-lm-imaging-study.studyCustodian",
      "short" : "Organisation responsable de l'examen",
      "definition" : "Organisation responsable de l'examen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.studyEndpoint",
      "path" : "fr-lm-imaging-study.studyEndpoint",
      "short" : "Endpoint de l'examen d'imagerie",
      "definition" : "Endpoint de l'examen d'imagerie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-endpoint"
      }]
    },
    {
      "id" : "fr-lm-imaging-study.series",
      "path" : "fr-lm-imaging-study.series",
      "short" : "Séries d'actes d'imagerie composant l'examen",
      "definition" : "Séries d'actes d'imagerie composant l'examen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-series"
      }]
    }]
  }
}

```
