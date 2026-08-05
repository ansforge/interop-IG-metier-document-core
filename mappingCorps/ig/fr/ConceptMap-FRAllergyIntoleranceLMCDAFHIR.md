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
  "title" : "Mapping Métier/CDA/FHIR : \"Allergie ou Hypersensibilité\"",
  "status" : "draft",
  "date" : "2026-08-05T09:34:27+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergy-intolerance",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite",
    "element" : [{
      "code" : "FRLMAllergyIntolerance",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.identifier",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.note",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.type",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.status",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutDuProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.onsetDate",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.effectiveTime.low",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.endDate",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.effectiveTime.high",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.agentOrAllergen",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme",
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
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.criticality",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergy-intolerance",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document",
    "element" : [{
      "code" : "FRLMAllergyIntolerance",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.identifier",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.note",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.type",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.header.status",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.agentOrAllergen",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.category",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.category",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.onsetPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.onsetDate",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.onsetPeriod.start",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.period.endDate",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.onsetPeriod.end",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.agentOrAllergen",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.substance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.manifestation",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.manifestation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.certainty",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.criticality",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.criticality",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.severity",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.severity",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.onset",
        "equivalence" : "narrower",
        "comment" : "Le modèle métier porte une période (début/fin), alors que FHIR reaction.onset est un seul instant dateTime."
      }]
    },
    {
      "code" : "FRLMAllergyIntolerance.reaction.period.onsetDate",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.onset",
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
