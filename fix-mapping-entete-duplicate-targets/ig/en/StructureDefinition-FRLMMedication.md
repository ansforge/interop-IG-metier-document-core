# Logical model - FR LM Medication - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Medication 

 
Produit de santé 

**Usages:**

* Use this Logical Model: [Logical model - FR LM Immunisation](StructureDefinition-FRLMImmunisation.md), [Logical model- FR LM Medication Administration ](StructureDefinition-FRLMMedicationAdministration.md), [Logical model - FR LM Medication Dispense](StructureDefinition-FRLMMedicationDispense.md), [Logical model - FR LM Medication Use](StructureDefinition-FRLMMedicationUse.md)... Show 2 more, [Logical model - FR LM Medication Prescription](StructureDefinition-FRLMPrescriptionItem.md) and [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMMedication.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMMedication.csv), [Excel](../StructureDefinition-FRLMMedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMMedication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication",
  "version" : "0.1.0",
  "name" : "FRLMMedication",
  "title" : "Logical model - FR LM Medication",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMMedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMMedication",
      "path" : "FRLMMedication",
      "short" : "Logical model - FR LM Medication",
      "definition" : "Produit de santé"
    },
    {
      "id" : "FRLMMedication.identifyingCode[x]",
      "path" : "FRLMMedication.identifyingCode[x]",
      "short" : "Code du produit de santé. Non présent pour les préparations magistrales.",
      "definition" : "Code du produit de santé. Non présent pour les préparations magistrales.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.identifyingCode[x].identifyingCodeCodeableConcept",
      "path" : "FRLMMedication.identifyingCode[x].identifyingCodeCodeableConcept",
      "short" : "Codes du médicament dans une termino spécifique",
      "definition" : "Codes du médicament dans une termino spécifique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.identifyingCode[x].identifyingCodeIdentifier",
      "path" : "FRLMMedication.identifyingCode[x].identifyingCodeIdentifier",
      "short" : "identifiant du medication",
      "definition" : "identifiant du medication",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMMedication.classification",
      "path" : "FRLMMedication.classification",
      "short" : "Classification ATC",
      "definition" : "Classification ATC",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.productName",
      "path" : "FRLMMedication.productName",
      "short" : "Nom du produit (contenant aussi le dosage et la forme galénique). Si le médicament est codé, le nom du produit peut ne pas être renseigné.",
      "definition" : "Nom du produit (contenant aussi le dosage et la forme galénique). Si le médicament est codé, le nom du produit peut ne pas être renseigné.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMMedication.marketingAuthorisationHolder",
      "path" : "FRLMMedication.marketingAuthorisationHolder",
      "short" : "Titulaire de l'autorisation de mise sur le marché du médicament. \n  Cette information est utile pour identifier précisément le produit. Si le produit ne dispose pas d'une autorisation de mise sur le marché, les informations fournies par le fabricant peuvent être utilisées.",
      "definition" : "Titulaire de l'autorisation de mise sur le marché du médicament. \n  Cette information est utile pour identifier précisément le produit. Si le produit ne dispose pas d'une autorisation de mise sur le marché, les informations fournies par le fabricant peuvent être utilisées.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.marketingAuthorisationHolder.organisationName",
      "path" : "FRLMMedication.marketingAuthorisationHolder.organisationName",
      "short" : "Nom de l'organisme détenant l'autorisation de commercialisation/fabrication.",
      "definition" : "Nom de l'organisme détenant l'autorisation de commercialisation/fabrication.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMMedication.marketingAuthorisationHolder.organisationIdentifier",
      "path" : "FRLMMedication.marketingAuthorisationHolder.organisationIdentifier",
      "short" : "Identifiant de l'organisation et/ou de son emplacement physique.",
      "definition" : "Identifiant de l'organisation et/ou de son emplacement physique.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMMedication.item",
      "path" : "FRLMMedication.item",
      "short" : "Dans le cas de conditionnements combinés, chaque ingrédient dispose de sa propre forme galénique, ses propres ingrédients et leurs dosages respectifs.",
      "definition" : "Dans le cas de conditionnements combinés, chaque ingrédient dispose de sa propre forme galénique, ses propres ingrédients et leurs dosages respectifs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.item.doseForm",
      "path" : "FRLMMedication.item.doseForm",
      "short" : "Forme galénique du produit de santé. EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe PDF (forme galénique).",
      "definition" : "Forme galénique du produit de santé. EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe PDF (forme galénique).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "EDQM Standard Terms"
      }
    },
    {
      "id" : "FRLMMedication.item.ingredient",
      "path" : "FRLMMedication.item.ingredient",
      "short" : "Ingrédient",
      "definition" : "Ingrédient",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.item.ingredient.isActive",
      "path" : "FRLMMedication.item.ingredient.isActive",
      "short" : "Indique si l'ingrédient est considéré comme un ingrédient actif. Les excipients ne sont généralement pas nécessaires et, par défaut, seuls les ingrédients actifs sont attendus.",
      "definition" : "Indique si l'ingrédient est considéré comme un ingrédient actif. Les excipients ne sont généralement pas nécessaires et, par défaut, seuls les ingrédients actifs sont attendus.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "FRLMMedication.item.ingredient.substance",
      "path" : "FRLMMedication.item.ingredient.substance",
      "short" : "Substance. Code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "definition" : "Substance. Code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "SMS (2.16.840.1.113883.3.6905.2)"
      }
    },
    {
      "id" : "FRLMMedication.item.ingredient.strengthInfo",
      "path" : "FRLMMedication.item.ingredient.strengthInfo",
      "short" : "Concentration de l'ingrédient par unité",
      "definition" : "Concentration de l'ingrédient par unité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "path" : "FRLMMedication.item.ingredient.strengthInfo.strength",
      "short" : "numérateur/dénominateur. Ex 100 mg/1 ml ou 500 mg / comprimé.",
      "definition" : "numérateur/dénominateur. Ex 100 mg/1 ml ou 500 mg / comprimé.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "path" : "FRLMMedication.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "short" : "Substance concernée. code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "definition" : "Substance concernée. code SMS (2.16.840.1.113883.3.6905.2) de la substance active de l’European Medicines Agency (EMA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.item.unitOfPresentation",
      "path" : "FRLMMedication.item.unitOfPresentation",
      "short" : "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.\nEDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).",
      "definition" : "Unité de présentation du produit de santé (comprimé, ampoule, tube). En général, le plus petit objet dénombrable du package.\nEDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe UOP (Unit of Presentation).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.item.containedQuantity",
      "path" : "FRLMMedication.item.containedQuantity",
      "short" : "Quantité de produit par unité (ex : 3 ml / 1 flacon)",
      "definition" : "Quantité de produit par unité (ex : 3 ml / 1 flacon)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "FRLMMedication.item.amount",
      "path" : "FRLMMedication.item.amount",
      "short" : "Nombre d'unités dans un package (ex : 5 ampoules)",
      "definition" : "Nombre d'unités dans un package (ex : 5 ampoules)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMMedication.item.packageType",
      "path" : "FRLMMedication.item.packageType",
      "short" : "Conditionnement primaire (ampoule, plaquette,…) EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe CON (Récipient).",
      "definition" : "Conditionnement primaire (ampoule, plaquette,…) EDQM Standard Terms (0.4.0.127.0.16.1.1.2.1) / classe CON (Récipient).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.device",
      "path" : "FRLMMedication.device",
      "short" : "Dispositif d'administration inclus dans le produit. Les dispositifs qui ne sont pas contenus dans le conditionnement du médicament ne sont pas pris en compte.",
      "definition" : "Dispositif d'administration inclus dans le produit. Les dispositifs qui ne sont pas contenus dans le conditionnement du médicament ne sont pas pris en compte.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.device.deviceQuantity",
      "path" : "FRLMMedication.device.deviceQuantity",
      "short" : "Nombre de dispositifs.",
      "definition" : "Nombre de dispositifs.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMMedication.device.device[x]",
      "path" : "FRLMMedication.device.device[x]",
      "short" : "Code du dispositif",
      "definition" : "Code du dispositif",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMMedication.characteristic",
      "path" : "FRLMMedication.characteristic",
      "short" : "Caractéristiques supplémentaires du produit (par ex. sans sucre, bouchon facile à ouvrir, dosage gradué). Il est prévu que les implémenteurs définissent un ensemble de valeurs (ValueSet) adapté à leurs cas d’usage.",
      "definition" : "Caractéristiques supplémentaires du produit (par ex. sans sucre, bouchon facile à ouvrir, dosage gradué). Il est prévu que les implémenteurs définissent un ensemble de valeurs (ValueSet) adapté à leurs cas d’usage.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.characteristic.type",
      "path" : "FRLMMedication.characteristic.type",
      "short" : "Type de caractéristique",
      "definition" : "Type de caractéristique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMMedication.characteristic.value[x]",
      "path" : "FRLMMedication.characteristic.value[x]",
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
      "id" : "FRLMMedication.batch",
      "path" : "FRLMMedication.batch",
      "short" : "Informations relatives au lot d’un médicament. Elles sont généralement enregistrées lors de la dispensation ou de l’administration et sont rarement connues ou pertinentes dans le cadre d’une ordonnance ou d’une demande.",
      "definition" : "Informations relatives au lot d’un médicament. Elles sont généralement enregistrées lors de la dispensation ou de l’administration et sont rarement connues ou pertinentes dans le cadre d’une ordonnance ou d’une demande.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMMedication.batch.lotNumber",
      "path" : "FRLMMedication.batch.lotNumber",
      "short" : "Numéro de lot",
      "definition" : "Numéro de lot",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "FRLMMedication.batch.expirationDate",
      "path" : "FRLMMedication.batch.expirationDate",
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
