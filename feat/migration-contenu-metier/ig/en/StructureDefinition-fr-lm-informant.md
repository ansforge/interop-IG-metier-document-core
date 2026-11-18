# Logical model - FR LM Informant - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Informant 

 
Informant (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé. 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Entry](StructureDefinition-fr-lm-entry.md), [Logical model - FR LM Header Document](StructureDefinition-fr-lm-header-document.md) and [Logical model - FR LM Section](StructureDefinition-fr-lm-section.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-informant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-informant.csv), [Excel](../StructureDefinition-fr-lm-informant.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-informant",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-informant",
  "version" : "0.1.0",
  "name" : "FRLMInformant",
  "title" : "Logical model - FR LM Informant",
  "status" : "draft",
  "date" : "2026-07-16T15:38:50+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informant (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-informant",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-informant",
      "path" : "fr-lm-informant",
      "short" : "Logical model - FR LM Informant",
      "definition" : "Informant (personne ayant fourni des informations utiles à la production du document : professionnel, structure, patient/usager, autre), personne de confiance, personne à prévenir en cas d'urgence, aidant, aidé."
    },
    {
      "id" : "fr-lm-informant.informant[x]",
      "path" : "fr-lm-informant.informant[x]",
      "short" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
      "definition" : "Informateur / personne de confiance / personne à prévenir en cas d’urgence / aidant / personne aidée.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-informant.informant[x].informantProfessional",
      "path" : "fr-lm-informant.informant[x].informantProfessional",
      "short" : "L'informateur est un professionnel de santé",
      "definition" : "L'informateur est un professionnel de santé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      }]
    },
    {
      "id" : "fr-lm-informant.informant[x].informantOrganisation",
      "path" : "fr-lm-informant.informant[x].informantOrganisation",
      "short" : "L'informateur est une organisation",
      "definition" : "L'informateur est une organisation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      }]
    },
    {
      "id" : "fr-lm-informant.informant[x].informantPersonne[x]",
      "path" : "fr-lm-informant.informant[x].informantPersonne[x]",
      "short" : "L'informateur est un patient/usager ou un autre type d'informateur (ex : aidant, personne à prévenir en cas d'urgence, etc.)",
      "definition" : "L'informateur est un patient/usager ou un autre type d'informateur (ex : aidant, personne à prévenir en cas d'urgence, etc.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-related-person"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      }]
    }]
  }
}

```
