# Mapping FRLMFamilyMedicalHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMedicalHistory → FRCompositionDocument.section:sectionFamilyMedicalHistory - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMFamilyMedicalHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMedicalHistory → FRCompositionDocument.section:sectionFamilyMedicalHistory 

 
Mapping des éléments du modèle métier FRLMFamilyMedicalHistory vers la section CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRCompositionDocument.section:sectionFamilyMedicalHistory. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionFamilyMedicalHistoryLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionFamilyMedicalHistoryLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionFamilyMedicalHistoryLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T09:35:26+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMFamilyMedicalHistory vers la section CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRCompositionDocument.section:sectionFamilyMedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-antecedents-familiaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMedicalHistory",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDASectionAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.entry.familyMemberHistory",
      "target" : [{
        "code" : "Section.entry",
        "display" : "FRCDAAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMedicalHistory",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-composition-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMedicalHistory",
      "target" : [{
        "code" : "Composition.section",
        "display" : "FRCompositionDocument.section:sectionFamilyMedicalHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.codeSection",
      "target" : [{
        "code" : "Composition.section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.titleSection",
      "target" : [{
        "code" : "Composition.section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.description",
      "target" : [{
        "code" : "Composition.section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.entry.familyMemberHistory",
      "target" : [{
        "code" : "Composition.section.entry",
        "display" : "FRFamilyMemberHistoryDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
