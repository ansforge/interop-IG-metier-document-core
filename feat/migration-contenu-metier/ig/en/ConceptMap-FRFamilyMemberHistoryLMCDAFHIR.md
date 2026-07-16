# Mapping FRLMAntecedentFamilialObserve → FRCDAAntecedentFamilialObserve → FRFamilyMemberHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAntecedentFamilialObserve → FRCDAAntecedentFamilialObserve → FRFamilyMemberHistoryDocument 

 
Mapping des éléments du modèle métier FRLMAntecedentFamilialObserve vers le profil CDA FRCDAAntecedentFamilialObserve, puis vers le profil FHIR FRFamilyMemberHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRFamilyMemberHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRFamilyMemberHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédent familial observé\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAntecedentFamilialObserve vers le profil CDA FRCDAAntecedentFamilialObserve, puis vers le profil FHIR FRFamilyMemberHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedent-familial-observe",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedent-familial-observe",
    "element" : [{
      "code" : "FRLMAntecedentFamilialObserve",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.identifiant",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.statut",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.code",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.descriptionNarrative",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.horodatage",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.resultat",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.interpretation",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.methode",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.site",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentFamilialObserve.auteur",
      "target" : [{
        "code" : "FRCDAAntecedentFamilialObserve.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedent-familial-observe",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-family-member-history-document",
    "element" : [{
      "code" : "FRCDAAntecedentFamilialObserve",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.id",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.statusCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.effectiveTime",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.onset[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.code",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.text",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.value",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.interpretationCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.extension:FRInterpretationExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.methodCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.extension:FRMethodExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.targetSiteCode",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentFamilialObserve.author",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.extension:FRActorExtension",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
