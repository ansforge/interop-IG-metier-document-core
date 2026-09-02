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
  "name" : "FRFamilyMemberHistoryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédent familial\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T10:43:57+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-familiaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMemberHistory",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDAAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.header.status",
      "target" : [{
        "code" : "Organizer.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.relatedPerson",
      "target" : [{
        "code" : "Organizer.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition",
      "target" : [{
        "code" : "Organizer.component.observation",
        "equivalence" : "equivalent",
        "comment" : "Organizer.component.observation référence le profil CDA FRCDAAntecedentFamilialObserve ; ses sous-champs sont mappés dans le groupe dédié ci-dessous."
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.note",
      "target" : [{
        "code" : "Organizer.sdtcText",
        "equivalence" : "relatedto",
        "comment" : "Le commentaire métier est porté dans la narration CDA."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedent-familial-observe",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMemberHistory.condition.code",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.outcome",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "relatedto",
        "comment" : "La contribution au décès est rapprochée de la valeur d'observation faute d'attribut CDA dédié explicite."
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.bodySite",
      "target" : [{
        "code" : "Observation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-family-member-history-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMemberHistory",
      "target" : [{
        "code" : "FamilyMemberHistory",
        "display" : "FRFamilyMemberHistoryDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.header.status",
      "target" : [{
        "code" : "FamilyMemberHistory.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.relatedPerson",
      "target" : [{
        "code" : "FamilyMemberHistory.relationship",
        "equivalence" : "relatedto",
        "comment" : "relatedPerson contient plus d'information que relationship; la relation familiale est conservée."
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition",
      "target" : [{
        "code" : "FamilyMemberHistory.condition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.code",
      "target" : [{
        "code" : "FamilyMemberHistory.condition.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.outcome",
      "target" : [{
        "code" : "FamilyMemberHistory.condition.outcome",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.contributedToDeath",
      "target" : [{
        "code" : "FamilyMemberHistory.condition.contributedToDeath",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.onset[x]",
      "target" : [{
        "code" : "FamilyMemberHistory.condition.onset[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.condition.bodySite",
      "target" : [{
        "code" : "FamilyMemberHistory.condition.extension:bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMemberHistory.note",
      "target" : [{
        "code" : "FamilyMemberHistory.note",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
