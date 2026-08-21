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
  "title" : "Mapping Métier/CDA/FHIR : \"Antécédents familiaux\"",
  "status" : "draft",
  "date" : "2026-08-21T08:13:05+00:00",
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
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-familiaux",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMFamilyMedicalHistory",
      "target" : [{
        "code" : "Organizer",
        "display" : "FRCDAAntecedentsFamiliaux",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.codeSection",
      "target" : [{
        "code" : "Organizer.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.titleSection",
      "target" : [{
        "code" : "Organizer.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.description",
      "target" : [{
        "code" : "Organizer.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.entry.familyMemberHistory",
      "target" : [{
        "code" : "Organizer.entry:FRCDAAntecedentsFamiliaux",
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
        "code" : "Composition.section:sectionFamilyMedicalHistory",
        "display" : "FRCompositionDocument.section:sectionFamilyMedicalHistory",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.codeSection",
      "target" : [{
        "code" : "Composition.section:sectionFamilyMedicalHistory.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.titleSection",
      "target" : [{
        "code" : "Composition.section:sectionFamilyMedicalHistory.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.description",
      "target" : [{
        "code" : "Composition.section:sectionFamilyMedicalHistory.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMFamilyMedicalHistory.entry.familyMemberHistory",
      "target" : [{
        "code" : "Composition.section:sectionFamilyMedicalHistory.entry:FRFamilyMemberHistoryDocument",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
