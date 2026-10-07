# Mapping FRLMSpecimen → FRCDAPrelevement / FRLMSpecimen → FRSpecimenDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSpecimen → FRCDAPrelevement / FRLMSpecimen → FRSpecimenDocument 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSpecimenLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSpecimenLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSpecimenLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Prélèvement\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-07T13:52:25+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prelevement",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSpecimen",
      "target" : [{
        "code" : "Procedure",
        "display" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.identifier",
      "target" : [{
        "code" : "Procedure.participant:EchantillonPreleve.participantRole.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.status",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le statut du modèle métier décrit la disponibilité ou l'état de l'échantillon. Il ne correspond pas au statut de l'acte de prélèvement porté par Procedure.statusCode. Aucun élément équivalent n'est actuellement identifié dans FRCDAPrelevement."
      }]
    },
    {
      "code" : "FRLMSpecimen.type",
      "target" : [{
        "code" : "Procedure.participant:EchantillonPreleve.participantRole.playingEntity.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut CDA identifié dans FRCDAPrelevement pour l'origine du prélèvement (patient, lieu ou dispositif) : participant:DispositifUtilise désigne le dispositif utilisé pour le prélèvement, pas son origine."
      }]
    },
    {
      "code" : "FRLMSpecimen.parentSpecimen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun attribut CDA identifié dans FRCDAPrelevement pour référencer le prélèvement dont provient l'échantillon : participant:EchantillonPreleve porte l'échantillon lui-même (identifiant, nature, quantité)."
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
        "code" : "Procedure.performer",
        "equivalence" : "equivalent",
        "comment" : "Correspondance applicable lorsque collection.performer[x] représente l'organisation prélevante. Les autres types de performer du modèle métier ne sont pas nécessairement représentables par FRCDAPerformerCorps."
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.collected[x]",
      "target" : [{
        "code" : "Procedure.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.quantity",
      "target" : [{
        "code" : "Procedure.participant:EchantillonPreleve.participantRole.playingEntity.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.method",
      "target" : [{
        "code" : "Procedure.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.device",
      "target" : [{
        "code" : "Procedure.participant:DispositifUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.additive[x]",
      "target" : [{
        "code" : "Procedure.participant:ProduitUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.bodySite",
      "target" : [{
        "code" : "Procedure.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.receivedDate",
      "target" : [{
        "code" : "Procedure.entryRelationship.act.effectiveTime",
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
        "code" : "Procedure.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-specimen-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSpecimen",
      "target" : [{
        "code" : "Specimen",
        "display" : "FRSpecimenDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.identifier",
      "target" : [{
        "code" : "Specimen.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.status",
      "target" : [{
        "code" : "Specimen.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.type",
      "target" : [{
        "code" : "Specimen.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.specimenSource[x]",
      "target" : [{
        "code" : "Specimen.subject",
        "display" : "FRPatientINSDocument / FRLocationDocument / Device",
        "equivalence" : "equivalent",
        "comment" : "Cas où specimenSource[x] référence un FRLMPatient, un FRLMLocation ou un FRLMDevice."
      }]
    },
    {
      "code" : "FRLMSpecimen.parentSpecimen",
      "target" : [{
        "code" : "Specimen.parent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.request",
      "target" : [{
        "code" : "Specimen.request",
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
        "code" : "Specimen.collection.collector",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.collected[x]",
      "target" : [{
        "code" : "Specimen.collection.collected[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.quantity",
      "target" : [{
        "code" : "Specimen.collection.quantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.method",
      "target" : [{
        "code" : "Specimen.collection.method",
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
        "code" : "Specimen.collection.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.receivedDate",
      "target" : [{
        "code" : "Specimen.receivedTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.collection.additive[x]",
      "target" : [{
        "code" : "Specimen.processing.additive",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.specimenQuantity",
      "target" : [{
        "code" : "Specimen.container.specimenQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.container.containerDevice",
      "target" : [{
        "code" : "Specimen.container.type.extension:device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.condition",
      "target" : [{
        "code" : "Specimen.condition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSpecimen.note",
      "target" : [{
        "code" : "Specimen.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
