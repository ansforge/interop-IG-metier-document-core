# Mapping FRLMPatientEducation → FRCDAEducationDuPatient / FRLMPatientEducation → FRCompositionDocument.section:sectionPatientEducation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPatientEducation → FRCDAEducationDuPatient / FRLMPatientEducation → FRCompositionDocument.section:sectionPatientEducation 

 
Mapping des éléments du modèle métier FRLMPatientEducation vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:sectionPatientEducation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionPatientEducationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionPatientEducationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Education du patient\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMPatientEducation vers la section CDA FRCDAEducationDuPatient, puis vers la section FHIR FRCompositionDocument.section:sectionPatientEducation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-education-du-patient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatientEducation",
      "target" : [{
        "code" : "FRCDAEducationDuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.codeSection",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.titleSection",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.description",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.procedure:FRLMProcedure",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frActe",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.observation:FRLMObservation",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frSimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.reference:FRLMAttachment",
      "target" : [{
        "code" : "FRCDAEducationDuPatient.entry:frReferencesExternes",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient-education",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatientEducation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.codeSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.description",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.procedure:FRLMProcedure",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.entry:FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.observation:FRLMObservation",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.entry:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.reference:FRLMAttachment",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionPatientEducation.entry:FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
