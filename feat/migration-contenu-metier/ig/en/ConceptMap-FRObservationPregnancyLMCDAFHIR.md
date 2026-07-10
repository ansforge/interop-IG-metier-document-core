# Mapping FRLMObservationGrossesse → FRCDAObservationSurLaGrossesse → FRObservationPregnancyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationGrossesse → FRCDAObservationSurLaGrossesse → FRObservationPregnancyDocument 

 
Mapping des éléments du modèle métier FRLMObservationGrossesse vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationPregnancyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationPregnancyLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMObservationGrossesse vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-grossesse",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse",
    "element" : [{
      "code" : "FRLMObservationGrossesse",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.identifiant",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.code",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.description",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.statut",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.date",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationGrossesse.resultat",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document",
    "element" : [{
      "code" : "FRCDAObservationSurLaGrossesse.id",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAObservationSurLaGrossesse.code",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAObservationSurLaGrossesse.text",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAObservationSurLaGrossesse.statusCode",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAObservationSurLaGrossesse.effectiveTime",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAObservationSurLaGrossesse.value",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.value",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
