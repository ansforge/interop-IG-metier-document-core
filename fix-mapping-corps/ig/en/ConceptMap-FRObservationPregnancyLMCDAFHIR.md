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
  "title" : "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\"",
  "status" : "draft",
  "date" : "2026-08-14T14:32:48+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-observation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse",
    "element" : [{
      "code" : "FRLMPregnancyObservation",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.header.status",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.directSubject[x]",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.observationDate[x]",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.type",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.method",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.nullFlavor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.referenceRange",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.interpretation",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.note",
      "target" : [{
        "code" : "FRCDAObservationSurLaGrossesse.text",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-observation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document",
    "element" : [{
      "code" : "FRLMPregnancyObservation",
      "target" : [{
        "code" : "FRObservationPregnancyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.directSubject[x]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.observationDate[x]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.type",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.method",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.dataAbsentReason",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.dataAbsentReason",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.result.referenceRange",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.interpretation",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.note",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.component",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.derivedFrom[FRLMObservation]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.derivedFrom:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.derivedFrom[FRLMLaboratoryObservation]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.derivedFrom:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.derivedFrom[FRLMImagingStudy]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.derivedFrom:FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.hasMember[FRLMLaboratoryObservation]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMPregnancyObservation.hasMember[FRLMObservation]",
      "target" : [{
        "code" : "FRObservationPregnancyDocument.hasMember:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
