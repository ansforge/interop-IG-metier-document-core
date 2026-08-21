# Logical model - FR LM Patient Transfer. - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Patient Transfer. 

 
Transfert du patient 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Course of encounter](StructureDefinition-FRLMCourseOfEncounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMPatientTransfer.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMPatientTransfer.csv), [Excel](../StructureDefinition-FRLMPatientTransfer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPatientTransfer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientTransfer",
  "version" : "0.1.0",
  "name" : "FRLMPatientTransfer",
  "title" : "Logical model - FR LM Patient Transfer.",
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
  "description" : "Transfert du patient",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatientTransfer",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPatientTransfer",
      "path" : "FRLMPatientTransfer",
      "short" : "Logical model - FR LM Patient Transfer.",
      "definition" : "Transfert du patient"
    },
    {
      "id" : "FRLMPatientTransfer.header.participant[x].participantOrganisation",
      "path" : "FRLMPatientTransfer.header.participant[x].participantOrganisation",
      "short" : "Destination"
    },
    {
      "id" : "FRLMPatientTransfer.header.date",
      "path" : "FRLMPatientTransfer.header.date",
      "short" : "Date du transfert"
    },
    {
      "id" : "FRLMPatientTransfer.code",
      "path" : "FRLMPatientTransfer.code",
      "short" : "Code du transfert",
      "definition" : "Code du transfert",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
