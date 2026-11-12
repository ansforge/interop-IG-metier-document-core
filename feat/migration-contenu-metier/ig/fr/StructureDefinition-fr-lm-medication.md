# Logical model - FR LM Medication - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Medication 

 
Produit de santé 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Immunisation](StructureDefinition-fr-lm-immunisation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-fr-lm-medication-administration.md), [Logical model - FR LM Medication Dispense](StructureDefinition-fr-lm-medication-dispense.md), [Logical model - FR LM Medication Prescription](StructureDefinition-fr-lm-prescription-item.md) and [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-medication)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

Obligatoire : 0 élément(6 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-medication.csv), [Excel](../StructureDefinition-fr-lm-medication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-medication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication",
  "version" : "0.1.0",
  "name" : "FRLMMedication",
  "title" : "Logical model - FR LM Medication",
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
  "description" : "Produit de santé",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-medication",
      "path" : "fr-lm-medication",
      "short" : "Logical model - FR LM Medication",
      "definition" : "Produit de santé"
    },
    {
      "id" : "fr-lm-medication.identifyingCode[x]",
      "path" : "fr-lm-medication.identifyingCode[x]",
      "short" : "Code du produit de santé. Non présent pour les préparations magistrales.",
      "definition" : "Code du produit de santé. Non présent pour les préparations magistrales.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.identifyingCode[x].identifyingCodeCodeableConcept",
      "path" : "fr-lm-medication.identifyingCode[x].identifyingCodeCodeableConcept",
      "short" : "Codes du médicament dans une termino spécifique",
      "definition" : "Codes du médicament dans une termino spécifique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.identifyingCode[x].identifyingCodeIdentifier",
      "path" : "fr-lm-medication.identifyingCode[x].identifyingCodeIdentifier",
      "short" : "identifiant du medication",
      "definition" : "identifiant du medication",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-medication.classification",
      "path" : "fr-lm-medication.classification",
      "short" : "Classification ATC",
      "definition" : "Classification ATC",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.productName",
      "path" : "fr-lm-medication.productName",
      "short" : "Nom du produit (contenant aussi le dosage et la forme galénique). Si le médicament est codé, le nom du produit peut ne pas être renseigné.",
      "definition" : "Nom du produit (contenant aussi le dosage et la forme galénique). Si le médicament est codé, le nom du produit peut ne pas être renseigné.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-medication.marketingAuthorisationHolder",
      "path" : "fr-lm-medication.marketingAuthorisationHolder",
      "short" : "Titulaire de l'autorisation de mise sur le marché du médicament. \n  Cette information est utile pour identifier précisément le produit. Si le produit ne dispose pas d'une autorisation de mise sur le marché, les informations fournies par le fabricant peuvent être utilisées.",
      "definition" : "Titulaire de l'autorisation de mise sur le marché du médicament. \n  Cette information est utile pour identifier précisément le produit. Si le produit ne dispose pas d'une autorisation de mise sur le marché, les informations fournies par le fabricant peuvent être utilisées.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.marketingAuthorisationHolder.organisationName",
      "path" : "fr-lm-medication.marketingAuthorisationHolder.organisationName",
      "short" : "Nom de l'organisme détenant l'autorisation de commercialisation/fabrication.",
      "definition" : "Nom de l'organisme détenant l'autorisation de commercialisation/fabrication.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-medication.marketingAuthorisationHolder.organisationIdentifier",
      "path" : "fr-lm-medication.marketingAuthorisationHolder.organisationIdentifier",
      "short" : "Identifiant de l'organisation et/ou de son emplacement physique.",
      "definition" : "Identifiant de l'organisation et/ou de son emplacement physique.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-medication.item",
      "path" : "fr-lm-medication.item",
      "short" : "Dans le cas de conditionnements combinés, chaque ingrédient dispose de sa propre forme galénique, ses propres ingrédients et leurs dosages respectifs.",
      "definition" : "Dans le cas de conditionnements combinés, chaque ingrédient dispose de sa propre forme galénique, ses propres ingrédients et leurs dosages respectifs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.item.doseForm",
      "path" : "fr-lm-medication.item.doseForm",
      "short" : "Forme galénique du produit de santé. EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe PDF (forme galénique).",
      "definition" : "Forme galénique du produit de santé. EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe PDF (forme galénique).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "EDQM Standard Terms"
      }
    },
    {
      "id" : "fr-lm-medication.item.ingredient",
      "path" : "fr-lm-medication.item.ingredient",
      "short" : "Ingrédient",
      "definition" : "Ingrédient",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.item.ingredient.isActive",
      "path" : "fr-lm-medication.item.ingredient.isActive",
      "short" : "Indique si l'ingrédient est considéré comme un ingrédient actif. Les excipients ne sont généralement pas nécessaires et, par défaut, seuls les ingrédients actifs sont attendus.",
      "definition" : "Indique si l'ingrédient est considéré comme un ingrédient actif. Les excipients ne sont généralement pas nécessaires et, par défaut, seuls les ingrédients actifs sont attendus.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "fr-lm-medication.item.ingredient.substance",
      "path" : "fr-lm-medication.item.ingredient.substance",
      "short" : "Substance. Code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "definition" : "Substance. Code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "SMS (2.16.840.1.113883.3.6905.2)"
      }
    },
    {
      "id" : "fr-lm-medication.item.ingredient.strengthInfo",
      "path" : "fr-lm-medication.item.ingredient.strengthInfo",
      "short" : "Concentration de l'ingrédient par unité",
      "definition" : "Concentration de l'ingrédient par unité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.item.ingredient.strengthInfo.strength",
      "path" : "fr-lm-medication.item.ingredient.strengthInfo.strength",
      "short" : "numérateur/dénominateur. Ex 100 mg/1 ml ou 500 mg / comprimé.",
      "definition" : "numérateur/dénominateur. Ex 100 mg/1 ml ou 500 mg / comprimé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "fr-lm-medication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "path" : "fr-lm-medication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "short" : "Substance concernée. code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "definition" : "Substance concernée. code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.item.unitOfPresentation",
      "path" : "fr-lm-medication.item.unitOfPresentation",
      "short" : "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.\nEDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).",
      "definition" : "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.\nEDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.item.containedQuantity",
      "path" : "fr-lm-medication.item.containedQuantity",
      "short" : "Quantité de produit par unité (ex : 3 ml / 1 flacon)",
      "definition" : "Quantité de produit par unité (ex : 3 ml / 1 flacon)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "fr-lm-medication.item.amount",
      "path" : "fr-lm-medication.item.amount",
      "short" : "Nombre d'unités dans un package (ex : 5 ampoules)",
      "definition" : "Nombre d'unités dans un package (ex : 5 ampoules)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-medication.item.packageType",
      "path" : "fr-lm-medication.item.packageType",
      "short" : "Conditionnement primaire (ampoule, plaquette,…) EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe CON (Récipient).",
      "definition" : "Conditionnement primaire (ampoule, plaquette,…) EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe CON (Récipient).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.device",
      "path" : "fr-lm-medication.device",
      "short" : "Dispositif d'administration inclus dans le produit. Les dispositifs qui ne sont pas contenus dans le conditionnement du médicament ne sont pas pris en compte.",
      "definition" : "Dispositif d'administration inclus dans le produit. Les dispositifs qui ne sont pas contenus dans le conditionnement du médicament ne sont pas pris en compte.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.device.deviceQuantity",
      "path" : "fr-lm-medication.device.deviceQuantity",
      "short" : "Nombre de dispositifs.",
      "definition" : "Nombre de dispositifs.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-medication.device.device[x]",
      "path" : "fr-lm-medication.device.device[x]",
      "short" : "Code du dispositif",
      "definition" : "Code du dispositif",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-medication.characteristic",
      "path" : "fr-lm-medication.characteristic",
      "short" : "Caractéristiques supplémentaires du produit (par ex. sans sucre, bouchon facile à ouvrir, dosage gradué). Il est prévu que les implémenteurs définissent un ensemble de valeurs (ValueSet) adapté à leurs cas d’usage.",
      "definition" : "Caractéristiques supplémentaires du produit (par ex. sans sucre, bouchon facile à ouvrir, dosage gradué). Il est prévu que les implémenteurs définissent un ensemble de valeurs (ValueSet) adapté à leurs cas d’usage.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.characteristic.type",
      "path" : "fr-lm-medication.characteristic.type",
      "short" : "Type de caractéristique",
      "definition" : "Type de caractéristique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "fr-lm-medication.characteristic.value[x]",
      "path" : "fr-lm-medication.characteristic.value[x]",
      "short" : "Valeur de la caractéristique",
      "definition" : "Valeur de la caractéristique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "dateTime"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "decimal"
      },
      {
        "code" : "Ratio"
      }]
    },
    {
      "id" : "fr-lm-medication.batch",
      "path" : "fr-lm-medication.batch",
      "short" : "Informations relatives au lot d’un médicament. Elles sont généralement enregistrées lors de la dispensation ou de l’administration et sont rarement connues ou pertinentes dans le cadre d’une ordonnance ou d’une demande.",
      "definition" : "Informations relatives au lot d’un médicament. Elles sont généralement enregistrées lors de la dispensation ou de l’administration et sont rarement connues ou pertinentes dans le cadre d’une ordonnance ou d’une demande.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-medication.batch.lotNumber",
      "path" : "fr-lm-medication.batch.lotNumber",
      "short" : "Numéro de lot",
      "definition" : "Numéro de lot",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "fr-lm-medication.batch.expirationDate",
      "path" : "fr-lm-medication.batch.expirationDate",
      "short" : "Date d'expiration du produit",
      "definition" : "Date d'expiration du produit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
