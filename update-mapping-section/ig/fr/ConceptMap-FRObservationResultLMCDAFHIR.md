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
  "date" : "2026-08-11T15:27:44+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-resultat",
    "element" : [{
      "code" : "FRLMObservation",
      "target" : [{
        "code" : "FRCDAResultat",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.identifier",
      "target" : [{
        "code" : "FRCDAResultat.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.status",
      "target" : [{
        "code" : "FRCDAResultat.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.directSubject[x]",
      "target" : [{
        "code" : "FRCDAResultat.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate[x]",
      "target" : [{
        "code" : "FRCDAResultat.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.type",
      "target" : [{
        "code" : "FRCDAResultat.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.originalName",
      "target" : [{
        "code" : "FRCDAResultat.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.method",
      "target" : [{
        "code" : "FRCDAResultat.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.specimen",
      "target" : [{
        "code" : "FRCDAResultat.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.order",
      "target" : [{
        "code" : "FRCDAResultat.inFulfillmentOf",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.bodySite",
      "target" : [{
        "code" : "FRCDAResultat.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.result",
      "target" : [{
        "code" : "FRCDAResultat.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.referenceRange",
      "target" : [{
        "code" : "FRCDAResultat.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.interpretation",
      "target" : [{
        "code" : "FRCDAResultat.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.note",
      "target" : [{
        "code" : "FRCDAResultat.entryRelationship:frCommentaireER",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-result-document",
    "element" : [{
      "code" : "FRLMObservation",
      "target" : [{
        "code" : "FRObservationResultDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.identifier",
      "target" : [{
        "code" : "FRObservationResultDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.header.status",
      "target" : [{
        "code" : "FRObservationResultDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.directSubject[x]",
      "target" : [{
        "code" : "FRObservationResultDocument.focus",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate[x]",
      "target" : [{
        "code" : "FRObservationResultDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.type",
      "target" : [{
        "code" : "FRObservationResultDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.originalName",
      "target" : [{
        "code" : "FRObservationResultDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.method",
      "target" : [{
        "code" : "FRObservationResultDocument.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.specimen",
      "target" : [{
        "code" : "FRObservationResultDocument.specimen",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.order",
      "target" : [{
        "code" : "FRObservationResultDocument.basedOn:FRServiceRequestDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.bodySite",
      "target" : [{
        "code" : "FRObservationResultDocument.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.result",
      "target" : [{
        "code" : "FRObservationResultDocument.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.referenceRange",
      "target" : [{
        "code" : "FRObservationResultDocument.referenceRange",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.interpretation",
      "target" : [{
        "code" : "FRObservationResultDocument.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.note",
      "target" : [{
        "code" : "FRObservationResultDocument.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.component",
      "target" : [{
        "code" : "FRObservationResultDocument.component",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.derivedFrom[x]",
      "target" : [{
        "code" : "FRObservationResultDocument.derivedFrom",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.hasMember[x]",
      "target" : [{
        "code" : "FRObservationResultDocument.hasMember",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
