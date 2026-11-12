# Mapping FRLMEducationPatient → FRCDAEducationDuPatient → FRCompositionDocument.section:patientEducation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEducationPatient → FRCDAEducationDuPatient → FRCompositionDocument.section:patientEducation 

 
Mapping des éléments du modèle métier FRLMEducationPatient vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:patientEducation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPatientEducationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPatientEducationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Education du patient\"",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMEducationPatient vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:patientEducation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-education-patient",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-education-du-patient",
    "element" : [{
      "code" : "FRLMEducationPatient",
      "target" : [{
        "code" : "FRCDAEducationDuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.codeSection",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.titreSection",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.blocNarratif",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.entree.acte",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.entree.observation",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frSimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEducationPatient.entree.reference",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frReferencesExternes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-education-du-patient",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAEducationDuPatient",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.entry:frActe",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.entry:FRProcedureActDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.entry:frSimpleObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEducationDuPatient.entry:frReferencesExternes",
      "target" : [{
        "code" : "FRCompositionDocument.section:patientEducation.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
