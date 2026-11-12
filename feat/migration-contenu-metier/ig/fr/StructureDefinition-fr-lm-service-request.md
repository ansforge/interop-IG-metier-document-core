# Logical model - FR LM Service Request - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Service Request 

 
Demande d'examen ou de suivi / Objectif à atteindre 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Encounter](StructureDefinition-fr-lm-encounter.md), [Logical model - FR LM Imaging Study](StructureDefinition-fr-lm-imaging-study.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Logical model - FR LM Order Information](StructureDefinition-fr-lm-order-information.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-service-request)

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

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-service-request.csv), [Excel](../StructureDefinition-fr-lm-service-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-service-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request",
  "version" : "0.1.0",
  "name" : "FRLMServiceRequest",
  "title" : "Logical model - FR LM Service Request",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-service-request",
      "path" : "fr-lm-service-request",
      "short" : "Logical model - FR LM Service Request",
      "definition" : "Demande d'examen ou de suivi / Objectif à atteindre"
    },
    {
      "id" : "fr-lm-service-request.header.status",
      "path" : "fr-lm-service-request.header.status",
      "short" : "Statut de la demande",
      "min" : 1
    },
    {
      "id" : "fr-lm-service-request.code",
      "path" : "fr-lm-service-request.code",
      "short" : "Type de la demande",
      "definition" : "Type de la demande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-service-request.quantity",
      "path" : "fr-lm-service-request.quantity",
      "short" : "Quantité demandée",
      "definition" : "Quantité demandée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-service-request.bodySite",
      "path" : "fr-lm-service-request.bodySite",
      "short" : "Localisation anatomique",
      "definition" : "Localisation anatomique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-service-request.reason[x]",
      "path" : "fr-lm-service-request.reason[x]",
      "short" : "Motif de la demande",
      "definition" : "Motif de la demande",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-service-request.priority",
      "path" : "fr-lm-service-request.priority",
      "short" : "Priorité de la demande",
      "definition" : "Priorité de la demande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): HL7 Request Priority"
      }
    },
    {
      "id" : "fr-lm-service-request.supportingInformation[x]",
      "path" : "fr-lm-service-request.supportingInformation[x]",
      "short" : "Informations pertinentes pour l'interprétation des résultats, par exemple le statut de jeûne, le sexe, etc.",
      "definition" : "Informations pertinentes pour l'interprétation des résultats, par exemple le statut de jeûne, le sexe, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-procedure"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication-administration"
      }]
    },
    {
      "id" : "fr-lm-service-request.specimen",
      "path" : "fr-lm-service-request.specimen",
      "short" : "Prélèvement",
      "definition" : "Prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-service-request.encounter",
      "path" : "fr-lm-service-request.encounter",
      "short" : "Consultation à l'origine, pour avoir des informations complémentaires sur le contexte dans lequel cette demande est formulée",
      "definition" : "Consultation à l'origine, pour avoir des informations complémentaires sur le contexte dans lequel cette demande est formulée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    },
    {
      "id" : "fr-lm-service-request.occurrence[x]",
      "path" : "fr-lm-service-request.occurrence[x]",
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
      "id" : "fr-lm-service-request.patientInstructions",
      "path" : "fr-lm-service-request.patientInstructions",
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
