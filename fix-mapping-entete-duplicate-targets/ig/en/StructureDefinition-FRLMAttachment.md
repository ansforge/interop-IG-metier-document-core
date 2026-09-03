# Logical model - FR LM Attachment - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Attachment 

 
Document attaché 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Advance Directive](StructureDefinition-FRLMAdvanceDirective.md), [Logical model - FR LM Attachments](StructureDefinition-FRLMAttachments.md), [Logical model - FR LM Header Document](StructureDefinition-FRLMHeaderDocument.md), [Logical model - FR LM ObservationMedia](StructureDefinition-FRLMObservationMedia.md)... Show 2 more, [Logical model - FR LM Patient Education](StructureDefinition-FRLMPatientEducation.md) and [Logical model - FR LM Presented Form](StructureDefinition-FRLMPresentedForm.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMAttachment.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMAttachment.csv), [Excel](../StructureDefinition-FRLMAttachment.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMAttachment",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment",
  "version" : "0.1.0",
  "name" : "FRLMAttachment",
  "title" : "Logical model - FR LM Attachment",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMAttachment",
      "path" : "FRLMAttachment",
      "short" : "Logical model - FR LM Attachment",
      "definition" : "Document attaché"
    },
    {
      "id" : "FRLMAttachment.contentType",
      "path" : "FRLMAttachment.contentType",
      "short" : "Type MIME de la piece jointe, avec encodage de caracteres, etc.",
      "definition" : "Type MIME de la piece jointe, avec encodage de caracteres, etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): BCP-13"
      }
    },
    {
      "id" : "FRLMAttachment.language",
      "path" : "FRLMAttachment.language",
      "short" : "Langue du contenu",
      "definition" : "Langue du contenu",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): BCP 47"
      }
    },
    {
      "id" : "FRLMAttachment.data",
      "path" : "FRLMAttachment.data",
      "short" : "Contenu encode en base64",
      "definition" : "Contenu encode en base64",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "FRLMAttachment.url",
      "path" : "FRLMAttachment.url",
      "short" : "URL de la ressource",
      "definition" : "URL de la ressource",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "FRLMAttachment.size",
      "path" : "FRLMAttachment.size",
      "short" : "Taille de la piece jointe avant encodage en base64",
      "definition" : "Taille de la piece jointe avant encodage en base64",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    },
    {
      "id" : "FRLMAttachment.title",
      "path" : "FRLMAttachment.title",
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
