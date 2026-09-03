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
  "name" : "FRObservationVitalSignsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Observation Vital Sign\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:02:14+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-signe-vital-observe",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationVitalSign",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDASigneVitalObserve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.method",
      "target" : [{
        "code" : "Observation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.bodySite",
      "target" : [{
        "code" : "Observation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.interpretation",
      "target" : [{
        "code" : "Observation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.author[x]",
      "target" : [{
        "code" : "Observation.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationVitalSign",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-vital-signs-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservationVitalSign",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.bodySite",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.result",
      "target" : [{
        "code" : "Observation.component.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationVitalSign.header.author[x]",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
