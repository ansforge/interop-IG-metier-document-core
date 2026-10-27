# Mapping FRLMAdministrationDeDerivesDuSang → FRCDAAdministrationDeDerivesDuSang → FRObservationAdministrationBloodDerivativesDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAdministrationDeDerivesDuSang → FRCDAAdministrationDeDerivesDuSang → FRObservationAdministrationBloodDerivativesDocument 

 
Mapping des éléments du modèle métier FRLMAdministrationDeDerivesDuSang vers le profil CDA FRCDAAdministrationDeDerivesDuSang, puis vers le profil FHIR FRObservationAdministrationBloodDerivativesDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationAdministrationBloodDerivativesLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationAdministrationBloodDerivativesLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Administration de dérivés du sang\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAdministrationDeDerivesDuSang vers le profil CDA FRCDAAdministrationDeDerivesDuSang, puis vers le profil FHIR FRObservationAdministrationBloodDerivativesDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-administration-de-derives-du-sang",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-administration-de-derives-du-sang",
    "element" : [{
      "code" : "FRLMAdministrationDeDerivesDuSang",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.identifiant",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.code",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.description",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.statut",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.date",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.valeur",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdministrationDeDerivesDuSang.auteur",
      "target" : [{
        "code" : "FRCDAAdministrationDeDerivesDuSang.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-administration-de-derives-du-sang",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-administration-blood-derivatives-document",
    "element" : [{
      "code" : "FRCDAAdministrationDeDerivesDuSang",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.id",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.code",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.text",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.statusCode",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.effectiveTime",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.value",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.valueBoolean",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAdministrationDeDerivesDuSang.author",
      "target" : [{
        "code" : "FRObservationAdministrationBloodDerivativesDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
