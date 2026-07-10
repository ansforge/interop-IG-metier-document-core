# Mapping FRLMDemandeExamenOuSuivi → FRCDADemandeDExamenOuDeSuivi → FRServiceRequestDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMDemandeExamenOuSuivi → FRCDADemandeDExamenOuDeSuivi → FRServiceRequestDocument 

 
Mapping des éléments du modèle métier FRLMDemandeExamenOuSuivi vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRServiceRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRServiceRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Demande d'examen ou de suivi\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMDemandeExamenOuSuivi vers le profil CDA FRCDADemandeDExamenOuDeSuivi, puis vers le profil FHIR FRServiceRequestDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-demande-examen-ou-suivi",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi",
    "element" : [{
      "code" : "FRLMDemandeExamenOuSuivi",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.identifiant",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.typeDemande",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.description",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.statutDemande",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.date",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.resultat",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.interpretation",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.methode",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.cible",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMDemandeExamenOuSuivi.auteur",
      "target" : [{
        "code" : "FRCDADemandeDExamenOuDeSuivi.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-demande-d-examen-ou-de-suivi",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-service-request-document",
    "element" : [{
      "code" : "FRCDADemandeDExamenOuDeSuivi",
      "target" : [{
        "code" : "FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.moodCode",
      "target" : [{
        "code" : "FRServiceRequestDocument.intent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.id",
      "target" : [{
        "code" : "FRServiceRequestDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.code",
      "target" : [{
        "code" : "FRServiceRequestDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.text",
      "target" : [{
        "code" : "FRServiceRequestDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.statusCode",
      "target" : [{
        "code" : "FRServiceRequestDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.effectiveTime",
      "target" : [{
        "code" : "FRServiceRequestDocument.occurrence[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.value",
      "target" : [{
        "code" : "FRServiceRequestDocument.orderDetail.coding",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.interpretationCode",
      "target" : [{
        "code" : "FRServiceRequestDocument.extension:interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.methodCode",
      "target" : [{
        "code" : "FRServiceRequestDocument.extension:method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.targetSiteCode",
      "target" : [{
        "code" : "FRServiceRequestDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDADemandeDExamenOuDeSuivi.author",
      "target" : [{
        "code" : "FRServiceRequestDocument.requester.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
