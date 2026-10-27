# Mapping FRLMHazardousWorkingConditions → FRCDAFacteursDeRisqueProfessionnelsNonCode / FRLMHazardousWorkingConditions → FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMHazardousWorkingConditions → FRCDAFacteursDeRisqueProfessionnelsNonCode / FRLMHazardousWorkingConditions → FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors 

 
Mapping des éléments du modèle métier FRLMHazardousWorkingConditions vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionHazardousWorkingConditionsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionHazardousWorkingConditionsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Facteurs de risque professionnels\"",
  "status" : "draft",
  "date" : "2026-08-18T11:25:47+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMHazardousWorkingConditions vers la section CDA FRCDAFacteursDeRisqueProfessionnelsNonCode, puis vers le profil FHIR FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-facteurs-de-risque-professionnels-non-code",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHazardousWorkingConditions",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.codeSection",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.titleSection",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.description",
      "target" : [{
        "code" : "FRCDAFacteursDeRisqueProfessionnelsNonCode.text",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-hazardous-working-conditions",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMHazardousWorkingConditions",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMHazardousWorkingConditions.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionUncodedOccupationalRiskFactors.text",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
