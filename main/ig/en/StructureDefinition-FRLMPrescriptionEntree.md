# Logical model - FR LM Prescription - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Prescription 

 
Prescription 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisation](StructureDefinition-FRLMImmunisation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPrescriptionEntree.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPrescriptionEntree.csv), [Excel](../StructureDefinition-FRLMPrescriptionEntree.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPrescriptionEntree",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionEntree",
  "version" : "0.1.0",
  "name" : "FRLMPrescriptionEntree",
  "title" : "Logical model - FR LM Prescription",
  "status" : "draft",
  "date" : "2026-09-04T14:19:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Prescription ",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionEntree",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPrescriptionEntree",
      "path" : "FRLMPrescriptionEntree",
      "short" : "Logical model - FR LM Prescription",
      "definition" : "Prescription "
    },
    {
      "id" : "FRLMPrescriptionEntree.identifiantPrescription",
      "path" : "FRLMPrescriptionEntree.identifiantPrescription",
      "short" : "Identifiant de la prescription",
      "definition" : "Identifiant de la prescription",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMPrescriptionEntree.nombreRenouvellements",
      "path" : "FRLMPrescriptionEntree.nombreRenouvellements",
      "short" : "Nombre de renouvellements possibles",
      "definition" : "Nombre de renouvellements possibles",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "FRLMPrescriptionEntree.quantitePrescription",
      "path" : "FRLMPrescriptionEntree.quantitePrescription",
      "short" : "Quantité",
      "definition" : "Quantité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMPrescriptionEntree.instructionsAuDispensateur",
      "path" : "FRLMPrescriptionEntree.instructionsAuDispensateur",
      "short" : "Instructions au dispensateur",
      "definition" : "Instructions au dispensateur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
