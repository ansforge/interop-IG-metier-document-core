# Mapping FRLMMultidrugResistantMicroorganismIdentification → FRCDAIdentificationMicroOrganismesMultiresistants / FRLMMultidrugResistantMicroorganismIdentification → FRObservationMultiresistantMicroorganismsIdentificationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMMultidrugResistantMicroorganismIdentification → FRCDAIdentificationMicroOrganismesMultiresistants / FRLMMultidrugResistantMicroorganismIdentification → FRObservationMultiresistantMicroorganismsIdentificationDocument 

 
Mapping des éléments du modèle métier FRLMMultidrugResistantMicroorganismIdentification vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Identification de micro-organismes multirésistants",
  "status" : "draft",
  "date" : "2026-08-20T08:53:12+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMMultidrugResistantMicroorganismIdentification vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMultidrugResistantMicroorganismIdentification",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMultidrugResistantMicroorganismIdentification",
      "target" : [{
        "code" : "Observation",
        "display" : "FRCDAIdentificationMicroOrganismesMultiresistants",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.identifier",
      "target" : [{
        "code" : "Observation.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.author[x]",
      "target" : [{
        "code" : "Observation.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]",
      "target" : [{
        "code" : "Observation.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.informant",
      "target" : [{
        "code" : "Observation.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.date",
      "target" : [{
        "code" : "Observation.author.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.status",
      "target" : [{
        "code" : "Observation.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.language",
      "target" : [{
        "code" : "Observation.languageCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.source",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.observationDate",
      "target" : [{
        "code" : "Observation.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "target" : [{
        "code" : "Observation.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-ml-multidrug-resistant-microorganism-identification",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-multiresistant-microorganism-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMMultidrugResistantMicroorganismIdentification",
      "target" : [{
        "code" : "Observation",
        "display" : "FRObservationMultidrugResistantMicroorganismIdentification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.identifier",
      "target" : [{
        "code" : "Observation.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.subject",
      "target" : [{
        "code" : "Observation.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.author[x]",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]",
      "target" : [{
        "code" : "Observation.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.informant",
      "target" : [{
        "code" : "Observation.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.date",
      "target" : [{
        "code" : "Observation.issued",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.status",
      "target" : [{
        "code" : "Observation.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.language",
      "target" : [{
        "code" : "Observation.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "target" : [{
        "code" : "Observation.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "target" : [{
        "code" : "Observation.valueString",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
