# Mapping FRLMSignesVitaux → FRCDASignesVitaux → FRCompositionDocument.section - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSignesVitaux → FRCDASignesVitaux → FRCompositionDocument.section 

 
Mapping des éléments du modèle métier FRLMSignesVitaux vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:SignesVitaux. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionVitalSignsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionVitalSignsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Signes vitaux",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSignesVitaux vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:SignesVitaux.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-signes-vitaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux",
    "element" : [{
      "code" : "FRLMSignesVitaux",
      "target" : [{
        "code" : "FRCDASignesVitaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSignesVitaux.titreSection",
      "target" : [{
        "code" : "FRCDASignesVitaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSignesVitaux.blocNarratif",
      "target" : [{
        "code" : "FRCDASignesVitaux.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSignesVitaux.entree.signesVitauxEntry:FRLMSigneVital",
      "target" : [{
        "code" : "FRCDASignesVitaux.entry:FRCDASignesVitauxEntry",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRCDASignesVitaux",
      "target" : [{
        "code" : "FRCompositionDocument.section:VitalSigns",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.title",
      "target" : [{
        "code" : "FRCompositionDocument.section:VitalSigns.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.text",
      "target" : [{
        "code" : "FRCompositionDocument.section:VitalSigns.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDASignesVitaux.entry:FRCDASignesVitauxEntry",
      "target" : [{
        "code" : "FRCompositionDocument.section:VitalSigns.entry:FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
