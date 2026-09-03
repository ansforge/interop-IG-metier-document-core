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
  "name" : "FRInformantLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : \"Informateur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-03T10:02:14+00:00",
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
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMInformant",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-informant",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMInformant",
      "target" : [{
        "code" : "Informant",
        "display" : "informant",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantProfessional",
      "target" : [{
        "code" : "Informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantOrganisation",
      "display" : "FRLMOrganisation",
      "target" : [{
        "code" : "Informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "L'informateur structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantPersonne[x]",
      "target" : [{
        "code" : "Informant.assignedEntity",
        "equivalence" : "equivalent",
        "comment" : "Cas où informantPersonne[x] référence un FRLMPatient, cf. FRPatientLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantPersonne[x]",
      "target" : [{
        "code" : "Informant.relatedEntity",
        "equivalence" : "equivalent",
        "comment" : "Cas où informantPersonne[x] référence un FRLMRelatedPerson, cf. FRRelatedPersonLMCDAFHIR."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMInformant",
    "sourceVersion" : "0.1.0",
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
      "code" : "FRLMInformant.informant[x].informantProfessional",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantOrganisation",
      "display" : "FRLMOrganisation",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."
      }]
    },
    {
      "code" : "FRLMInformant.informant[x].informantPersonne[x]",
      "target" : [{
        "code" : "Extension.extension:party.value[x]",
        "equivalence" : "equivalent",
        "comment" : "Cas où informantPersonne[x] référence un FRLMPatient (Extension.extension:party.value[x].resolve().ofType(Patient)) — cf. FRPatientLMCDAFHIR. Cas où informantPersonne[x] référence un FRLMRelatedPerson (Extension.extension:party.value[x].resolve().ofType(RelatedPerson)) — cf. FRRelatedPersonLMCDAFHIR."
      }]
    }]
  }]
}

```
