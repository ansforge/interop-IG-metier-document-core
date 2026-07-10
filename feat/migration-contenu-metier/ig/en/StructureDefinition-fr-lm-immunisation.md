# Logical model - FR LM Immunisation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Immunisation 

 
Vaccination 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisations](StructureDefinition-fr-lm-immunisations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-immunisation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-immunisation.csv), [Excel](../StructureDefinition-fr-lm-immunisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-immunisation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisation",
  "version" : "0.1.0",
  "name" : "FRLMImmunisation",
  "title" : "Logical model - FR LM Immunisation",
  "status" : "draft",
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Vaccination",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-immunisation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-immunisation",
      "path" : "fr-lm-immunisation",
      "short" : "Logical model - FR LM Immunisation",
      "definition" : "Vaccination"
    },
    {
      "id" : "fr-lm-immunisation.header.status",
      "path" : "fr-lm-immunisation.header.status",
      "short" : "Statut de la vaccination (réalisé, non fait, ...).",
      "min" : 1
    },
    {
      "id" : "fr-lm-immunisation.periodOfImmunisation",
      "path" : "fr-lm-immunisation.periodOfImmunisation",
      "short" : "Période de vaccination - Si vaccin effectuée => que la dateDebutVaccination est renseignée - Si vaccin à effectuer => dateDebutVaccination et dateFinVaccination peuvent être renseignée (période souhaitée pour la vaccination)",
      "definition" : "Période de vaccination - Si vaccin effectuée => que la dateDebutVaccination est renseignée - Si vaccin à effectuer => dateDebutVaccination et dateFinVaccination peuvent être renseignée (période souhaitée pour la vaccination)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/organization-period|5.3.0"]
      }]
    },
    {
      "id" : "fr-lm-immunisation.periodOfImmunisation.startDate",
      "path" : "fr-lm-immunisation.periodOfImmunisation.startDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-immunisation.periodOfImmunisation.endDate",
      "path" : "fr-lm-immunisation.periodOfImmunisation.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-immunisation.diseaseOrAgentTargeted",
      "path" : "fr-lm-immunisation.diseaseOrAgentTargeted",
      "short" : "Maladie ou agent contre lequel la vaccination offre une protection. Binding Description: (preferred): ICD-10",
      "definition" : "Maladie ou agent contre lequel la vaccination offre une protection. Binding Description: (preferred): ICD-10",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-immunisation.administeredProduct",
      "path" : "fr-lm-immunisation.administeredProduct",
      "short" : "Vaccin",
      "definition" : "Vaccin",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication"
      }]
    },
    {
      "id" : "fr-lm-immunisation.route",
      "path" : "fr-lm-immunisation.route",
      "short" : "Voie d'administration",
      "definition" : "Voie d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-immunisation.site",
      "path" : "fr-lm-immunisation.site",
      "short" : "Région anatomique d'administration",
      "definition" : "Région anatomique d'administration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-immunisation.doseQuantity",
      "path" : "fr-lm-immunisation.doseQuantity",
      "short" : "Dose administrée",
      "definition" : "Dose administrée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-immunisation.doseNumber",
      "path" : "fr-lm-immunisation.doseNumber",
      "short" : "Rang de la vaccination",
      "definition" : "Rang de la vaccination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-dose-number"
      }]
    },
    {
      "id" : "fr-lm-immunisation.note",
      "path" : "fr-lm-immunisation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-immunisation.prescription",
      "path" : "fr-lm-immunisation.prescription",
      "short" : "Référence de la prescription",
      "definition" : "Référence de la prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-prescription-entree"
      }]
    },
    {
      "id" : "fr-lm-immunisation.reaction",
      "path" : "fr-lm-immunisation.reaction",
      "short" : "Réaction observée suite au vaccin",
      "definition" : "Réaction observée suite au vaccin",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-condition"
      }]
    },
    {
      "id" : "fr-lm-immunisation.reasonCode",
      "path" : "fr-lm-immunisation.reasonCode",
      "short" : "Raison de la vaccination (voyage, professionnel, etc.)",
      "definition" : "Raison de la vaccination (voyage, professionnel, etc.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
