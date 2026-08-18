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
  "date" : "2026-08-18T08:13:43+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-historique-de-la-grossesse",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.identifier",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.status",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.directSubject[x]",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.code",
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
        "code" : "FRCDAHistoriqueDeLaGrossesse.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result",
      "target" : [{
        "code" : "FRCDAHistoriqueDeLaGrossesse.component:frObservationSurLaGrossesse",
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
        "code" : "FRCDAHistoriqueDeLaGrossesse.component:frNaissance",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-history",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-history-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyHistory",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.identifier",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.header.status",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.directSubject[x]",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.focus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.type",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.method",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.observationDate[x]",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result.value[x]",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.result.dataAbsentReason",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.dataAbsentReason",
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
        "code" : "FRObservationPregnancyHistoryDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.note",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.component",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.derivedFrom[x]",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.derivedFrom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyHistory.hasMember[x]",
      "target" : [{
        "code" : "FRObservationPregnancyHistoryDocument.hasMember",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
