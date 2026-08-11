# Mapping FRLMMedicationPrescription → FRCDAPrescriptionMedicaments / FRLMMedicationPrescription → FRCompositionDocument.section:sectionMedicationRequest - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMedicationPrescription → FRCDAPrescriptionMedicaments / FRLMMedicationPrescription → FRCompositionDocument.section:sectionMedicationRequest 

 
Mapping des éléments du modèle métier FRLMMedicationPrescription vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationRequest. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMMedicationPrescription vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationRequest.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-prescription",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-medicaments",
    "element" : [{
      "code" : "FRLMMedicationPrescription",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.author[x]",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.codeSection",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.titleSection",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.description",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-medication-prescription",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMMedicationPrescription",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.author[x]",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.entry.prescriptionItem:FRLMPrescriptionItem",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionMedicationRequest.entry:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
