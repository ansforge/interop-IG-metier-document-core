# Mapping FRLMObservationResult → FRCDAResultat → FRObservationResultDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservationResult → FRCDAResultat → FRObservationResultDocument 

 
Mapping des éléments du modèle métier FRLMObservationResult vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationResultLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationResultLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultat d'observation\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMObservationResult vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation-result",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat",
    "element" : [{
      "code" : "FRLMObservationResult",
      "target" : [{
        "code" : "FRCDAResultat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.identifiant",
      "target" : [{
        "code" : "FRCDAResultat.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.code",
      "target" : [{
        "code" : "FRCDAResultat.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.description",
      "target" : [{
        "code" : "FRCDAResultat.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.statut",
      "target" : [{
        "code" : "FRCDAResultat.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.date",
      "target" : [{
        "code" : "FRCDAResultat.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.valeur",
      "target" : [{
        "code" : "FRCDAResultat.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.interpretation",
      "target" : [{
        "code" : "FRCDAResultat.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.site",
      "target" : [{
        "code" : "FRCDAResultat.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.auteur",
      "target" : [{
        "code" : "FRCDAResultat.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.intervalleReference",
      "target" : [{
        "code" : "FRCDAResultat.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.commentaires",
      "target" : [{
        "code" : "FRCDAResultat.entryRelationship:frCommentaireER",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservationResult.demandeExamen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Pas de correspondance directe dans FRCDAResultat pour la demande d'examen associée."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-result-document",
    "element" : [{
      "code" : "FRCDAResultat",
      "target" : [{
        "code" : "FRObservationResultDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.id",
      "target" : [{
        "code" : "FRObservationResultDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.code",
      "target" : [{
        "code" : "FRObservationResultDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.text",
      "target" : [{
        "code" : "FRObservationResultDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.statusCode",
      "target" : [{
        "code" : "FRObservationResultDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.effectiveTime",
      "target" : [{
        "code" : "FRObservationResultDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.value",
      "target" : [{
        "code" : "FRObservationResultDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.interpretationCode",
      "target" : [{
        "code" : "FRObservationResultDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.targetSiteCode",
      "target" : [{
        "code" : "FRObservationResultDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.author",
      "target" : [{
        "code" : "FRObservationResultDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.referenceRange",
      "target" : [{
        "code" : "FRObservationResultDocument.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAResultat.entryRelationship:frCommentaireER",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  }]
}

```
