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
  "name" : "FRSectionMedicationRequestLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMMedicationPrescription vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:sectionMedicationRequest.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-prescription-medicaments",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationPrescription",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAPrescriptionMedicaments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.author[x]",
      "target" : [{
        "code" : "Section.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.entry.prescriptionItem",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationPrescription",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMedicationPrescription",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionMedicationRequest",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.author[x]",
      "target" : [{
        "code" : "Composition.section.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMedicationPrescription.entry.prescriptionItem",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
