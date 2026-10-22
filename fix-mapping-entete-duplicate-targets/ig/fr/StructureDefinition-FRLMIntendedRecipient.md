# Logical model - FR LM Intended Recipient - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Intended Recipient 

 
Personne déclarée comme destinataire prévu du document. 
* Attention : Cet élément ne contient que le(s) destinataire(s) initialement prévu(s) à la création du document. Rien ne permet par la suite, de certifier que le document a réellement été envoyé à ce(s) destinataire(s). Par ailleurs, il ne faut pas créer de nouvelle version du document si on souhaite l'envoyer à d'autres destinataires.
 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMIntendedRecipient)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMIntendedRecipient.csv), [Excel](../StructureDefinition-FRLMIntendedRecipient.xlsx) 



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
  "date" : "2026-09-04T09:35:26+00:00",
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
