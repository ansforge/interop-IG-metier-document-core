# Logical model - FR LM Medication Dispense - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Medication Dispense 

 
Traitement dispense 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Medication Dispensations](StructureDefinition-FRLMMedicationDispensations.md) and [Logical model - FR LM Medication Use](StructureDefinition-FRLMMedicationUse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMMedicationDispense)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 2 éléments(3 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Identifier (http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-elementdefinition-identifier.html)

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 2 éléments(3 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Identifier (http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0)](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-elementdefinition-identifier.html)

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMMedicationDispense.csv), [Excel](../StructureDefinition-FRLMMedicationDispense.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedicationDispense",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense",
  "version" : "0.1.0",
  "name" : "FRLMMedicationDispense",
  "title" : "Logical model - FR LM Medication Dispense",
  "status" : "draft",
  "date" : "2026-08-20T15:08:45+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Traitement dispense",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedicationDispense",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedicationDispense",
      "path" : "FRLMMedicationDispense",
      "short" : "Logical model - FR LM Medication Dispense",
      "definition" : "Traitement dispense"
    },
    {
      "id" : "FRLMMedicationDispense.header.author[x]",
      "path" : "FRLMMedicationDispense.header.author[x]",
      "short" : "Auteur de la Auteur de la dispensation",
      "min" : 1
    },
    {
      "id" : "FRLMMedicationDispense.header.status",
      "path" : "FRLMMedicationDispense.header.status",
      "short" : "Statut de la ligne de prescription",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "description" : "Valeur issue du JDV_CompletudeDispensation_CISIS (1.2.250.1.213.1.1.5.765)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-completude-dispensation-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMMedicationDispense.receiver[x]",
      "path" : "FRLMMedicationDispense.receiver[x]",
      "short" : "Identification de la personne ayant reçu le médicament délivré, notamment lorsqu'il ne s'agit pas du patient. Si non présent, le patient est considéré comme le destinataire.",
      "definition" : "Identification de la personne ayant reçu le médicament délivré, notamment lorsqu'il ne s'agit pas du patient. Si non présent, le patient est considéré comme le destinataire.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.relatedRequest",
      "path" : "FRLMMedicationDispense.relatedRequest",
      "short" : "Référence de la prescription",
      "definition" : "Référence de la prescription",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier|5.3.0"]
      }]
    },
    {
      "id" : "FRLMMedicationDispense.medicament",
      "path" : "FRLMMedicationDispense.medicament",
      "short" : "Médicament délivré",
      "definition" : "Médicament délivré",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.dispensedQuantity",
      "path" : "FRLMMedicationDispense.dispensedQuantity",
      "short" : "Quantite de produit. \nNombre d'emballages distribués si leur format est connu, ou nombre d'articles/unités plus petits, selon le médicament distribué. Une unité est attendue.",
      "definition" : "Quantite de produit. \nNombre d'emballages distribués si leur format est connu, ou nombre d'articles/unités plus petits, selon le médicament distribué. Une unité est attendue.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.timeOfDispensation",
      "path" : "FRLMMedicationDispense.timeOfDispensation",
      "short" : "Date et heure de dispense du médicament. Si non présent, la date de dispensation est celle du header.",
      "definition" : "Date et heure de dispense du médicament. Si non présent, la date de dispensation est celle du header.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.substitutionOccurred",
      "path" : "FRLMMedicationDispense.substitutionOccurred",
      "short" : "Autorisation de substitution",
      "definition" : "Autorisation de substitution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.dosageInstructions",
      "path" : "FRLMMedicationDispense.dosageInstructions",
      "short" : "Posologie",
      "definition" : "Posologie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
      }]
    },
    {
      "id" : "FRLMMedicationDispense.note",
      "path" : "FRLMMedicationDispense.note",
      "short" : "Notes du dispensateur",
      "definition" : "Notes du dispensateur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
