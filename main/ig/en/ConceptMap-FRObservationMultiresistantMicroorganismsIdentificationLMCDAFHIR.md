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
  "date" : "2026-08-13T14:36:19+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-multidrug-resistant-microorganism-identification",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants",
    "element" : [{
      "code" : "FRLMMultidrugResistantMicroorganismIdentification",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.identifier",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.subject",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.author[x]",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.participant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.informant",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.date",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.author.time",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.status",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.language",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.languageCode",
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
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.value",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-multidrug-resistant-microorganism-identification",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-multiresistant-microorganism-document",
    "element" : [{
      "code" : "FRLMMultidrugResistantMicroorganismIdentification",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.identifier",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.subject",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.subject",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.author[x]",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.performer[x]",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.performer",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.participant[x]",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.informant",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.extension:author",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.date",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.issued",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.status",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.header.language",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.language",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.type",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMMultidrugResistantMicroorganismIdentification.result",
      "target" : [{
        "code" : "FRObservationMultidrugResistantMicroorganismIdentification.valueString",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
