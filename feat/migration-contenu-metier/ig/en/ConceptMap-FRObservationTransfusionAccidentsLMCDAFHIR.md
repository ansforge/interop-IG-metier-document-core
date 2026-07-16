# Mapping FRLMAccidentsTransfusionnels → FRCDAAccidentsTransfusionnels → FRObservationTransfusionAccidentsDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAccidentsTransfusionnels → FRCDAAccidentsTransfusionnels → FRObservationTransfusionAccidentsDocument 

 
Mapping des éléments du modèle métier FRLMAccidentsTransfusionnels vers le profil CDA FRCDAAccidentsTransfusionnels, puis vers le profil FHIR FRObservationTransfusionAccidentsDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationTransfusionAccidentsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationTransfusionAccidentsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Accident transfusionnel\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAccidentsTransfusionnels vers le profil CDA FRCDAAccidentsTransfusionnels, puis vers le profil FHIR FRObservationTransfusionAccidentsDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-accidents-transfusionnels",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-accidents-transfusionnels",
    "element" : [{
      "code" : "FRLMAccidentsTransfusionnels",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.identifiant",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.code",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.description",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.statut",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.date",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.valeur",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAccidentsTransfusionnels.auteur",
      "target" : [{
        "code" : "FRCDAAccidentsTransfusionnels.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-accidents-transfusionnels",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-transfusion-accidents-document",
    "element" : [{
      "code" : "FRCDAAccidentsTransfusionnels",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.id",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.code",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.text",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.statusCode",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.effectiveTime",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.value",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.valueString",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAccidentsTransfusionnels.author",
      "target" : [{
        "code" : "FRObservationTransfusionAccidentsDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
