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
  "date" : "2026-08-20T15:08:45+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-directive-anticipee",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAdvanceDirective",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDADirectiveAnticipee",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.category",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.date",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.value",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.url",
      "target" : [{
        "code" : "Observation.reference.externalDocument.text.reference",
        "equivalence" : "equivalent",
        "comment" : "Référence externe portée par externalDocument.text.reference en CDA."
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment",
      "target" : [{
        "code" : "Observation.entryRelationship.observationMedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.header.identifier",
      "target" : [{
        "code" : "Observation.entryRelationship.observationMedia.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.data",
      "target" : [{
        "code" : "Observation.entryRelationship.observationMedia.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdvanceDirective",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-advance-directive-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAdvanceDirective",
      "target" : [{
        "code" : "Consent",
        "display" : "FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.identifier",
      "target" : [{
        "code" : "Consent.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.category",
      "target" : [{
        "code" : "Consent.provision.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.note",
      "target" : [{
        "code" : "Consent.provision.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.header.status",
      "target" : [{
        "code" : "Consent.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.date",
      "target" : [{
        "code" : "Consent.dateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.value",
      "target" : [{
        "code" : "Consent.provision.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.url",
      "target" : [{
        "code" : "Consent.sourceReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment",
      "target" : [{
        "code" : "Consent.sourceAttachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.header.identifier",
      "target" : [{
        "code" : "Consent.sourceAttachment.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdvanceDirective.attachment.data",
      "target" : [{
        "code" : "Consent.sourceAttachment.data",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
