# Mapping FRLMEffetsIndesirables → FRCDAEffetsIndesirables → FRCompositionDocument.section:adverseEvent - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMEffetsIndesirables → FRCDAEffetsIndesirables → FRCompositionDocument.section:adverseEvent 

 
Mapping des éléments du modèle métier FRLMEffetsIndesirables vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:adverseEvent. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionAdverseEventLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionAdverseEventLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Effets indésirables\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMEffetsIndesirables vers la section CDA FRCDAEffetsIndesirables, puis vers la section FHIR FRCompositionDocument.section:adverseEvent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-effets-indesirables",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables",
    "element" : [{
      "code" : "FRLMEffetsIndesirables",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetsIndesirables.titreSection",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetsIndesirables.blocNarratif",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMEffetsIndesirables.entree.effetIndesirable",
      "target" : [{
        "code" : "FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-effets-indesirables",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDAEffetsIndesirables",
      "target" : [{
        "code" : "FRCompositionDocument.section:adverseEvent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetsIndesirables.code",
      "target" : [{
        "code" : "FRCompositionDocument.section:adverseEvent.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetsIndesirables.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:adverseEvent.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetsIndesrables.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:adverseEvent.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAEffetsIndesirables.entry:FRCDAEffetIndesirable",
      "target" : [{
        "code" : "FRCompositionDocument.section:adverseEvent.entry:FRAdverseEventDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
