# Mapping FRLMDirectiveAnticipee → FRCDADirectiveAnticipee → FRAdvanceDirectiveDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDirectiveAnticipee → FRCDADirectiveAnticipee → FRAdvanceDirectiveDocument 

 
Mapping des éléments du modèle métier FRLMDirectiveAnticipee vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAdvanceDirectiveLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAdvanceDirectiveLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Directive Anticipee\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDirectiveAnticipee vers le profil CDA FRCDADirectiveAnticipee, puis vers le profil FHIR FRAdvanceDirectiveDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-directive-anticipee",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee",
    "element" : [{
      "code" : "FRLMDirectiveAnticipee",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.identifiant",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.code",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.description",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.statut",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.date",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.valeurDirectiveIdentifiee",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.valueBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.reference",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.reference.externalDocument.text.reference",
        "equivalence" : "equivalent",
        "comment" : "Référence externe portée par externalDocument.text.reference en CDA."
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.documentEncapsule",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.documentEncapsule.observationMedia",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.documentEncapsule.observationMedia.identifiant",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDirectiveAnticipee.documentEncapsule.observationMedia.documentEncapsuleEncode",
      "target" : [{
        "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-directive-anticipee",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-advance-directive-document",
    "element" : [{
      "code" : "FRCDADirectiveAnticipee",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.id",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "L'élément scope en CDA n'a pas d'équivalent direct en FHIR. Le concept de 'scope' est ajouté pour indiquer le type de consentement."
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.code",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.text",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.statusCode",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.effectiveTime",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.dateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.valueBoolean",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.provision.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.reference.externalDocument.text.reference",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceReference",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.entryRelationship",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.id",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.value",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment.data",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADirectiveAnticipee.entryRelationship.observationMedia.value",
      "target" : [{
        "code" : "FRAdvanceDirectiveDocument.sourceAttachment.url",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
