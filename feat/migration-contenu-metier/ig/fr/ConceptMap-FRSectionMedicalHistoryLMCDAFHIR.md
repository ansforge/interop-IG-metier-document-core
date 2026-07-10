# Mapping Métier/CDA/FHIR : Antécédents médicaux - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : Antécédents médicaux 

 
Mapping des éléments du modèle métier FRLMAntecedentsMedicaux vers la section CDA FRCDAAntecedentsMedicaux, puis vers le profil FHIR FRCompositionDocument.section:MedicalHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicalHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicalHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédents médicaux\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAntecedentsMedicaux vers la section CDA FRCDAAntecedentsMedicaux, puis vers le profil FHIR FRCompositionDocument.section:MedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-antecedents-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-medicaux",
    "element" : [{
      "code" : "FRLMAntecedentsMedicaux",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsMedicaux.codeSection",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsMedicaux.titreSection",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsMedicaux.blocNarratif",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAntecedentsMedicaux.entree.problemes",
      "target" : [{
        "code" : "FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-antecedents-medicaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAAntecedentsMedicaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:MedicalHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsMedicaux.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:MedicalHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsMedicaux.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:MedicalHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsMedicaux.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:MedicalHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAntecedentsMedicaux.entry.FRCDAListeDesProblemes",
      "target" : [{
        "code" : "FRCompositionDocument.section:MedicalHistory.entry:FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
