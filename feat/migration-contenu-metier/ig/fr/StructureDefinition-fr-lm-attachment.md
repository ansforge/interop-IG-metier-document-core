# Logical model - FR LM Attachment - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Attachment 

 
Document attaché 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Advance Directive](StructureDefinition-fr-lm-advance-directive.md), [Logical model - FR LM Attachments](StructureDefinition-fr-lm-attachments.md), [Logical model - FR LM ObservationMedia](StructureDefinition-fr-lm-observation-media.md), [Logical model - FR LM Patient Education](StructureDefinition-fr-lm-patient-education.md) and [Logical model - FR LM Presented Form](StructureDefinition-fr-lm-presented-form.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-attachment)

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

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-attachment.csv), [Excel](../StructureDefinition-fr-lm-attachment.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-attachment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment",
  "version" : "0.1.0",
  "name" : "FRLMAttachment",
  "title" : "Logical model - FR LM Attachment",
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
  "description" : "Document attaché",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-attachment",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-attachment",
      "path" : "fr-lm-attachment",
      "short" : "Logical model - FR LM Attachment",
      "definition" : "Document attaché"
    },
    {
      "id" : "fr-lm-attachment.contentType",
      "path" : "fr-lm-attachment.contentType",
      "short" : "Type MIME de la piece jointe, avec encodage de caracteres, etc.",
      "definition" : "Type MIME de la piece jointe, avec encodage de caracteres, etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): BCP-13"
      }
    },
    {
      "id" : "fr-lm-attachment.language",
      "path" : "fr-lm-attachment.language",
      "short" : "Langue du contenu",
      "definition" : "Langue du contenu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): BCP 47"
      }
    },
    {
      "id" : "fr-lm-attachment.data",
      "path" : "fr-lm-attachment.data",
      "short" : "Contenu encode en base64",
      "definition" : "Contenu encode en base64",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "fr-lm-attachment.url",
      "path" : "fr-lm-attachment.url",
      "short" : "URL de la ressource",
      "definition" : "URL de la ressource",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "fr-lm-attachment.size",
      "path" : "fr-lm-attachment.size",
      "short" : "Taille de la piece jointe avant encodage en base64",
      "definition" : "Taille de la piece jointe avant encodage en base64",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    },
    {
      "id" : "fr-lm-attachment.title",
      "path" : "fr-lm-attachment.title",
      "short" : "Titre de la piece jointe",
      "definition" : "Titre de la piece jointe",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
