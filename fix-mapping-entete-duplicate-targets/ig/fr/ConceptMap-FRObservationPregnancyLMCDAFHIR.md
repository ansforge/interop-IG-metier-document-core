# Mapping FRLMPregnancyObservation → FRCDAObservationSurLaGrossesse / FRLMPregnancyObservation → FRObservationPregnancyDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMPregnancyObservation → FRCDAObservationSurLaGrossesse / FRLMPregnancyObservation → FRObservationPregnancyDocument 

 
Mapping des éléments du modèle métier FRLMPregnancyObservation vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationPregnancyLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationPregnancyLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRObservationPregnancyLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T15:48:56+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMPregnancyObservation vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-observation-sur-la-grossesse",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.directSubject[x]",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.method",
      "target" : [{
        "code" : "Observation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "target" : [{
        "code" : "Observation.nullFlavor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.referenceRange",
      "target" : [{
        "code" : "Observation.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.interpretation",
      "target" : [{
        "code" : "Observation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.note",
      "target" : [{
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.derivedFrom[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.hasMember[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMPregnancyObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.directSubject[x]",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "target" : [{
        "code" : "Observation.dataAbsentReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.referenceRange",
      "target" : [{
        "code" : "Observation.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.component",
      "target" : [{
        "code" : "Observation.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Observation.derivedFrom",
        "display" : "Observation / FRObservationLaboratoryReportResultsDocument / FRImagingStudyDocument",
        "equivalence" : "equivalent",
        "comment" : "Cas où derivedFrom[x] référence une FRLMObservation générique, une FRLMLaboratoryObservation ou un FRLMImagingStudy."
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.hasMember[x]",
      "target" : [{
        "code" : "Observation.hasMember",
        "display" : "FRObservationLaboratoryReportResultsDocument / Observation",
        "equivalence" : "equivalent",
        "comment" : "Cas où hasMember[x] référence une FRLMLaboratoryObservation ou une FRLMObservation générique."
      }]
    }]
  }]
}

```
