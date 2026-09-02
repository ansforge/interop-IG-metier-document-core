# Logical model - FR LM Immunisation - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Immunisation 

 
Vaccination 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisations](StructureDefinition-FRLMImmunisations.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMImmunisation.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMImmunisation.csv), [Excel](../StructureDefinition-FRLMImmunisation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMImmunisation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation",
  "version" : "0.1.0",
  "name" : "FRLMImmunisation",
  "title" : "Logical model - FR LM Immunisation",
  "status" : "draft",
  "date" : "2026-09-02T10:43:57+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMImmunisation",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMImmunisation",
      "path" : "FRLMImmunisation",
      "short" : "Logical model - FR LM Immunisation",
      "definition" : "Vaccination"
    },
    {
      "id" : "FRLMImmunisation.header.status",
      "path" : "FRLMImmunisation.header.status",
      "short" : "Statut de la vaccination (réalisé, non fait, ...).",
      "min" : 1
    },
    {
      "id" : "FRLMImmunisation.periodOfImmunisation",
      "path" : "FRLMImmunisation.periodOfImmunisation",
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
      "id" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "path" : "FRLMImmunisation.periodOfImmunisation.startDate",
      "short" : "Date de début",
      "definition" : "Date de début",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "path" : "FRLMImmunisation.periodOfImmunisation.endDate",
      "short" : "Date de fin",
      "definition" : "Date de fin",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "path" : "FRLMImmunisation.diseaseOrAgentTargeted",
      "short" : "Maladie ou agent contre lequel la vaccination offre une protection. Binding Description: (preferred): ICD-10",
      "definition" : "Maladie ou agent contre lequel la vaccination offre une protection. Binding Description: (preferred): ICD-10",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMImmunisation.administeredProduct",
      "path" : "FRLMImmunisation.administeredProduct",
      "short" : "Vaccin",
      "definition" : "Vaccin",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      }]
    },
    {
      "id" : "FRLMImmunisation.route",
      "path" : "FRLMImmunisation.route",
      "short" : "Voie d'administration",
      "definition" : "Voie d'administration",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMImmunisation.site",
      "path" : "FRLMImmunisation.site",
      "short" : "Région anatomique d'administration",
      "definition" : "Région anatomique d'administration",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMImmunisation.doseQuantity",
      "path" : "FRLMImmunisation.doseQuantity",
      "short" : "Dose administrée",
      "definition" : "Dose administrée",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMImmunisation.doseNumber",
      "path" : "FRLMImmunisation.doseNumber",
      "short" : "Rang de la vaccination",
      "definition" : "Rang de la vaccination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDoseNumber"
      }]
    },
    {
      "id" : "FRLMImmunisation.note",
      "path" : "FRLMImmunisation.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMImmunisation.prescription",
      "path" : "FRLMImmunisation.prescription",
      "short" : "Référence de la prescription",
      "definition" : "Référence de la prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionEntree"
      }]
    },
    {
      "id" : "FRLMImmunisation.reaction",
      "path" : "FRLMImmunisation.reaction",
      "short" : "Réaction observée suite au vaccin",
      "definition" : "Réaction observée suite au vaccin",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMCondition"
      }]
    },
    {
      "id" : "FRLMImmunisation.reasonCode",
      "path" : "FRLMImmunisation.reasonCode",
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
