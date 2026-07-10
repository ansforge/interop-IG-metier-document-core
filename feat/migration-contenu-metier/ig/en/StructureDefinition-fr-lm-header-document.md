# Logical model - FR LM Header Document - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Header Document 

 
Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-header-document.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-header-document.csv), [Excel](../StructureDefinition-fr-lm-header-document.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-header-document",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-header-document",
  "version" : "0.1.0",
  "name" : "FRLMHeaderDocument",
  "title" : "Logical model - FR LM Header Document",
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
  "description" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...).",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-header-document",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-header-document",
      "path" : "fr-lm-header-document",
      "short" : "Logical model - FR LM Header Document",
      "definition" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...)."
    },
    {
      "id" : "fr-lm-header-document.identifier",
      "path" : "fr-lm-header-document.identifier",
      "short" : "Identifiant unique du document et/ou du lot de version du meme document.",
      "definition" : "Identifiant unique du document et/ou du lot de version du meme document.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-header-document.documentType",
      "path" : "fr-lm-header-document.documentType",
      "short" : "Type de document.",
      "definition" : "Type de document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-header-document.documentTitle",
      "path" : "fr-lm-header-document.documentTitle",
      "short" : "Titre du document.",
      "definition" : "Titre du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-header-document.date",
      "path" : "fr-lm-header-document.date",
      "short" : "Date de création du document.",
      "definition" : "Date de création du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-header-document.confidentiality",
      "path" : "fr-lm-header-document.confidentiality",
      "short" : "Niveau de confidentialité du document.",
      "definition" : "Niveau de confidentialité du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-header-document.language",
      "path" : "fr-lm-header-document.language",
      "short" : "Langue principale du document.",
      "definition" : "Langue principale du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "fr-lm-header-document.version",
      "path" : "fr-lm-header-document.version",
      "short" : "Numéro de version du document.",
      "definition" : "Numéro de version du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-header-document.status",
      "path" : "fr-lm-header-document.status",
      "short" : "Statut du document.",
      "definition" : "Statut du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-header-document.eventType",
      "path" : "fr-lm-header-document.eventType",
      "short" : "Evènement documenté et notamment le cadre d'exercice.",
      "definition" : "Evènement documenté et notamment le cadre d'exercice.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-header-document.subject",
      "path" : "fr-lm-header-document.subject",
      "short" : "Patient / Usager.",
      "definition" : "Patient / Usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      }]
    },
    {
      "id" : "fr-lm-header-document.author[x]",
      "path" : "fr-lm-header-document.author[x]",
      "short" : "Auteur du document.",
      "definition" : "Auteur du document.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-header-document.dataEnterer",
      "path" : "fr-lm-header-document.dataEnterer",
      "short" : "Opérateur de saisie.",
      "definition" : "Opérateur de saisie.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-data-enterer"
      }]
    },
    {
      "id" : "fr-lm-header-document.informant",
      "path" : "fr-lm-header-document.informant",
      "short" : "Informateur ayant fourni des informations utiles à la production du document.",
      "definition" : "Informateur ayant fourni des informations utiles à la production du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-informant"
      }]
    },
    {
      "id" : "fr-lm-header-document.custodian",
      "path" : "fr-lm-header-document.custodian",
      "short" : "Structure chargée de la conservation du document.",
      "definition" : "Structure chargée de la conservation du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-header-document.intendedRecipient",
      "path" : "fr-lm-header-document.intendedRecipient",
      "short" : "Destinataire prévu du document.",
      "definition" : "Destinataire prévu du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-intended-recipient"
      }]
    },
    {
      "id" : "fr-lm-header-document.legalAuthentication",
      "path" : "fr-lm-header-document.legalAuthentication",
      "short" : "Responsable du document.",
      "definition" : "Responsable du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-legal-authentication"
      }]
    },
    {
      "id" : "fr-lm-header-document.attester",
      "path" : "fr-lm-header-document.attester",
      "short" : "Professionnel attestant la validité du contenu du document.",
      "definition" : "Professionnel attestant la validité du contenu du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attester"
      }]
    },
    {
      "id" : "fr-lm-header-document.participant",
      "path" : "fr-lm-header-document.participant",
      "short" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
      "definition" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-participant"
      }]
    },
    {
      "id" : "fr-lm-header-document.order",
      "path" : "fr-lm-header-document.order",
      "short" : "Association du document à une prescription.",
      "definition" : "Association du document à une prescription.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-order"
      }]
    },
    {
      "id" : "fr-lm-header-document.consent",
      "path" : "fr-lm-header-document.consent",
      "short" : "Consentement associé au document.",
      "definition" : "Consentement associé au document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-consent"
      }]
    },
    {
      "id" : "fr-lm-header-document.encounter",
      "path" : "fr-lm-header-document.encounter",
      "short" : "Association du document à une prise en charge.",
      "definition" : "Association du document à une prise en charge.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-encounter"
      }]
    }]
  }
}

```
