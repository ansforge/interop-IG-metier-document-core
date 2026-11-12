# Mapping FRLMInformant → FRCDAInformant → InformantExtension - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMInformant → FRCDAInformant → InformantExtension 

 
Ce ConceptMap présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "FRLMInformant" et l'élément CDA "informant"
* Mapping 2 : entre le modèle métier "FRLMInformant" et l'extension FHIR "InformantExtension"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRInformantLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRInformantLMCDAFHIR",
  "version" : "0.1.0",
  "title" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-08-14T10:01:02+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap présente deux groupes de mapping :\n - Mapping 1 : entre le modèle métier \\\"FRLMInformant\\\" et l'élément CDA \\\"informant\\\"\n - Mapping 2 : entre le modèle métier \\\"FRLMInformant\\\" et l'extension FHIR \\\"InformantExtension\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informant",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-informant",
    "element" : [{
      "code" : "FRLMInformant",
      "target" : [{
        "code" : "informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformant.informant:professional",
      "target" : [{
        "code" : "informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:organisation",
      "target" : [{
        "code" : "informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:patient",
      "target" : [{
        "code" : "informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur patient/usager est de type FRLMPatient, cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:relatedPerson",
      "target" : [{
        "code" : "informant.relatedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur personne liée au patient est de type FRLMRelatedPerson, cf. FRRelatedPersonLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-informant",
    "target" : "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/informant-extension",
    "targetVersion" : "1.1.0",
    "element" : [{
      "code" : "FRLMInformant",
      "target" : [{
        "code" : "Extension",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformant.informant:professional",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:organisation",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:patient",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Patient) — cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant:relatedPerson",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(RelatedPerson) — cf. FRRelatedPersonLMCDAFHIR."
      }]
    }]
  }]
}

```
