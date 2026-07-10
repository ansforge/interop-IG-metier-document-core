# Mapping FRLMCriticite -> FRCDACriticite -> FRAllergyIntoleranceDocument.criticality - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCriticite -> FRCDACriticite -> FRAllergyIntoleranceDocument.criticality 

 
Mapping des éléments du modele metier FRLMCriticite vers le profil CDA FRCDACriticite, puis vers le profil FHIR FRAllergyIntoleranceDocument.criticality. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRCriticiteLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRCriticiteLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Criticite\"",
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
  "description" : "Mapping des éléments du modele metier FRLMCriticite vers le profil CDA FRCDACriticite, puis vers le profil FHIR FRAllergyIntoleranceDocument.criticality.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-criticite",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-criticite",
    "element" : [{
      "code" : "FRLMCriticite",
      "target" : [{
        "code" : "FRCDACriticite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.identifiant",
      "target" : [{
        "code" : "FRCDACriticite.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.code",
      "target" : [{
        "code" : "FRCDACriticite.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.statut",
      "target" : [{
        "code" : "FRCDACriticite.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.date",
      "target" : [{
        "code" : "FRCDACriticite.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.descriptionNarrative",
      "target" : [{
        "code" : "FRCDACriticite.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCriticite.valeur",
      "target" : [{
        "code" : "FRCDACriticite.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-criticite",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-allergy-intolerance-document",
    "element" : [{
      "code" : "FRCDACriticite.value",
      "target" : [{
        "code" : "FRAllergyIntoleranceDocument.criticality",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
