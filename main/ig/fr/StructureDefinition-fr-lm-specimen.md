# Logical model - FR LM Specimen - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Specimen 

 
Prélèvement 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-fr-lm-batterie-examens-biologie-medicale.md), [Logical model - FR LM Observation](StructureDefinition-fr-lm-observation.md), [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-fr-lm-resultat-examens-biologie-element-clinique-pertinent.md), [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-fr-lm-resultats-examens-biologie-medicale.md)... Show 3 more, [Logical model - FR LM Series](StructureDefinition-fr-lm-series.md), [Logical model - FR LM Service Request](StructureDefinition-fr-lm-service-request.md) and [Logical model - FR LM Specimen](StructureDefinition-fr-lm-specimen.md)
* Référence ce Modèle logique: [Logical model - FR LM ObservationMedia](StructureDefinition-fr-lm-observation-media.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/fr-lm-specimen)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-fr-lm-entry.md) 

** Résumé **

Obligatoire : 0 élément(4 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-lm-specimen.csv), [Excel](../StructureDefinition-fr-lm-specimen.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-lm-specimen",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen",
  "version" : "0.1.0",
  "name" : "FRLMSpecimen",
  "title" : "Logical model - FR LM Specimen",
  "status" : "draft",
  "date" : "2026-07-16T15:39:37+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Prélèvement",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-entry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "fr-lm-specimen",
      "path" : "fr-lm-specimen",
      "short" : "Logical model - FR LM Specimen",
      "definition" : "Prélèvement"
    },
    {
      "id" : "fr-lm-specimen.header.status",
      "path" : "fr-lm-specimen.header.status",
      "short" : "Disponibilité du prélèvement",
      "binding" : {
        "description" : "(preferred): HL7 specimen-status"
      }
    },
    {
      "id" : "fr-lm-specimen.identifier",
      "path" : "fr-lm-specimen.identifier",
      "short" : "Identifiant unique de l'échantillon, au sein d'un périmètre défini. Exemple : identifiant attribué par le système du préleveur, identifiant attribué par le laboratoire, etc. Plusieurs identifiants peuvent être utilisés.",
      "definition" : "Identifiant unique de l'échantillon, au sein d'un périmètre défini. Exemple : identifiant attribué par le système du préleveur, identifiant attribué par le laboratoire, etc. Plusieurs identifiants peuvent être utilisés.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "fr-lm-specimen.type",
      "path" : "fr-lm-specimen.type",
      "short" : "Échantillon prélevé",
      "definition" : "Échantillon prélevé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "jdv-specimen-type-cisis (1.2.250.1.213.1.1.5.819)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis|20260619134042"
      }
    },
    {
      "id" : "fr-lm-specimen.specimenSource[x]",
      "path" : "fr-lm-specimen.specimenSource[x]",
      "short" : "Origine du prélèvement : il peut provenir d'un patient, d'un lieu ou d'un dispositif",
      "definition" : "Origine du prélèvement : il peut provenir d'un patient, d'un lieu ou d'un dispositif",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-location"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-specimen.parentSpecimen",
      "path" : "fr-lm-specimen.parentSpecimen",
      "short" : "Prélèvement dont provient cet échantillon",
      "definition" : "Prélèvement dont provient cet échantillon",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-specimen"
      }]
    },
    {
      "id" : "fr-lm-specimen.request",
      "path" : "fr-lm-specimen.request",
      "short" : "Demande à l'origine du prélèvement",
      "definition" : "Demande à l'origine du prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-service-request"
      }]
    },
    {
      "id" : "fr-lm-specimen.combined",
      "path" : "fr-lm-specimen.combined",
      "short" : "Binding Description: (preferred): HL7 specimen-combined",
      "definition" : "Binding Description: (preferred): HL7 specimen-combined",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): HL7 specimen-combined"
      }
    },
    {
      "id" : "fr-lm-specimen.collection",
      "path" : "fr-lm-specimen.collection",
      "short" : "Détails de la collecte",
      "definition" : "Détails de la collecte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.performer[x]",
      "path" : "fr-lm-specimen.collection.performer[x]",
      "short" : "Organisation prélevante",
      "definition" : "Organisation prélevante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-organisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-patient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-related-person"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.collected[x]",
      "path" : "fr-lm-specimen.collection.collected[x]",
      "short" : "Date du prélèvement",
      "definition" : "Date du prélèvement",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.quantity",
      "path" : "fr-lm-specimen.collection.quantity",
      "short" : "Quantité",
      "definition" : "Quantité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.method",
      "path" : "fr-lm-specimen.collection.method",
      "short" : "Acte de prélèvement",
      "definition" : "Acte de prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "NABM (1.2.250.1.215.300.2) ou 33882-2 [LOINC] Prélèvement"
      }
    },
    {
      "id" : "fr-lm-specimen.collection.device",
      "path" : "fr-lm-specimen.collection.device",
      "short" : "Dispositif utilisé",
      "definition" : "Dispositif utilisé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device-use"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.additive[x]",
      "path" : "fr-lm-specimen.collection.additive[x]",
      "short" : "Produit utilisé",
      "definition" : "Produit utilisé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-specimen.collection.bodySite",
      "path" : "fr-lm-specimen.collection.bodySite",
      "short" : "Localisation du prélèvement",
      "definition" : "Localisation du prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-body-structure"
      }]
    },
    {
      "id" : "fr-lm-specimen.receivedDate",
      "path" : "fr-lm-specimen.receivedDate",
      "short" : "Date de réception de l'échantillon",
      "definition" : "Date de réception de l'échantillon",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "fr-lm-specimen.container",
      "path" : "fr-lm-specimen.container",
      "short" : "Contenant du prélèvement",
      "definition" : "Contenant du prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "fr-lm-specimen.container.specimenQuantity",
      "path" : "fr-lm-specimen.container.specimenQuantity",
      "short" : "Quantité de prélèvement dans le contenant",
      "definition" : "Quantité de prélèvement dans le contenant",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "fr-lm-specimen.container.containerDevice",
      "path" : "fr-lm-specimen.container.containerDevice",
      "short" : "Dispositif utilisé comme contenant",
      "definition" : "Dispositif utilisé comme contenant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-device"
      }]
    },
    {
      "id" : "fr-lm-specimen.condition",
      "path" : "fr-lm-specimen.condition",
      "short" : "État de l'échantillon",
      "definition" : "État de l'échantillon",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "description" : "(preferred): HL7 specimenCondition"
      }
    },
    {
      "id" : "fr-lm-specimen.note",
      "path" : "fr-lm-specimen.note",
      "short" : "Commentaire",
      "definition" : "Commentaire",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
