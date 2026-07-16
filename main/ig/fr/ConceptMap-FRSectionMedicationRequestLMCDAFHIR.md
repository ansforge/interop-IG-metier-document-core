# Mapping FRLMPrescriptionMedicaments → FRCDAPrescriptionMedicaments → FRCompositionDocument.section:medicationRequest - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPrescriptionMedicaments → FRCDAPrescriptionMedicaments → FRCompositionDocument.section:medicationRequest 

 
Mapping des éléments du modèle métier FRLMPrescriptionMedicaments vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:medicationRequest. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionMedicationRequestLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionMedicationRequestLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Prescription de médicaments\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMPrescriptionMedicaments vers la section CDA FRCDAPrescriptionMedicaments, puis vers la section FHIR FRCompositionDocument.section:medicationRequest.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-prescription-medicaments",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-medicaments",
    "element" : [{
      "code" : "FRLMPrescriptionMedicaments",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionMedicaments.auteur",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionMedicaments.codeSection",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionMedicaments.titreSection",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionMedicaments.blocNarratif",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPrescriptionMedicaments.entree.traitementPrescrit",
      "target" : [{
        "code" : "FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-prescription-medicaments",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAPrescriptionMedicaments",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionMedicaments.author",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionMedicaments.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionMedicaments.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionMedicaments.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAPrescriptionMedicaments.entry:FRCDATraitementPrescrit",
      "target" : [{
        "code" : "FRCompositionDocument.section:medicationRequest.entry:FRMedicationRequestDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
