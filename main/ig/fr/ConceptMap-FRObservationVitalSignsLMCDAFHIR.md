# Mapping FRLMSigneVitalObserve → FRCDASigneVitalObserve → FRObservationVitalSignsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSigneVitalObserve → FRCDASigneVitalObserve → FRObservationVitalSignsDocument 

 
Mapping des éléments du modèle métier FRLMSigneVitalObserve vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationVitalSignsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationVitalSignsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Signe vital observé\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMSigneVitalObserve vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signe-vital-observe",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe",
    "element" : [{
      "code" : "FRLMSigneVitalObserve",
      "target" : [{
        "code" : "FRCDASigneVitalObserve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.identifiant",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.code",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.description",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.statut",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.date",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.observationEffectuee",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.interpretation",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.methodeUtilisee",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.siteObservation",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVitalObserve.auteur",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-document",
    "element" : [{
      "code" : "FRCDASigneVitalObserve",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.id",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.code",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.text",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.statusCode",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.effectiveTime",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.value",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.component.valueQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.interpretationCode",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.methodCode",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.targetSiteCode",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASigneVitalObserve.author",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
