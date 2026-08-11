# Mapping FRLMAdvanceDirective → FRCDADirectiveAnticipee / FRLMAdvanceDirective → FRAdvanceDirectiveDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAdvanceDirective → FRCDADirectiveAnticipee / FRLMAdvanceDirective → FRAdvanceDirectiveDocument 

 
Mapping des éléments du modèle métier FRLMAdvanceDirective vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAdvanceDirectiveLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAdvanceDirectiveLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Directive Anticipee\"",
  "status" : "draft",
  "date" : "2026-08-11T15:27:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAdvanceDirective vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directive",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee",
    "element" : [{
      "code" : "FRLMAdvanceDirective",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.identifier",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.category",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.status",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.date",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.value",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.note",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.url",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.reference.externalDocument.text.reference",
        "equivalence" : "equivalent",
        "comment" : "Référence externe portée par externalDocument.text.reference en CDA."
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.header.identifier",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.data",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-advance-directive",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-advance-directive-document",
    "element" : [{
      "code" : "FRLMAdvanceDirective",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.identifier",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.category",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.note",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.status",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.date",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.dateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.value",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.url",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.header.identifier",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.data",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment.data",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
