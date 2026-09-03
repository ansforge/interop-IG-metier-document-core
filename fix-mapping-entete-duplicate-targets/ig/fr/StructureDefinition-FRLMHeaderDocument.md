# Logical model - FR LM Header Document - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Header Document 

 
Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc…). 

**Utilisations:**

* Ce Modèle logique n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMHeaderDocument)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(17 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(17 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMHeaderDocument.csv), [Excel](../StructureDefinition-FRLMHeaderDocument.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMHeaderDocument",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument",
  "version" : "0.1.0",
  "name" : "FRLMHeaderDocument",
  "title" : "Logical model - FR LM Header Document",
  "status" : "draft",
  "date" : "2026-09-03T10:02:14+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHeaderDocument",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMHeaderDocument",
      "path" : "FRLMHeaderDocument",
      "short" : "Logical model - FR LM Header Document",
      "definition" : "Eléments de l'entête d'un document contenant les informations générales et nécessaires à la gestion du document (identification et type du document, patient/usager, auteur, évènement documenté, etc...)."
    },
    {
      "id" : "FRLMHeaderDocument.identifier",
      "path" : "FRLMHeaderDocument.identifier",
      "short" : "Identifiant unique du document et/ou du lot de version du meme document.",
      "definition" : "Identifiant unique du document et/ou du lot de version du meme document.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.documentType",
      "path" : "FRLMHeaderDocument.documentType",
      "short" : "Type de document.",
      "definition" : "Type de document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.documentTitle",
      "path" : "FRLMHeaderDocument.documentTitle",
      "short" : "Titre du document.",
      "definition" : "Titre du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.date",
      "path" : "FRLMHeaderDocument.date",
      "short" : "Date de création du document.",
      "definition" : "Date de création du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.confidentiality",
      "path" : "FRLMHeaderDocument.confidentiality",
      "short" : "Niveau de confidentialité du document.",
      "definition" : "Niveau de confidentialité du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.language",
      "path" : "FRLMHeaderDocument.language",
      "short" : "Langue principale du document.",
      "definition" : "Langue principale du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.version",
      "path" : "FRLMHeaderDocument.version",
      "short" : "Numéro de version du document.",
      "definition" : "Numéro de version du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.status",
      "path" : "FRLMHeaderDocument.status",
      "short" : "Statut du document.",
      "definition" : "Statut du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.eventType",
      "path" : "FRLMHeaderDocument.eventType",
      "short" : "Evènement documenté et notamment le cadre d'exercice.",
      "definition" : "Evènement documenté et notamment le cadre d'exercice.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.subject",
      "path" : "FRLMHeaderDocument.subject",
      "short" : "Patient / Usager.",
      "definition" : "Patient / Usager.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.author[x]",
      "path" : "FRLMHeaderDocument.author[x]",
      "short" : "Auteur du document.",
      "definition" : "Auteur du document.",
      "comment" : "Voici les cas d'usage des documents et leurs auteurs :\n\n| Cas d'usage | Auteur(s) du document | Structure de l'auteur |\n|-------------|----------------------|-----------------------|\n| Création d'un document par un professionnel sur son logiciel professionnel | Professionnel | Structure |\n| Création d'un document patient par un professionnel sur son logiciel professionnel pour le compte du patient | Professionnel | Structure |\n| Création d'un document patient par le patient | Patient | non utilisé |\n| Création d'un document par un système (dispositif, automate, …) de structure (ES, …) | Système de structure | Structure |\n| Création d'un document par un Service numérique référencé (SNR) | SNR | Editeur |\n| Création d'un document par le DP | CNOP/DP | CNOP |",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.dataEnterer",
      "path" : "FRLMHeaderDocument.dataEnterer",
      "short" : "Opérateur de saisie.",
      "definition" : "Opérateur de saisie.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDataEnterer"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.informant",
      "path" : "FRLMHeaderDocument.informant",
      "short" : "Informateur ayant fourni des informations utiles à la production du document.",
      "definition" : "Informateur ayant fourni des informations utiles à la production du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMInformant"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.custodian",
      "path" : "FRLMHeaderDocument.custodian",
      "short" : "Structure chargée de la conservation du document.",
      "definition" : "Structure chargée de la conservation du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.intendedRecipient",
      "path" : "FRLMHeaderDocument.intendedRecipient",
      "short" : "Destinataire prévu du document.",
      "definition" : "Destinataire prévu du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIntendedRecipient"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.legalAuthentication",
      "path" : "FRLMHeaderDocument.legalAuthentication",
      "short" : "Responsable du document.",
      "definition" : "Responsable du document.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLegalAuthentication"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.attester",
      "path" : "FRLMHeaderDocument.attester",
      "short" : "Professionnel attestant la validité du contenu du document.",
      "definition" : "Professionnel attestant la validité du contenu du document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttester"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.participant",
      "path" : "FRLMHeaderDocument.participant",
      "short" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
      "definition" : "Participant, différent de l'auteur, du responsable, de l'opérateur de saisie, de l'informateur ou du destinataire.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.order",
      "path" : "FRLMHeaderDocument.order",
      "short" : "Association du document à une prescription.",
      "definition" : "Association du document à une prescription.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrder"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.consent",
      "path" : "FRLMHeaderDocument.consent",
      "short" : "Consentement associé au document.",
      "definition" : "Consentement associé au document.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMConsent"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.encounter",
      "path" : "FRLMHeaderDocument.encounter",
      "short" : "Association du document à une prise en charge.",
      "definition" : "Association du document à une prise en charge.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.presentedForm",
      "path" : "FRLMHeaderDocument.presentedForm",
      "short" : "Pièces jointes (par exemple une version PDF du document).",
      "definition" : "Pièces jointes (par exemple une version PDF du document).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.documentReference",
      "path" : "FRLMHeaderDocument.documentReference",
      "short" : "Document de référence (à remplacer, transformé, …).",
      "definition" : "Document de référence (à remplacer, transformé, …).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMHeaderDocument.documentReference.relationType",
      "path" : "FRLMHeaderDocument.documentReference.relationType",
      "short" : "Nature de la relation avec le document cible (replaces | transforms | signs | appends).",
      "definition" : "Nature de la relation avec le document cible (replaces | transforms | signs | appends).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "(required): DocumentRelationshipType",
        "valueSet" : "http://hl7.org/fhir/ValueSet/document-relationship-type|4.0.1"
      }
    },
    {
      "id" : "FRLMHeaderDocument.documentReference.targetDocument[x]",
      "path" : "FRLMHeaderDocument.documentReference.targetDocument[x]",
      "short" : "Document cible de la relation, référencé par son identifiant ou par référence directe.",
      "definition" : "Document cible de la relation, référencé par son identifiant ou par référence directe.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      },
      {
        "code" : "Reference"
      }]
    }]
  }
}

```
