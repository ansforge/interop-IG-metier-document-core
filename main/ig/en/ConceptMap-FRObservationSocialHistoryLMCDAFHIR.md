# Mapping FRLMHabitusModeDeVieEntree → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHabitusModeDeVieEntree → FRCDAHabitusModeDeVie → FRObservationSocialHistoryDocument 

 
Mapping des éléments du modèle métier FRLMHabitusModeDeVieEntree vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationSocialHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationSocialHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Habitus Mode de vie\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMHabitusModeDeVieEntree vers le profil CDA FRCDAHabitusModeDeVie, puis vers le profil FHIR FRObservationSocialHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-habitus-mode-de-vie-entree",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie",
    "element" : [{
      "code" : "FRLMHabitusModeDeVieEntree",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.identifiant",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.code",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.code.precision",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.code.qualifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.code.precision.name",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.code.qualifier.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.code.precision.value",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.code.qualifier.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.description",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.statut",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.horodatage",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHabitusModeDeVieEntree.resultat",
      "target" : [{
        "code" : "FRCDAHabitusModeDeVie.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-habitus-mode-de-vie",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-social-history-document",
    "element" : [{
      "code" : "FRCDAHabitusModeDeVie",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.id",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.code",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.code.qualifier",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.code.qualifier.name",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.component.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.code.qualifier.value",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.component.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.text",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.statusCode",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.effectiveTime",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.effectiveDateTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAHabitusModeDeVie.value",
      "target" : [{
        "code" : "FRObservationSocialHistoryDocument.value",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
