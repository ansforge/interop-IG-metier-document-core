# Mapping FRLMCarePlans → FRCDAPlanDeSoins / FRLMCarePlans → FRCompositionDocument.section:sectionPlanOfCare - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMCarePlans → FRCDAPlanDeSoins / FRLMCarePlans → FRCompositionDocument.section:sectionPlanOfCare 

 
Mapping des éléments du modèle métier FRLMCarePlans vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:sectionPlanOfCare. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionCarePlansLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionCarePlansLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Plan de soins\"",
  "status" : "draft",
  "date" : "2026-08-11T15:27:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMCarePlans vers la section CDA FRCDAPlanDeSoins, puis vers la section FHIR FRCompositionDocument.section:sectionPlanOfCare.",
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
      "code" : "FRLMCarePlans",
      "target" : [{
        "code" : "FRCDAPlanDeSoins",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.codeSection",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.titleSection",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.description",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.entry.carePlans:FRLMCarePlan",
      "target" : [{
        "code" : "FRCDAPlanDeSoins.entry:FRCDAActe",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-care-plans",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMCarePlans",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPlanOfCare",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPlanOfCare.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPlanOfCare.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPlanOfCare.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPlanDeSoins.entry:carePlans:FRLMCarePlan",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPlanOfCare.entry:FRCarePlanDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
