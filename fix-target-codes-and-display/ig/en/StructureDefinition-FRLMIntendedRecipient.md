# Logical model - FR LM Intended Recipient - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Intended Recipient 

 
Personne déclarée comme destinataire prévu du document. 
* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires.
 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMIntendedRecipient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMIntendedRecipient.csv), [Excel](../StructureDefinition-FRLMIntendedRecipient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMIntendedRecipient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIntendedRecipient",
  "version" : "0.1.0",
  "name" : "FRLMIntendedRecipient",
  "title" : "Logical model - FR LM Intended Recipient",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMIntendedRecipient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMIntendedRecipient",
      "path" : "FRLMIntendedRecipient",
      "short" : "Logical model - FR LM Intended Recipient",
      "definition" : "Personne déclarée comme destinataire prévu du document.\n- Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s).\n Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires."
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x]",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x]",
      "short" : "destinataire prévu du document",
      "definition" : "destinataire prévu du document",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientPatient",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientPatient",
      "short" : "Le destinataire prévu est un patient",
      "definition" : "Le destinataire prévu est un patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      }]
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientRelatedPerson",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientRelatedPerson",
      "short" : "Le destinataire prévu est une personne de confiance du patient",
      "definition" : "Le destinataire prévu est une personne de confiance du patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
      }]
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientHealthProfessional",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientHealthProfessional",
      "short" : "Le destinataire prévu est un professionnel de santé",
      "definition" : "Le destinataire prévu est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      }]
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientOrganisation",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientOrganisation",
      "short" : "Le destinataire prévu est une organisation",
      "definition" : "Le destinataire prévu est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      }]
    },
    {
      "id" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientDevice",
      "path" : "FRLMIntendedRecipient.intendedRecipient[x].intendedRecipientDevice",
      "short" : "Le destinataire prévu est un système",
      "definition" : "Le destinataire prévu est un système",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    }]
  }
}

```
