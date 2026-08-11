# Mapping FRLMObservation -> FRCDASimpleObservation / FRLMObservation -> Observation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservation -> FRCDASimpleObservation / FRLMObservation -> Observation 

 
Mapping des éléments du modele metier FRLMObservation vers le profil CDA FRCDASimpleObservation, puis vers le profil FHIR Observation. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Metier/CDA/FHIR : \"Observation\"",
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
  "description" : "Mapping des éléments du modele metier FRLMObservation vers le profil CDA FRCDASimpleObservation, puis vers le profil FHIR Observation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-simple-observation",
    "element" : [{
      "code" : "FRLMObservation",
      "target" : [{
        "code" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.status",
      "target" : [{
        "code" : "FRCDASimpleObservation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.directSubject[x]",
      "target" : [{
        "code" : "FRCDASimpleObservation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate[x]",
      "target" : [{
        "code" : "FRCDASimpleObservation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.type",
      "target" : [{
        "code" : "FRCDASimpleObservation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.originalName",
      "target" : [{
        "code" : "FRCDASimpleObservation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.method",
      "target" : [{
        "code" : "FRCDASimpleObservation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.specimen",
      "target" : [{
        "code" : "FRCDASimpleObservation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.order",
      "target" : [{
        "code" : "FRCDASimpleObservation.inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.bodySite",
      "target" : [{
        "code" : "FRCDASimpleObservation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.result",
      "target" : [{
        "code" : "FRCDASimpleObservation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.referenceRange",
      "target" : [{
        "code" : "FRCDASimpleObservation.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.interpretation",
      "target" : [{
        "code" : "FRCDASimpleObservation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.note",
      "target" : [{
        "code" : "FRCDASimpleObservation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.component",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMObservation.derivedFrom[x]",
      "target" : [{
        "code" : "FRCDASimpleObservation.entryRelationship",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[x]",
      "target" : [{
        "code" : "FRCDASimpleObservation.entryRelationship",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-observation",
    "target" : "http://hl7.org/fhir/R4/StructureDefinition/Observation",
    "element" : [{
      "code" : "FRMLObservation",
      "target" : [{
        "code" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.directSubject[x]",
      "target" : [{
        "code" : "Observation.focus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.originalName",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.method",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.specimen",
      "target" : [{
        "code" : "Observation.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.order",
      "target" : [{
        "code" : "Observation.basedOn",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.bodySite",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.result",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.referenceRange",
      "target" : [{
        "code" : "Observation.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.interpretation",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.note",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.component",
      "target" : [{
        "code" : "Observation.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.derivedFrom[FRLMObservation]",
      "target" : [{
        "code" : "Observation.derivedFrom:Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.derivedFrom[FRLMLaboratoryObservation]",
      "target" : [{
        "code" : "Observation.derivedFrom:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.derivedFrom[FRLMImagingStudy]",
      "target" : [{
        "code" : "Observation.derivedFrom:FRImagingStudyDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[FRLMLaboratoryObservation]",
      "target" : [{
        "code" : "Observation.hasMember:FRObservationLaboratoryReportResultsDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[FRLMObservation]",
      "target" : [{
        "code" : "Observation.hasMember:Observation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
