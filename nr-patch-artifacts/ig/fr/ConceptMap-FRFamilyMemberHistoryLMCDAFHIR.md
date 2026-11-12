# Mapping FRLMFamilyMemberHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMemberHistory → FRFamilyMemberHistoryDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMFamilyMemberHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMemberHistory → FRFamilyMemberHistoryDocument 

 
Mapping des éléments du modèle métier FRLMFamilyMemberHistory vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRFamilyMemberHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRFamilyMemberHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédent familial\"",
  "status" : "draft",
  "date" : "2026-08-11T07:59:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMFamilyMemberHistory vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-family-member-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-familiaux",
    "element" : [{
      "code" : "FRLMFamilyMemberHistory",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.header.status",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.relatedPerson",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.subject.relatedSubject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.code",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.outcome",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.value",
        "equivalence" : "relatedto",
        "comment" : "La contribution au décès est rapprochée de la valeur d'observation faute d'attribut CDA dédié explicite."
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.bodySite",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.component:frAntecedentFamilialObserve.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.note",
      "target" : [{
        "code" : "FRCDAAntecedentsFamiliaux.text",
        "equivalence" : "relatedto",
        "comment" : "Le commentaire métier est porté dans la narration CDA."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-family-member-history",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-family-member-history-document",
    "element" : [{
      "code" : "FRLMFamilyMemberHistory",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.header.status",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.relatedPerson",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.relationship",
        "equivalence" : "relatedto",
        "comment" : "relatedPerson contient plus d'information que relationship; la relation familiale est conservée."
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.code",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.outcome",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.contributedToDeath",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.onset[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.bodySite",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.condition.extension:FRFamilyMemberHistoryBodySiteExtension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.note",
      "target" : [{
        "code" : "FRFamilyMemberHistoryDocument.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
