# Mapping FRLMActeSubstitution → FRCDAActeSubstitution → FRMedicationDispenseDocument - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMActeSubstitution → FRCDAActeSubstitution → FRMedicationDispenseDocument 

 
Mapping des éléments du modèle métier FRLMActeSubstitution vers le profil CDA FRCDAActeSubstitution, puis vers le profil FHIR FRMedicationDispenseDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRActSubstitutionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRActSubstitutionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Acte substitution\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMActeSubstitution vers le profil CDA FRCDAActeSubstitution, puis vers le profil FHIR FRMedicationDispenseDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-acte-substitution",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte-substitution",
    "element" : [{
      "code" : "FRLMActeSubstitution",
      "target" : [{
        "code" : "FRCDAActeSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeSubstitution.code",
      "target" : [{
        "code" : "FRCDAActeSubstitution.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMActeSubstitution.statut",
      "target" : [{
        "code" : "FRCDAActeSubstitution.statusCode",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-acte-substitution",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-dispense-document",
    "element" : [{
      "code" : "FRCDAActeSubstitution",
      "target" : [{
        "code" : "FRMedicationDispenseDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActeSubstitution.code",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.substitution.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAActeSubstitution.statusCode",
      "target" : [{
        "code" : "FRMedicationDispenseDocument.status",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
