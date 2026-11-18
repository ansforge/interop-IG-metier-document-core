# Mapping FRLMIdentificationDeMicroOrganismesMultiresistants → FRCDAIdentificationMicroOrganismesMultiresistants → FRObservationMultiresistantMicroorganismsIdentificationDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMIdentificationDeMicroOrganismesMultiresistants → FRCDAIdentificationMicroOrganismesMultiresistants → FRObservationMultiresistantMicroorganismsIdentificationDocument 

 
Mapping des éléments du modèle métier FRLMIdentificationDeMicroOrganismesMultiresistants vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRObservationMultiresistantMicroorganismsIdentificationLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Identification de micro-organismes multirésistants",
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
  "description" : "Mapping des éléments du modèle métier FRLMIdentificationDeMicroOrganismesMultiresistants vers le profil CDA FRCDAIdentificationMicroOrganismesMultiresistants, puis vers le profil FHIR FRObservationMultiresistantMicroorganismsIdentificationDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-identification-de-micro-organismes-multiresistants",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants",
    "element" : [{
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.identifiant",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.code",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.description",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.statut",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.statusCode",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.date",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.valeur",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.value",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMIdentificationDeMicroOrganismesMultiresistants.auteur",
      "target" : [{
        "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.author",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-identification-micro-organismes-multiresistants",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-multiresistant-microorganism-document",
    "element" : [{
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.id",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.code",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.text",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.code.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.statusCode",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.status",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.effectiveTime",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.effective[x]",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.value",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.valueString",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAIdentificationMicroOrganismesMultiresistants.author",
      "target" : [{
        "code" : "FRObservationMultiresistantMicroorganismsIdentificationDocument.performer.extension:author",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
