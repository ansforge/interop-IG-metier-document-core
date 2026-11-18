# Mapping FRLMAllergieOuHypersensibilite / FRCDAAllergieOuHypersensibilite -> FRAllergyIntoleranceDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAllergieOuHypersensibilite / FRCDAAllergieOuHypersensibilite -> FRAllergyIntoleranceDocument 

 
Mapping des éléments du modèle métier FRLMAllergieOuHypersensibilite vers le profil CDA FRCDAAllergieOuHypersensibilite,puis vers le profil FHIR FRAllergyIntoleranceDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAllergyIntoleranceLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAllergyIntoleranceLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Allergie ou Hypersensibilité\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAllergieOuHypersensibilite vers le profil CDA FRCDAAllergieOuHypersensibilite,puis vers le profil FHIR FRAllergyIntoleranceDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-allergie-ou-hypersensibilite",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite",
    "element" : [{
      "code" : "FRLMAllergieOuHypersensibilite",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.identifiant",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.description",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.type",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.statut",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.date",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.participant",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.probleme",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.statutClique",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.certitude",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAllergieOuHypersensibilite.criticite",
      "target" : [{
        "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-allergie-ou-hypersensibilite",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document",
    "element" : [{
      "code" : "FRCDAAllergieOuHypersensibilite",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.id",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.text",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.code.Text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.code",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.statusCode",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.effectiveTime",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.onsetPeriod",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frProbleme",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.participant",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.reaction.substance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frStatutCliniqueAllergie",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.clinicalStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCertitude",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.verificationStatus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAllergieOuHypersensibilite.entryRelationship:frCriticite",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.criticality",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
