# Mapping FRLMAutorisationSubstitution → FRCDAAutorisationSubstitution → FRMedicationRequestDocument.substitution.allowedCodeableConcept - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMAutorisationSubstitution → FRCDAAutorisationSubstitution → FRMedicationRequestDocument.substitution.allowedCodeableConcept 

 
Mapping des éléments du modèle métier FRLMAutorisationSubstitution vers le profil CDA FRCDAAutorisationSubstitution, puis vers l'élément substitution.allowedCodeableConcept du profil FHIR FRMedicationRequestDocument. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRAllowedSubstitutionLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRAllowedSubstitutionLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Autorisation substitution\"",
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
  "description" : "Mapping des éléments du modèle métier FRLMAutorisationSubstitution vers le profil CDA FRCDAAutorisationSubstitution, puis vers l'élément substitution.allowedCodeableConcept du profil FHIR FRMedicationRequestDocument.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-autorisation-substitution",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-autorisation-substitution",
    "element" : [{
      "code" : "FRLMAutorisationSubstitution",
      "target" : [{
        "code" : "FRCDAAutorisationSubstitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAutorisationSubstitution.typeSubstitution",
      "target" : [{
        "code" : "FRCDAAutorisationSubstitution.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMAutorisationSubstitution.status",
      "target" : [{
        "code" : "FRCDAAutorisationSubstitution.statusCode",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-autorisation-substitution",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-medication-request-document",
    "element" : [{
      "code" : "FRCDAAutorisationSubstitution",
      "target" : [{
        "code" : "FRMedicationRequestDocument.substitution",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAutorisationSubstitution.code",
      "target" : [{
        "code" : "FRMedicationRequestDocument.substitution.allowedCodeableConcept",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRCDAAutorisationSubstitution.statusCode",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "FRMedicationRequestDocument.substitution ne possède pas d'élément 'status' pour mapper cette donnée."
      }]
    }]
  }]
}

```
