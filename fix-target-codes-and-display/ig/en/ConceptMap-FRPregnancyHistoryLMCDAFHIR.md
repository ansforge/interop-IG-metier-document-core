# Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRObservationPregnancyHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPregnancyHistory → FRCDAHistoriqueDeLaGrossesse / FRLMPregnancyHistory → FRObservationPregnancyHistoryDocument 

 
Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRPregnancyHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRPregnancyHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Historique de la grossesse\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMPregnancyHistory vers le profil CDA FRCDAHistoriqueDeLaGrossesse, puis vers le profil FHIR FRObservationPregnancyHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "Organizer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.identifier",
      "target" : [{
        "code" : "Organizer.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.status",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.directSubject[x]",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.method",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la méthode au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.observationDate[x]",
      "target" : [{
        "code" : "Organizer.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result",
      "target" : [{
        "code" : "Organizer.component:frObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.interpretation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à l'interprétation au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.note",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié au commentaire au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.component",
      "target" : [{
        "code" : "Organizer.component:frNaissance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.derivedFrom[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié à la traçabilité de la source au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.hasMember[x]",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ CDA dédié aux observations associées au niveau de l'entrée FRCDAHistoriqueDeLaGrossesse."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-history-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.directSubject[x]",
      "target" : [{
        "code" : "Observation.focus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result.value[x]",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result.dataAbsentReason",
      "target" : [{
        "code" : "Observation.dataAbsentReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result.uncertainty",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun champ dédié à l'incertitude du résultat dans FRObservationPregnancyHistoryDocument."
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.component",
      "target" : [{
        "code" : "Observation.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.derivedFrom[x]",
      "target" : [{
        "code" : "Observation.derivedFrom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.hasMember[x]",
      "target" : [{
        "code" : "Observation.hasMember",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
