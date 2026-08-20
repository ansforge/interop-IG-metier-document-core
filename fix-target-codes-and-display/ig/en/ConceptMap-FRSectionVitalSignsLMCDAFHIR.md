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
  "date" : "2026-08-20T15:24:46+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMVitalSigns",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-signes-vitaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMVitalSigns",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDASignesVitaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "Organizer.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign",
      "target" : [{
        "code" : "Organizer.entry:FRCDASignesVitauxEntry",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMVitalSigns",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMVitalSigns",
      "target" : [{
        "code" : "Composition.section:sectionVitalSigns",
        "display" : "FRCompositionDocument.section:sectionVitalSigns",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionVitalSigns.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign:FRLMObservationVitalSign",
      "target" : [{
        "code" : "Composition.section:sectionVitalSigns.entry:FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
