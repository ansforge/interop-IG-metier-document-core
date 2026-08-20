# Logical model - FR LM Medication Prescription - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Medication Prescription 

 
Traitement prescrit 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM FR LM Medication Prescription](StructureDefinition-FRLMMedicationPrescription.md) and [Logical model - FR LM Medication Use](StructureDefinition-FRLMMedicationUse.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMPrescriptionItem)

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

Obligatoire : 2 éléments(8 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 2 éléments(8 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMPrescriptionItem.csv), [Excel](../StructureDefinition-FRLMPrescriptionItem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMPrescriptionItem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem",
  "version" : "0.1.0",
  "name" : "FRLMPrescriptionItem",
  "title" : "Logical model - FR LM Medication Prescription",
  "status" : "draft",
  "date" : "2026-08-20T15:24:46+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Traitement prescrit",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPrescriptionItem",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMPrescriptionItem",
      "path" : "FRLMPrescriptionItem",
      "short" : "Logical model - FR LM Medication Prescription",
      "definition" : "Traitement prescrit",
      "min" : 1
    },
    {
      "id" : "FRLMPrescriptionItem.header.identifier",
      "path" : "FRLMPrescriptionItem.header.identifier",
      "min" : 1
    },
    {
      "id" : "FRLMPrescriptionItem.header.author[x]",
      "path" : "FRLMPrescriptionItem.header.author[x]",
      "short" : "Auteur de la prescription",
      "max" : "1"
    },
    {
      "id" : "FRLMPrescriptionItem.header.status",
      "path" : "FRLMPrescriptionItem.header.status",
      "short" : "Statut de la ligne de prescription",
      "min" : 1
    },
    {
      "id" : "FRLMPrescriptionItem.statusReason[x]",
      "path" : "FRLMPrescriptionItem.statusReason[x]",
      "short" : "Motif du statut de la ligne de prescription.\nPar exemple, motif pour lequelle la ligne de prescription a été invalidée ou modifiée par rapport à la version précédente.",
      "definition" : "Motif du statut de la ligne de prescription.\nPar exemple, motif pour lequelle la ligne de prescription a été invalidée ou modifiée par rapport à la version précédente.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.medication",
      "path" : "FRLMPrescriptionItem.medication",
      "short" : "Produit de santé",
      "definition" : "Produit de santé",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.indication[x]",
      "path" : "FRLMPrescriptionItem.indication[x]",
      "short" : "Motif du traitement (problème ou acte).",
      "definition" : "Motif du traitement (problème ou acte).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "ICD-10, SNOMED CT, Orphacode"
      }
    },
    {
      "id" : "FRLMPrescriptionItem.intendedUseType",
      "path" : "FRLMPrescriptionItem.intendedUseType",
      "short" : "Objet de la prescription - prophylaxie, traitement, anesthésie, etc",
      "definition" : "Objet de la prescription - prophylaxie, traitement, anesthésie, etc",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.periodOfUse",
      "path" : "FRLMPrescriptionItem.periodOfUse",
      "short" : "Durée du traitement",
      "definition" : "Durée du traitement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.dosageInstructions",
      "path" : "FRLMPrescriptionItem.dosageInstructions",
      "short" : "Posologie",
      "definition" : "Posologie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDosageInstructions"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.quantityPrescribed",
      "path" : "FRLMPrescriptionItem.quantityPrescribed",
      "short" : "Quantite de produit",
      "definition" : "Quantite de produit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.validityPeriod",
      "path" : "FRLMPrescriptionItem.validityPeriod",
      "short" : "Periode de validité de la ligne de prescription",
      "definition" : "Periode de validité de la ligne de prescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.substitution",
      "path" : "FRLMPrescriptionItem.substitution",
      "short" : "Autorisation de substitution",
      "definition" : "Autorisation de substitution",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "path" : "FRLMPrescriptionItem.substitution.allowed[x]",
      "short" : "Type de substitution",
      "definition" : "Type de substitution",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "boolean"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis (2.16.840.1.113883.1.11.16621)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-hl7-v3-ActSubstanceAdminSubstitutionCode-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMPrescriptionItem.substitution.reason[x]",
      "path" : "FRLMPrescriptionItem.substitution.reason[x]",
      "short" : "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle).",
      "definition" : "Motif de non substitution (Marge thérapeutique étroite, Enfant forme galénique, Contre-indication formelle).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.numberOfRepeats",
      "path" : "FRLMPrescriptionItem.numberOfRepeats",
      "short" : "Nombre de renouvellement(s) possible(s). Non renseigné si pas de limite du nombre de dispensation. '0'=dispensation unique. Le nombre total de dispensation = nombre de renouvellement + 1.",
      "definition" : "Nombre de renouvellement(s) possible(s). Non renseigné si pas de limite du nombre de dispensation. '0'=dispensation unique. Le nombre total de dispensation = nombre de renouvellement + 1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.minimumDispenseInterval",
      "path" : "FRLMPrescriptionItem.minimumDispenseInterval",
      "short" : "Intervalle minimal de délivrance. Si une ordonnance autorise des délivrances répétées, l'intervalle entre ces délivrances doit être indiqué ici.",
      "definition" : "Intervalle minimal de délivrance. Si une ordonnance autorise des délivrances répétées, l'intervalle entre ces délivrances doit être indiqué ici.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.offLabel",
      "path" : "FRLMPrescriptionItem.offLabel",
      "short" : "Hors AMM. Indique que le prescripteur a sciemment prescrit le médicament pour une indication, un groupe d'âge, une posologie ou une voie d'administration non approuvée par les organismes de réglementation et non mentionnée dans la notice du médicament.",
      "definition" : "Hors AMM. Indique que le prescripteur a sciemment prescrit le médicament pour une indication, un groupe d'âge, une posologie ou une voie d'administration non approuvée par les organismes de réglementation et non mentionnée dans la notice du médicament.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.offLabel.isOffLabelUse",
      "path" : "FRLMPrescriptionItem.offLabel.isOffLabelUse",
      "short" : "Indique si la prescription est hors AMM. Doit être égal à « true » lorsque la raison est fournie.",
      "definition" : "Indique si la prescription est hors AMM. Doit être égal à « true » lorsque la raison est fournie.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.offLabel.reason[x]",
      "path" : "FRLMPrescriptionItem.offLabel.reason[x]",
      "short" : "Raison de la prescription hors AMM",
      "definition" : "Raison de la prescription hors AMM",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.note",
      "path" : "FRLMPrescriptionItem.note",
      "short" : "Instructions au dispensateur",
      "definition" : "Instructions au dispensateur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.enRapportAvecALD",
      "path" : "FRLMPrescriptionItem.enRapportAvecALD",
      "short" : "En rapport avec ALD",
      "definition" : "En rapport avec ALD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "path" : "FRLMPrescriptionItem.enRapportAvecAccidentTravail",
      "short" : "En rapport avec accident travail",
      "definition" : "En rapport avec accident travail",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "path" : "FRLMPrescriptionItem.enRapportAvecPrevention",
      "short" : "En rapport avec la prevention",
      "definition" : "En rapport avec la prevention",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMPrescriptionItem.nonRemboursable",
      "path" : "FRLMPrescriptionItem.nonRemboursable",
      "short" : "Non remboursable",
      "definition" : "Non remboursable",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
