# Mapping FRLMNaissance → FRCDANaissance → FRObservationBirthEventDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMNaissance → FRCDANaissance → FRObservationBirthEventDocument 

 
Mapping des éléments du modèle métier FRLMNaissance vers le profil CDA FRCDANaissance, puis vers le profil FHIR FRObservationBirthEventDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationBirthEventLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationBirthEventLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Naissance",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMNaissance vers le profil CDA FRCDANaissance, puis vers le profil FHIR FRObservationBirthEventDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-naissance",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-naissance",
    "element" : [{
      "code" : "FRLMNaissance",
      "target" : [{
        "code" : "FRCDANaissance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.identifiant",
      "target" : [{
        "code" : "FRCDANaissance.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.Code",
      "target" : [{
        "code" : "FRCDANaissance.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.statut",
      "target" : [{
        "code" : "FRCDANaissance.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.periode",
      "target" : [{
        "code" : "FRCDANaissance.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.identificationNouveauNe",
      "target" : [{
        "code" : "FRCDANaissance.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMNaissance.observationNaissance",
      "target" : [{
        "code" : "FRCDANaissance.component:frObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-naissance",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-birth-event-document",
    "element" : [{
      "code" : "FRCDANaissance.id",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDANaissance.code",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDANaissance.status",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDANaissance.effectiveTime",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDANaissance.subject",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.focus:RelatedPerson",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDANaissance.component:frObservationSurLaGrossesse",
      "target" : [{
        "code" : "FRObservationBirthEventDocument.hasMember:FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
