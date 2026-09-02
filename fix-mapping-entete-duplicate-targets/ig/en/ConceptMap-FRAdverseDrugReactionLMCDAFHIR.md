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
  "date" : "2026-09-02T10:43:57+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdverseDrugReaction",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-effet-indesirable",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.date",
      "target" : [{
        "code" : "Observation.effectiveTime",
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
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.medicationAdministration",
      "target" : [{
        "code" : "Observation.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.reaction",
      "target" : [{
        "code" : "Observation.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.causalityAssessment",
      "target" : [{
        "code" : "Observation.entryRelationship:frImputabiliteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.severity",
      "target" : [{
        "code" : "Observation.entryRelationship:frGraviteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.outcome",
      "target" : [{
        "code" : "Observation.entryRelationship:frEvolutionEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAdverseDrugReaction",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-adverse-event-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAdverseDrugReaction",
      "target" : [{
        "code" : "AdverseEvent",
        "display" : "FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.identifier",
      "target" : [{
        "code" : "AdverseEvent.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.adverseDrugReactionType",
      "target" : [{
        "code" : "AdverseEvent.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.header.date",
      "target" : [{
        "code" : "AdverseEvent.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.detected",
      "target" : [{
        "code" : "AdverseEvent.detected",
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
        "code" : "AdverseEvent.suspectEntity.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.reaction",
      "target" : [{
        "code" : "AdverseEvent.resultingCondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.causalityAssessment",
      "target" : [{
        "code" : "AdverseEvent.suspectEntity.causality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.severity",
      "target" : [{
        "code" : "AdverseEvent.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAdverseDrugReaction.outcome",
      "target" : [{
        "code" : "AdverseEvent.outcome",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
