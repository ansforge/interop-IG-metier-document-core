# Mapping FRLMVitalSigns → FRCDASignesVitaux / FRLMVitalSigns → FRCompositionDocument.section:sectionVitalSigns - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMVitalSigns → FRCDASignesVitaux / FRLMVitalSigns → FRCompositionDocument.section:sectionVitalSigns 

 
Mapping des éléments du modèle métier FRLMVitalSigns vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:VitalSigns. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionVitalSignsLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionVitalSignsLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : Signes vitaux",
  "status" : "draft",
  "date" : "2026-08-14T14:57:39+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMVitalSigns vers la section CDA FRCDASignesVitaux, puis vers le profil FHIR FRCompositionDocument.section:VitalSigns.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vital-signs",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-signes-vitaux",
    "element" : [{
      "code" : "FRLMVitalSigns",
      "target" : [{
        "code" : "FRCDASignesVitaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "FRCDASignesVitaux.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign",
      "target" : [{
        "code" : "FRCDASignesVitaux.entry:FRCDASignesVitauxEntry",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-vital-signs",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-composition-document",
    "element" : [{
      "code" : "FRLMVitalSigns",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionVitalSigns",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionVitalSigns.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign",
      "target" : [{
        "code" : "FRCompositionDocument.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
