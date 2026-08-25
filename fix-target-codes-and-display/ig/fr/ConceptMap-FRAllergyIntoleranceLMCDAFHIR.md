# Mapping FRLMAllergyIntolerance → FRCDAAllergieOuHypersensibilite / FRLMAllergyIntolerance → FRAllergyIntoleranceDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAllergyIntolerance → FRCDAAllergieOuHypersensibilite / FRLMAllergyIntolerance → FRAllergyIntoleranceDocument 

 
Mapping des éléments du modèle métier FRLMAllergyIntolerance vers le profil CDA FRCDAAllergieOuHypersensibilite, puis vers le profil FHIR FRAllergyIntoleranceDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAllergyIntoleranceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAllergyIntoleranceLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRAllergyIntoleranceLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Allergie ou Hypersensibilité\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-25T20:08:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMAllergyIntolerance vers le profil CDA FRCDAAllergieOuHypersensibilite, puis vers le profil FHIR FRAllergyIntoleranceDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergyIntolerance",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAllergyIntolerance",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAAllergieOuHypersensibilite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.status",
      "target" : [{
        "code" : "Observation.entryRelationship:frStatutDuProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.onsetDate",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "wider",
        "comment" : "effectiveTime (IVL-TS) n'est pas décomposé en low/high dans ce profil ; onsetDate correspond à effectiveTime.low."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.endDate",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "wider",
        "comment" : "effectiveTime (IVL-TS) n'est pas décomposé en low/high dans ce profil ; endDate correspond à effectiveTime.high."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.agentOrAllergen",
      "target" : [{
        "code" : "Observation.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction",
      "target" : [{
        "code" : "Observation.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.agentOrAllergen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.agentOrAllergen n'est pas mappé explicitement dans le profil CDA cible."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.manifestation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.manifestation est porté dans FRCDAProbleme, sans correspondance explicite définie ici."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.severity",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.severity est porté dans FRCDAProbleme, sans correspondance explicite définie ici."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.period n'est pas mappé explicitement au niveau du profil CDA cible."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period.onsetDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.period.onsetDate n'est pas mappé explicitement au niveau du profil CDA cible."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period.endDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.period.endDate n'est pas mappé explicitement au niveau du profil CDA cible."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.certainty",
      "target" : [{
        "code" : "Observation.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.criticality",
      "target" : [{
        "code" : "Observation.entryRelationship:frCriticite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.category",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "La catégorie (food|medication|environment|biologic) n'est pas portée explicitement dans le profil CDA cible."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAllergyIntolerance",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-allergy-intolerance-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMAllergyIntolerance",
      "target" : [{
        "code" : "AllergyIntolerance",
        "display" : "FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.identifier",
      "target" : [{
        "code" : "AllergyIntolerance.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.note",
      "target" : [{
        "code" : "AllergyIntolerance.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.type",
      "target" : [{
        "code" : "AllergyIntolerance.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.status",
      "target" : [{
        "code" : "AllergyIntolerance.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.agentOrAllergen",
      "target" : [{
        "code" : "AllergyIntolerance.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.category",
      "target" : [{
        "code" : "AllergyIntolerance.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period",
      "target" : [{
        "code" : "AllergyIntolerance.onset[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.onsetDate",
      "target" : [{
        "code" : "AllergyIntolerance.onset[x]:onsetPeriod.start",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.endDate",
      "target" : [{
        "code" : "AllergyIntolerance.onset[x]:onsetPeriod.end",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction",
      "target" : [{
        "code" : "AllergyIntolerance.reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.agentOrAllergen",
      "target" : [{
        "code" : "AllergyIntolerance.reaction.substance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.manifestation",
      "target" : [{
        "code" : "AllergyIntolerance.reaction.manifestation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.certainty",
      "target" : [{
        "code" : "AllergyIntolerance.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.criticality",
      "target" : [{
        "code" : "AllergyIntolerance.criticality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.severity",
      "target" : [{
        "code" : "AllergyIntolerance.reaction.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period",
      "target" : [{
        "code" : "AllergyIntolerance.reaction.onset",
        "equivalence" : "narrower",
        "comment" : "Le modèle métier porte une période (début/fin), alors que FHIR reaction.onset est un seul instant dateTime."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period.onsetDate",
      "target" : [{
        "code" : "AllergyIntolerance.reaction.onset",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period.endDate",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Le sous-élément reaction.period.endDate n'est pas mappé explicitement dans le profil FHIR cible. FHIR reaction.onset ne permet pas de représenter explicitement une date de fin."
      }]
    }]
  }]
}

```
