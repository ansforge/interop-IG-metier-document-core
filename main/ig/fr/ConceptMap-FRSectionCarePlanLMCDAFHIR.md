# Mapping FRLMPlanSoins → FRCDAPlanDeSoins → FRCompositionDocument.section:planOfCare - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPlanSoins → FRCDAPlanDeSoins → FRCompositionDocument.section:planOfCare 

 
Mapping des éléments du modèle métier FRLMPlanSoins vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:planOfCare. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionCarePlanLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionCarePlanLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Plan de soins\"",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPlanSoins vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:planOfCare.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-plan-soins",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-plan-de-soins",
    "element" : [{
      "code" : "FRLMPlanSoins",
      "target" : [{
        "code" : "FRCDAPlanDeSoins",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.codeSection",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.titreSection",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.blocNarratif",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.entree.actes",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDAActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.entree.demandeExamenOuSuivi",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.entree.traitement",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.entree.vaccinRecommande",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPlanSoins.entree.rencontre",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDARencontre",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-plan-de-soins",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAPlanDeSoins",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:FRCDAActe",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.entry:FRProcedureActDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:FRCDADemandeDExamenOuDeSuivi",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.entry:FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:FRCDATraitement",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.entry:FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:FRCDAVaccinRecommande",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.entry:FRImmunizationRecommendationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:FRCDARencontre",
      "target" : [{
        "code" : "FRCompositionDocument.section:planOfCare.entry:FREncounterDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
