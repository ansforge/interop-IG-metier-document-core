# Mapping FRLMPrelevement → FRCDAPrelevement → FRSpecimenDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPrelevement → FRCDAPrelevement → FRSpecimenDocument 

 
Mapping des éléments du modèle métier FRLMPrelevement vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSpecimenLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSpecimenLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prélèvement\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMPrelevement vers le profil CDA FRCDAPrelevement, puis vers le profil FHIR FRSpecimenDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prelevement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement",
    "element" : [{
      "code" : "FRLMPrelevement",
      "target" : [{
        "code" : "FRCDAPrelevement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.actePrelevement",
      "target" : [{
        "code" : "FRCDAPrelevement.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.datePrelevement",
      "target" : [{
        "code" : "FRCDAPrelevement.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.localisationPrelevement",
      "target" : [{
        "code" : "FRCDAPrelevement.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.performer",
      "target" : [{
        "code" : "FRCDAPrelevement.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.echantillonPreleve",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:echantillonPreleve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.dispositifUtilise",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:dispositifUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.produitUtilise",
      "target" : [{
        "code" : "FRCDAPrelevement.participant:produitUtilise",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrelevement.dateReceptionEchantillon",
      "target" : [{
        "code" : "FRCDAPrelevement.entryRelationship.act",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prelevement",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-specimen-document",
    "element" : [{
      "code" : "FRCDAPrelevement",
      "target" : [{
        "code" : "FRSpecimenDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.code",
      "target" : [{
        "code" : "FRSpecimenDocument.processing.procedure.coding.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.effectiveTime",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.collected[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.targetSiteCode",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.performer",
      "target" : [{
        "code" : "FRSpecimenDocument.collection.collector",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.participant:echantillonPreleve",
      "target" : [{
        "code" : "FRSpecimenDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.participant:dispositifUtilise",
      "target" : [{
        "code" : "FRSpecimenDocument.container",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.participant:produitUtilise",
      "target" : [{
        "code" : "FRSpecimenDocument.processing.additive:Substance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrelevement.entryRelationship.act",
      "target" : [{
        "code" : "FRSpecimenDocument.receivedTime",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
