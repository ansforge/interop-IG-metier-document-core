# Mapping FRLMObservationVitalSign → FRCDASigneVitalObserve / FRLMObservationVitalSign → FRObservationVitalSignsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationVitalSign → FRCDASigneVitalObserve / FRLMObservationVitalSign → FRObservationVitalSignsDocument 

 
Mapping des éléments du modèle métier FRLMObservationVitalSign vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationVitalSignsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationVitalSignsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Observation Vital Sign\"",
  "status" : "draft",
  "date" : "2026-08-11T09:29:09+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservationVitalSign vers le profil CDA FRCDASigneVitalObserve, puis vers le profil FHIR FRObservationVitalSignsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-vital-sign",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signe-vital-observe",
    "element" : [{
      "code" : "FRLMObservationVitalSign",
      "target" : [{
        "code" : "FRCDASigneVitalObserve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.identifier",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.observationDate[x]",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.type",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.status",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.method",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.bodySite",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.result",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.interpretation",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.note",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.author",
      "target" : [{
        "code" : "FRCDASigneVitalObserve.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-vital-sign",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-document",
    "element" : [{
      "code" : "FRLMObservationVitalSign",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.identifier",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.observationDate[x]",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.type",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.status",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.method",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.bodySite",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.result",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.component.valueQuantity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.interpretation",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.note",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.author",
      "target" : [{
        "code" : "FRObservationVitalSignsDocument.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
