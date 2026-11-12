# Mapping FRLMEnRapportAvecAccidentTravail → FRCDAEnRapportAvecAccidentTravail → FRObservationWorkRelatedAccidentDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEnRapportAvecAccidentTravail → FRCDAEnRapportAvecAccidentTravail → FRObservationWorkRelatedAccidentDocument 

 
Mapping des éléments du modèle métier FRLMEnRapportAvecAccidentTravail vers le profil CDA FRCDAEnRapportAvecAccidentTravail, puis vers le profil FHIR FRObservationWorkRelatedAccidentDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationWorkRelatedAccidentLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationWorkRelatedAccidentLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"En rapport avec un accident travail\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEnRapportAvecAccidentTravail vers le profil CDA FRCDAEnRapportAvecAccidentTravail, puis vers le profil FHIR FRObservationWorkRelatedAccidentDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-en-rapport-avec-accident-travail",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-en-rapport-avec-accident-travail",
    "element" : [{
      "code" : "FRLMEnRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.identifiant",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.code",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.description",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.statut",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.horodatage",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEnRapportAvecAccidentTravail.resultat",
      "target" : [{
        "code" : "FRCDAEnRapportAvecAccidentTravail.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-en-rapport-avec-accident-travail",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-work-related-accident-document",
    "element" : [{
      "code" : "FRCDAEnRapportAvecAccidentTravail",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.id",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.code",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.text",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.statusCode",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.effectiveTime",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEnRapportAvecAccidentTravail.value",
      "target" : [{
        "code" : "FRObservationWorkRelatedAccidentDocument.valueBoolean",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
