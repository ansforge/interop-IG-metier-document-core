# Mapping FRLMMicroOrganismSearch → FRCDARechercheDeMicroOrganismes / FRLMMicroOrganismSearch → FRObservationMicroorganismDetectionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMicroOrganismSearch → FRCDARechercheDeMicroOrganismes / FRLMMicroOrganismSearch → FRObservationMicroorganismDetectionDocument 

 
Mapping des éléments du modèle métier FRLMMicroOrganismSearch vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationMicroorganismDetectionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationMicroorganismDetectionLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRObservationMicroorganismDetectionLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-23T21:45:18+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMicroOrganismSearch vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMicroOrganismSearch",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-recherche-de-micro-organismes",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMicroOrganismSearch",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDARechercheDeMicroOrganismes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.author[x]",
      "target" : [{
        "code" : "Observation.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.performer[x]",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.participant[x]",
      "target" : [{
        "code" : "Observation.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.informant",
      "target" : [{
        "code" : "Observation.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.date",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.language",
      "target" : [{
        "code" : "Observation.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.source",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.date",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMicroOrganismSearch",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-microorganism-detection-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMicroOrganismSearch",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationMicroorganismDetectionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.author[x]",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.performer[x]",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.participant[x]",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.informant",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.date",
      "target" : [{
        "code" : "Observation.issued",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.language",
      "target" : [{
        "code" : "Observation.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
