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
  "name" : "FRSectionVitalSignsLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Signes vitaux",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-02T15:48:56+00:00",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-signes-vitaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMVitalSigns",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDASectionSignesVitaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDASignesVitaux",
        "equivalence" : "equivalent",
        "comment" : "Section.entry référence l'Organizer FRCDASignesVitaux, qui regroupe via .component chaque signe vital observé (FRCDASigneVitalObserve)."
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
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionVitalSigns",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMVitalSigns.entry.observationVitalSign",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRObservationVitalSignsDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
