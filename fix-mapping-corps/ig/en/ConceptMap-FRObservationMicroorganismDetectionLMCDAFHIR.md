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
  "title" : "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\"",
  "status" : "draft",
  "date" : "2026-08-14T14:32:48+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-micro-organism-search",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes",
    "element" : [{
      "code" : "FRLMMicroOrganismSearch",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.identifier",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.subject",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.author[x]",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.performer[x]",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.participant[x]",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.informant",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.date",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.author.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.status",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.language",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.languageCode",
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
      "code" : "FRLMMicroOrganismSearch.observationDate",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.type",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.result",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-micro-organism-search",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-microorganism-detection-document",
    "element" : [{
      "code" : "FRLMMicroOrganismSearch",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.identifier",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.subject",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.author[x]",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.performer[x]",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.participant[x]",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.informant",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.date",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.issued",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.status",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.header.language",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.type",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMicroOrganismSearch.result",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.valueBoolean",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
