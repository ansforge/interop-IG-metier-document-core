# Mapping FRLMEvenementIndesirable → FRCDAEvenementIndesirable → FRAdverseEventDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEvenementIndesirable → FRCDAEvenementIndesirable → FRAdverseEventDocument 

 
Mapping des éléments du modèle métier FRLMEvenementIndesirable vers le profil CDA FRCDAEvenementIndesirable, puis vers le profil FHIR FRAdverseEvent. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAdverseEventLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAdverseEventLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Effet Indésirable\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEvenementIndesirable vers le profil CDA FRCDAEvenementIndesirable, puis vers le profil FHIR FRAdverseEvent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effet-indesirable",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effet-indesirable",
    "element" : [{
      "code" : "FRLMEffetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.identifiant",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.typeEffetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.description",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.dateDebut",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.dateFin",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.valeur",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.traitement",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frTraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.probleme",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.imputabiliteEffetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.graviteEffetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetIndesirable.evolutionEffetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effet-indesirable",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-adverse-event-document",
    "element" : [{
      "code" : "FRCDAEffetIndesirable",
      "target" : [{
        "code" : "FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.id",
      "target" : [{
        "code" : "FRAdverseEventDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.code",
      "target" : [{
        "code" : "FRAdverseEventDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.text",
      "target" : [{
        "code" : "FRAdverseEventDocument.category.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.effectiveTime.low",
      "target" : [{
        "code" : "FRAdverseEventDocument.date",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.effectiveTime.high",
      "target" : [{
        "code" : "FRAdverseEventDocument.detected",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.value",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.entryRelationship:frTraitement",
      "target" : [{
        "code" : "FRAdverseEventDocument.suspectEntity.instance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.entryRelationship:frProbleme",
      "target" : [{
        "code" : "FRAdverseEventDocument.resultingCondition",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.entryRelationship:frImputabiliteEffetIndesirable",
      "target" : [{
        "code" : "FRAdverseEventDocument.suspectEntity.causality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.entryRelationship:frGraviteEffetIndesirable",
      "target" : [{
        "code" : "FRAdverseEventDocument.seriousness",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetIndesirable.entryRelationship:frEvolutionEffetIndesirable",
      "target" : [{
        "code" : "FRAdverseEventDocument.outcome",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
