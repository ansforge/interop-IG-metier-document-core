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
  "name" : "FRSectionCarePlansLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Plan de soins\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T10:43:57+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlans",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-plan-de-soins",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCarePlans",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAPlanDeSoins",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.entry.carePlans",
      "target" : [{
        "code" : "Section.entry",
        "equivalence" : "inexact",
        "comment" : "Selon le type d'activité portée par FRLMCarePlan.activity, l'entrée CDA concrète est l'une des slices : Section.entry:frActe, :frDemandeDexamenOuDeSuivi, :frTraitement, :frVaccinRecommande ou :frRencontre."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCarePlans",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMCarePlans",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionPlanOfCare",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMCarePlans.entry.carePlans",
      "target" : [{
        "code" : "Composition.section.entry",
        "equivalence" : "inexact",
        "comment" : "Selon le type d'activité portée par FRLMCarePlan.activity, la ressource FHIR concrète référencée est l'une de : FRProcedureDocument, FRServiceRequestDocument, FRMedicationRequestDocument, FRImmunizationDocument ou FREncounterDocument."
      }]
    }]
  }]
}

```
