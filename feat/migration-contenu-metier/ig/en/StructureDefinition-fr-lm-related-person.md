# Logical model - FR LM Related Person - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Related Person 

 
Related Person 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Family Member History](StructureDefinition-fr-lm-family-member-history.md), [Logical model - FR LM Informant](StructureDefinition-fr-lm-informant.md), [Logical model - FR LM Intended Recipient](StructureDefinition-fr-lm-intended-recipient.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-fr-lm-related-person.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-lm-related-person.csv), [Excel](../StructureDefinition-fr-lm-related-person.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-related-person",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-related-person",
  "version" : "0.1.0",
  "name" : "FRLMRelatedPerson",
  "title" : "Logical model - FR LM Related Person",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-related-person",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-related-person",
      "path" : "fr-lm-related-person",
      "short" : "Logical model - FR LM Related Person",
      "definition" : "Related Person"
    },
    {
      "id" : "fr-lm-related-person.identifier",
      "path" : "fr-lm-related-person.identifier",
      "short" : "Identifiants de la personne",
      "definition" : "Identifiants de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-related-person.name",
      "path" : "fr-lm-related-person.name",
      "short" : "Nom de la personne",
      "definition" : "Nom de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-human-name"
      }]
    },
    {
      "id" : "fr-lm-related-person.subject",
      "path" : "fr-lm-related-person.subject",
      "short" : "Patient / Usager avec la personne",
      "definition" : "Patient / Usager avec la personne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      }]
    },
    {
      "id" : "fr-lm-related-person.relationship",
      "path" : "fr-lm-related-person.relationship",
      "short" : "Lien avec le patient",
      "definition" : "Lien avec le patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-v3-PersonalRelationshipRoleType-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-PersonalRelationshipRoleType-cisis|20260619134041"
      }
    },
    {
      "id" : "fr-lm-related-person.address",
      "path" : "fr-lm-related-person.address",
      "short" : "Adresse",
      "definition" : "Adresse",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "fr-lm-related-person.telecom",
      "path" : "fr-lm-related-person.telecom",
      "short" : "Telecom",
      "definition" : "Telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "fr-lm-related-person.gender",
      "path" : "fr-lm-related-person.gender",
      "short" : "Sexe de la personne",
      "definition" : "Sexe de la personne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-hl7-v3-AdministrativeGender-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-AdministrativeGender-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-related-person.birthDate",
      "path" : "fr-lm-related-person.birthDate",
      "short" : "Date de naissance de la personne",
      "definition" : "Date de naissance de la personne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-related-person.deceased",
      "path" : "fr-lm-related-person.deceased",
      "short" : "Personne decedee",
      "definition" : "Personne decedee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "fr-lm-related-person.deceased.deceasedBoolean",
      "path" : "fr-lm-related-person.deceased.deceasedBoolean",
      "short" : "Personne decedee (booleen)",
      "definition" : "Personne decedee (booleen)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-related-person.deceased.deceasedDateTime",
      "path" : "fr-lm-related-person.deceased.deceasedDateTime",
      "short" : "Date et heure du deces",
      "definition" : "Date et heure du deces",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-related-person.multipleBirth",
      "path" : "fr-lm-related-person.multipleBirth",
      "short" : "Naissance multiple",
      "definition" : "Naissance multiple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "fr-lm-related-person.multipleBirth.multipleBirthBoolean",
      "path" : "fr-lm-related-person.multipleBirth.multipleBirthBoolean",
      "short" : "Personne nee d'une naissance multiple",
      "definition" : "Personne nee d'une naissance multiple",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-related-person.multipleBirth.multipleBirthInteger",
      "path" : "fr-lm-related-person.multipleBirth.multipleBirthInteger",
      "short" : "Rang de naissance (en cas de naissances multiples)",
      "definition" : "Rang de naissance (en cas de naissances multiples)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "fr-lm-related-person.photo",
      "path" : "fr-lm-related-person.photo",
      "short" : "Photo de la personne",
      "definition" : "Photo de la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "fr-lm-related-person.period",
      "path" : "fr-lm-related-person.period",
      "short" : "Periode pendant laquelle cette relation est consideree comme valide",
      "definition" : "Periode pendant laquelle cette relation est consideree comme valide",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-related-person.communication",
      "path" : "fr-lm-related-person.communication",
      "short" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "definition" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "fr-lm-related-person.communication.language",
      "path" : "fr-lm-related-person.communication.language",
      "short" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "definition" : "Langue qui peut etre utilisee pour communiquer avec la personne",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-related-person.communication.preferred",
      "path" : "fr-lm-related-person.communication.preferred",
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
