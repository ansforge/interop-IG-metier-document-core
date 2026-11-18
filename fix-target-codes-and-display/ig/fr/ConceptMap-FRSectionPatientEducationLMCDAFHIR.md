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
  "name" : "FRSectionPatientEducationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Education du patient\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-31T08:09:30+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-education-du-patient",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatientEducation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDAEducationDuPatient",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.procedure",
      "target" : [{
        "code" : "Section.entry:frActe.procedure",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.observation",
      "target" : [{
        "code" : "Section.entry:frSimpleObservation.observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.reference",
      "target" : [{
        "code" : "Section.entry:frReferencesExternes.act",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientEducation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPatientEducation",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionPatientEducation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.procedure",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRProcedureDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.observation",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPatientEducation.entry.reference",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRDocumentReferenceDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
