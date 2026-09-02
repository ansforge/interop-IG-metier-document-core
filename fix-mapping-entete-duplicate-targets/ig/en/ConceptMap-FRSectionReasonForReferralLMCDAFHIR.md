# Mapping FRLMReasonForReferral → FRCDARaisonDeLaRecommandation / FRLMReasonForReferral → FRCompositionDocument.section:sectionReasonForReferral - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMReasonForReferral → FRCDARaisonDeLaRecommandation / FRLMReasonForReferral → FRCompositionDocument.section:sectionReasonForReferral 

 
Mapping des éléments du modèle métier FRLMReasonForReferral vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:sectionReasonForReferral. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionReasonForReferralLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionReasonForReferralLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionReasonForReferralLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Raison de la recommandation\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMReasonForReferral vers la section CDA FRCDARaisonDeLaRecommandation, puis vers la section FHIR FRCompositionDocument.section:sectionReasonForReferral.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-raison-de-la-recommandation",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMReasonForReferral",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDARaisonDeLaRecommandation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.entry.observation",
      "target" : [{
        "code" : "Section.entry:frSimpleObservation.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.entry.problemes",
      "target" : [{
        "code" : "Section.entry:frProbleme.observation",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMReasonForReferral",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMReasonForReferral",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionReasonForReferral",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.entry.observation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMReasonForReferral.entry.problemes",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
