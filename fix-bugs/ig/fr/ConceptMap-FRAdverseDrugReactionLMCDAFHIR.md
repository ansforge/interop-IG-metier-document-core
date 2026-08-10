# Mapping FRLMAdverseDrugReaction → FRCDAEffetIndesirable / FRLMAdverseDrugReaction → FRAdverseEventDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAdverseDrugReaction → FRCDAEffetIndesirable / FRLMAdverseDrugReaction → FRAdverseEventDocument 

 
Mapping des éléments du modèle métier FRLMAdverseDrugReaction vers le profil CDA FRCDAEffetIndesirable, puis vers le profil FHIR FRAdverseEventDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAdverseDrugReactionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAdverseDrugReactionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Effet Indésirable\"",
  "status" : "draft",
  "date" : "2026-08-10T14:36:25+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAdverseDrugReaction vers le profil CDA FRCDAEffetIndesirable, puis vers le profil FHIR FRAdverseEventDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-adverse-drug-reaction",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effet-indesirable",
    "element" : [{
      "code" : "FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.identifier",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.status",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.date",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.detected",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "La date de détection de l'effet indésirable n'est pas mappée dans le profil CDA FRCDAEffetIndesirable. Elle est mappée dans le profil FHIR FRAdverseEventDocument."
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.value",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.medicationAdministration",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.reaction",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.causalityAssessment",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.severity",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.outcome",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-adverse-drug-reaction",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-adverse-event-document",
    "element" : [{
      "code" : "FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.identifier",
      "target" : [{
        "code" : "FRAdverseEventDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "target" : [{
        "code" : "FRAdverseEventDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.date",
      "target" : [{
        "code" : "FRAdverseEventDocument.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.detected",
      "target" : [{
        "code" : "FRAdverseEventDocument.detected",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.value",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.medicationAdministration",
      "target" : [{
        "code" : "FRAdverseEventDocument.suspectEntity.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.reaction",
      "target" : [{
        "code" : "FRAdverseEventDocument.resultingCondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.causalityAssessment",
      "target" : [{
        "code" : "FRAdverseEventDocument.suspectEntity.causality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.severity",
      "target" : [{
        "code" : "FRAdverseEventDocument.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.outcome",
      "target" : [{
        "code" : "FRAdverseEventDocument.outcome",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
