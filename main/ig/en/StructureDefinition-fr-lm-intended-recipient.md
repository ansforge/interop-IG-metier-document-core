# Logical model - FR LM Intended Recipient - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Intended Recipient 

 
Personne déclarée comme destinataire prévu du document. 
* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires.
 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-intended-recipient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-intended-recipient.csv), [Excel](../StructureDefinition-fr-lm-intended-recipient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-intended-recipient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-intended-recipient",
  "version" : "0.1.0",
  "name" : "FRLMIntendedRecipient",
  "title" : "Logical model - FR LM Intended Recipient",
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
  "description" : "Personne déclarée comme destinataire prévu du document.\n- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).\n Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-intended-recipient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-intended-recipient",
      "path" : "fr-lm-intended-recipient",
      "short" : "Logical model - FR LM Intended Recipient",
      "definition" : "Personne déclarée comme destinataire prévu du document.\n- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).\n Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires."
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x]",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x]",
      "short" : "destinataire prévu du document",
      "definition" : "destinataire prévu du document",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientPatient",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientPatient",
      "short" : "Le destinataire prévu est un patient",
      "definition" : "Le destinataire prévu est un patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      }]
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientRelatedPerson",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientRelatedPerson",
      "short" : "Le destinataire prévu est une personne de confiance du patient",
      "definition" : "Le destinataire prévu est une personne de confiance du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-related-person"
      }]
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientHealthProfessional",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientHealthProfessional",
      "short" : "Le destinataire prévu est un professionnel de santé",
      "definition" : "Le destinataire prévu est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientOrganisation",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientOrganisation",
      "short" : "Le destinataire prévu est une organisation",
      "definition" : "Le destinataire prévu est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientDevice",
      "path" : "fr-lm-intended-recipient.intendedRecipient[x].intendedRecipientDevice",
      "short" : "Le destinataire prévu est un système",
      "definition" : "Le destinataire prévu est un système",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    }]
  }
}

```
