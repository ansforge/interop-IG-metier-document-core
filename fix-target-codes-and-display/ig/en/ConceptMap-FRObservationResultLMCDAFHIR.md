# Mapping FRLMObservation → FRCDAResultat / FRLMObservation → FRObservationResultDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservation → FRCDAResultat / FRLMObservation → FRObservationResultDocument 

 
Mapping des éléments du modèle métier FRLMObservation vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationResultLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationResultLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Résultat d'observation\"",
  "status" : "draft",
  "date" : "2026-08-20T15:08:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMObservation vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAResultat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.directSubject[x]",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate[x]",
      "target" : [{
        "code" : "Observation.effectiveTime",
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
        "code" : "Observation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.method",
      "target" : [{
        "code" : "Observation.methodCode",
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
        "code" : "Observation.inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.bodySite",
      "target" : [{
        "code" : "Observation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.result",
      "target" : [{
        "code" : "Observation.value",
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
        "code" : "Observation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.note",
      "target" : [{
        "code" : "Observation.entryRelationship:frCommentaireER",
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
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[x]",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMObservation",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationResultDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
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
      "code" : "FRLMObservation.directSubject[x]",
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
        "code" : "Observation.code.text",
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
        "code" : "Observation.basedOn:FRServiceRequestDocument",
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
      "code" : "FRLMObservation.derivedFrom[x]",
      "target" : [{
        "code" : "Observation.derivedFrom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[x]",
      "target" : [{
        "code" : "Observation.hasMember",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
