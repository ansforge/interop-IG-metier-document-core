# Mapping FRLMRechercheDeMicroOrganismes → FRCDARechercheDeMicroOrganismes → FRObservationMicroorganismDetectionDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMRechercheDeMicroOrganismes → FRCDARechercheDeMicroOrganismes → FRObservationMicroorganismDetectionDocument 

 
Mapping des éléments du modèle métier FRLMRechercheDeMicroOrganismes vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationMicroorganismDetectionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationMicroorganismDetectionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Recherche de micro organismes\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMRechercheDeMicroOrganismes vers le profil CDA FRCDARechercheDeMicroOrganismes, puis vers le profil FHIR FRObservationMicroorganismDetectionDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-recherche-de-micro-organismes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes",
    "element" : [{
      "code" : "FRLMRechercheDeMicroOrganismes",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.identifiant",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.code",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.description",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.statut",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.date",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.valeur",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMRechercheDeMicroOrganismes.auteur",
      "target" : [{
        "code" : "FRCDARechercheDeMicroOrganismes.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-recherche-de-micro-organismes",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-microorganism-detection-document",
    "element" : [{
      "code" : "FRCDARechercheDeMicroOrganismes.id",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.code",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.text",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.statusCode",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.effectiveTime",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.value",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.valueBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDARechercheDeMicroOrganismes.author",
      "target" : [{
        "code" : "FRObservationMicroorganismDetectionDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
