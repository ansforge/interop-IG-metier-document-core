# Mapping FRLMSpecimen → FRCDAPrelevement / FRLMSpecimen → FRSpecimenDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSpecimen → FRCDAPrelevement / FRLMSpecimen → FRSpecimenDocument 

 
Mapping des éléments du modèle métier FRLMSpecimen vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSpecimenLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSpecimenLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prélèvement\"",
  "status" : "draft",
  "date" : "2026-08-18T08:13:43+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSpecimen vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-specimen",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement",
    "element" : [{
      "code" : "FRLMSpecimen",
      "target" : [{
        "code" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.identifier",
      "target" : [{
        "code" : "FRCDAPrelevement.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.header.status",
      "target" : [{
        "code" : "FRCDAPrelevement.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.type",
      "target" : [{
        "code" : "FRCDAPrelevement.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource[x]",
      "target" : [{
        "code" : "FRCDAPrelevement.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.parentSpecimen",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:echantillonPreleve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.request",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.combined",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.performer[x]",
      "target" : [{
        "code" : "FRCDAPrelevement.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.collected[x]",
      "target" : [{
        "code" : "FRCDAPrelevement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.quantity",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.method",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.device",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:dispositifUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.additive[x]",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:produitUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.bodySite",
      "target" : [{
        "code" : "FRCDAPrelevement.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.receivedDate",
      "target" : [{
        "code" : "FRCDAPrelevement.entryRelationship.act.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.specimenQuantity",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.containerDevice",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.condition",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.note",
      "target" : [{
        "code" : "FRCDAPrelevement.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-specimen",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-specimen-document",
    "element" : [{
      "code" : "FRLMSpecimen",
      "target" : [{
        "code" : "FRSpecimenDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.identifier",
      "target" : [{
        "code" : "FRSpecimenDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.header.status",
      "target" : [{
        "code" : "FRSpecimenDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.type",
      "target" : [{
        "code" : "FRSpecimenDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource:Patient",
      "target" : [{
        "code" : "FRSpecimenDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource:Location",
      "target" : [{
        "code" : "FRSpecimenDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource:Device",
      "target" : [{
        "code" : "FRSpecimenDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.parentSpecimen",
      "target" : [{
        "code" : "FRSpecimenDocument.parent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.request",
      "target" : [{
        "code" : "FRSpecimenDocument.request",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.combined",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.performer[x]",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.collector",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.collected[x]",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.collected[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.quantity",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.method",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.device",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.bodySite",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.receivedDate",
      "target" : [{
        "code" : "FRSpecimenDocument.receivedTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.additive[x]",
      "target" : [{
        "code" : "FRSpecimenDocument.processing.additive",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.specimenQuantity",
      "target" : [{
        "code" : "FRSpecimenDocument.container.specimenQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.containerDevice",
      "target" : [{
        "code" : "FRSpecimenDocument.container.extension:device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.condition",
      "target" : [{
        "code" : "FRSpecimenDocument.condition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.note",
      "target" : [{
        "code" : "FRSpecimenDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
