# Logical model - FR LM Related Person - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Related Person 

 
Related Person 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Family Member History](StructureDefinition-FRLMFamilyMemberHistory.md), [Logical model - FR LM Informant](StructureDefinition-FRLMInformant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-FRLMIntendedRecipient.md), [Logical model - FR LM Medication Dispense](StructureDefinition-FRLMMedicationDispense.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMRelatedPerson.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMRelatedPerson.csv), [Excel](../StructureDefinition-FRLMRelatedPerson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMRelatedPerson",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson",
  "version" : "0.1.0",
  "name" : "FRLMRelatedPerson",
  "title" : "Logical model - FR LM Related Person",
  "status" : "draft",
  "date" : "2026-08-31T15:12:23+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Related Person",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMRelatedPerson",
      "path" : "FRLMRelatedPerson",
      "short" : "Logical model - FR LM Related Person",
      "definition" : "Related Person"
    },
    {
      "id" : "FRLMRelatedPerson.identifier",
      "path" : "FRLMRelatedPerson.identifier",
      "short" : "Identifiants de la personne",
      "definition" : "Identifiants de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.name",
      "path" : "FRLMRelatedPerson.name",
      "short" : "Nom de la personne",
      "definition" : "Nom de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.subject",
      "path" : "FRLMRelatedPerson.subject",
      "short" : "Patient / Usager avec la personne",
      "definition" : "Patient / Usager avec la personne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.relationship",
      "path" : "FRLMRelatedPerson.relationship",
      "short" : "Lien avec le patient",
      "definition" : "Lien avec le patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-hl7-v3-PersonalRelationshipRoleType-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMRelatedPerson.address",
      "path" : "FRLMRelatedPerson.address",
      "short" : "Adresse",
      "definition" : "Adresse",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.telecom",
      "path" : "FRLMRelatedPerson.telecom",
      "short" : "Telecom",
      "definition" : "Telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.gender",
      "path" : "FRLMRelatedPerson.gender",
      "short" : "Sexe de la personne",
      "definition" : "Sexe de la personne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-hl7-v3-AdministrativeGender-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-AdministrativeGender-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMRelatedPerson.birthDate",
      "path" : "FRLMRelatedPerson.birthDate",
      "short" : "Date de naissance de la personne",
      "definition" : "Date de naissance de la personne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.deceased",
      "path" : "FRLMRelatedPerson.deceased",
      "short" : "Personne decedee",
      "definition" : "Personne decedee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.deceased.deceasedBoolean",
      "path" : "FRLMRelatedPerson.deceased.deceasedBoolean",
      "short" : "Personne decedee (booleen)",
      "definition" : "Personne decedee (booleen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.deceased.deceasedDateTime",
      "path" : "FRLMRelatedPerson.deceased.deceasedDateTime",
      "short" : "Date et heure du deces",
      "definition" : "Date et heure du deces",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.multipleBirth",
      "path" : "FRLMRelatedPerson.multipleBirth",
      "short" : "Naissance multiple",
      "definition" : "Naissance multiple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.multipleBirth.multipleBirthBoolean",
      "path" : "FRLMRelatedPerson.multipleBirth.multipleBirthBoolean",
      "short" : "Personne nee d'une naissance multiple",
      "definition" : "Personne nee d'une naissance multiple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.multipleBirth.multipleBirthInteger",
      "path" : "FRLMRelatedPerson.multipleBirth.multipleBirthInteger",
      "short" : "Rang de naissance (en cas de naissances multiples)",
      "definition" : "Rang de naissance (en cas de naissances multiples)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.photo",
      "path" : "FRLMRelatedPerson.photo",
      "short" : "Photo de la personne",
      "definition" : "Photo de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.period",
      "path" : "FRLMRelatedPerson.period",
      "short" : "Periode pendant laquelle cette relation est consideree comme valide",
      "definition" : "Periode pendant laquelle cette relation est consideree comme valide",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.communication",
      "path" : "FRLMRelatedPerson.communication",
      "short" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "definition" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.communication.language",
      "path" : "FRLMRelatedPerson.communication.language",
      "short" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "definition" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMRelatedPerson.communication.preferred",
      "path" : "FRLMRelatedPerson.communication.preferred",
      "short" : "Indicateur Langue preferee",
      "definition" : "Indicateur Langue preferee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
