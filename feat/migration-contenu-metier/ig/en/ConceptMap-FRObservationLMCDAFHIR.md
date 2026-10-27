# Mapping FRLMObservation -> FRCDASimpleObservation -> Observation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMObservation -> FRCDASimpleObservation -> Observation 

 
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
  "date" : "2026-07-16T15:38:50+00:00",
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
      "code" : "FRLMObservation.observationIdentifiant",
      "target" : [{
        "code" : "FRCDASimpleObservation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationCode",
      "target" : [{
        "code" : "FRCDASimpleObservation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDescription",
      "target" : [{
        "code" : "FRCDASimpleObservation.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationStatut",
      "target" : [{
        "code" : "FRCDASimpleObservation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationDate",
      "target" : [{
        "code" : "FRCDASimpleObservation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationResultat",
      "target" : [{
        "code" : "FRCDASimpleObservation.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationInterpretation",
      "target" : [{
        "code" : "FRCDASimpleObservation.interpretationCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationMethode",
      "target" : [{
        "code" : "FRCDASimpleObservation.methodCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationLocalisationAnatomique",
      "target" : [{
        "code" : "FRCDASimpleObservation.targetSiteCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationAuteur",
      "target" : [{
        "code" : "FRCDASimpleObservation.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMObservation.observationNombreRenouvellements",
      "target" : [{
        "code" : "FRCDASimpleObservation.repeatNumber",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-simple-observation",
    "target" : "http://hl7.org/fhir/R4/StructureDefinition/Observation",
    "element" : [{
      "code" : "FRCDASimpleObservation",
      "target" : [{
        "code" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.id",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.code",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.text",
      "target" : [{
        "code" : "Observation.note",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.statusCode",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.effectiveTime",
      "target" : [{
        "code" : "Observation.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.value",
      "target" : [{
        "code" : "Observation.value[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.interpretationCode",
      "target" : [{
        "code" : "Observation.interpretation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.methodCode",
      "target" : [{
        "code" : "Observation.method",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.targetSiteCode",
      "target" : [{
        "code" : "Observation.bodySite",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASimpleObservation.author",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
