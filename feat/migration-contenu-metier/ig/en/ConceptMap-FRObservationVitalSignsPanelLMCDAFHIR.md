# Mapping FRLMSigneVital → FRCDASignesVitaux → FRObservationVitalSignsPanelDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSigneVital → FRCDASignesVitaux → FRObservationVitalSignsPanelDocument 

 
Mapping des éléments du modèle métier FRLMSigneVital vers le profil CDA FRCDASignesVitaux, puis vers le profil FHIR FRObservationVitalSignsPanelDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationVitalSignsPanelLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationVitalSignsPanelLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Signes vitaux\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMSigneVital vers le profil CDA FRCDASignesVitaux, puis vers le profil FHIR FRObservationVitalSignsPanelDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signe-vital",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux",
    "element" : [{
      "code" : "FRLMSigneVital",
      "target" : [{
        "code" : "FRCDASignesVitaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.identifiant",
      "target" : [{
        "code" : "FRCDASignesVitaux.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.code",
      "target" : [{
        "code" : "FRCDASignesVitaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.statut",
      "target" : [{
        "code" : "FRCDASignesVitaux.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.date",
      "target" : [{
        "code" : "FRCDASignesVitaux.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.auteur",
      "target" : [{
        "code" : "FRCDASignesVitaux.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSigneVital.signeVital",
      "target" : [{
        "code" : "FRCDASignesVitaux.component:frSigneVitalObserve",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-vital-signs-panel-document",
    "element" : [{
      "code" : "FRCDASignesVitaux",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.id",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.code",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.statusCode",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.effectiveTime",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.author",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.component:frSigneVitalObserve",
      "target" : [{
        "code" : "FRObservationVitalSignsPanelDocument.hasMember:FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
