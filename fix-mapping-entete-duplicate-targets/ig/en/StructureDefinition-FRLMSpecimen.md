# Logical model - FR LM Specimen - FR Document Core (Modèle métier) v0.1.0

## Logical Model: Logical model - FR LM Specimen 

 
Prélèvement 

**Usages:**

* Use this Logical Model: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-FRLMBatterieExamensBiologieMedicale.md), [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Modèle logique métier - FR LM Résultat d'examens de biologie / élement clinique pertinent](StructureDefinition-FRLMResultatExamensBiologieElementCliniquePertinent.md), [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)... Show 3 more, [Logical model - FR LM Series](StructureDefinition-FRLMSeries.md), [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)
* Refer to this Logical Model: [Logical model - FR LM ObservationMedia](StructureDefinition-FRLMObservationMedia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fr.document-core|current/StructureDefinition/StructureDefinition-FRLMSpecimen.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRLMSpecimen.csv), [Excel](../StructureDefinition-FRLMSpecimen.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMSpecimen",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen",
  "version" : "0.1.0",
  "name" : "FRLMSpecimen",
  "title" : "Logical model - FR LM Specimen",
  "status" : "draft",
  "date" : "2026-09-02T15:48:56+00:00",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMSpecimen",
      "path" : "FRLMSpecimen",
      "short" : "Logical model - FR LM Specimen",
      "definition" : "Prélèvement"
    },
    {
      "id" : "FRLMSpecimen.identifier",
      "path" : "FRLMSpecimen.identifier",
      "short" : "Identifiant unique de l'échantillon, au sein d'un périmètre défini. Exemple : identifiant attribué par le système du préleveur, identifiant attribué par le laboratoire, etc. Plusieurs identifiants peuvent être utilisés.",
      "definition" : "Identifiant unique de l'échantillon, au sein d'un périmètre défini. Exemple : identifiant attribué par le système du préleveur, identifiant attribué par le laboratoire, etc. Plusieurs identifiants peuvent être utilisés.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "FRLMSpecimen.status",
      "path" : "FRLMSpecimen.status",
      "short" : "Disponibilité du prélèvement",
      "definition" : "Disponibilité du prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): HL7 specimen-status"
      }
    },
    {
      "id" : "FRLMSpecimen.type",
      "path" : "FRLMSpecimen.type",
      "short" : "Échantillon prélevé",
      "definition" : "Échantillon prélevé",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-specimen-type-cisis (1.2.250.1.213.1.1.5.819)",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-specimen-type-cisis|20260716085852"
      }
    },
    {
      "id" : "FRLMSpecimen.specimenSource[x]",
      "path" : "FRLMSpecimen.specimenSource[x]",
      "short" : "Origine du prélèvement : il peut provenir d'un patient, d'un lieu ou d'un dispositif",
      "definition" : "Origine du prélèvement : il peut provenir d'un patient, d'un lieu ou d'un dispositif",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLocation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMSpecimen.parentSpecimen",
      "path" : "FRLMSpecimen.parentSpecimen",
      "short" : "Prélèvement dont provient cet échantillon",
      "definition" : "Prélèvement dont provient cet échantillon",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen"
      }]
    },
    {
      "id" : "FRLMSpecimen.request",
      "path" : "FRLMSpecimen.request",
      "short" : "Demande à l'origine du prélèvement",
      "definition" : "Demande à l'origine du prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMServiceRequest"
      }]
    },
    {
      "id" : "FRLMSpecimen.combined",
      "path" : "FRLMSpecimen.combined",
      "short" : "Binding Description: (preferred): HL7 specimen-combined",
      "definition" : "Binding Description: (preferred): HL7 specimen-combined",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): HL7 specimen-combined"
      }
    },
    {
      "id" : "FRLMSpecimen.collection",
      "path" : "FRLMSpecimen.collection",
      "short" : "Détails de la collecte",
      "definition" : "Détails de la collecte",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMSpecimen.collection.performer[x]",
      "path" : "FRLMSpecimen.collection.performer[x]",
      "short" : "Organisation prélevante",
      "definition" : "Organisation prélevante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMOrganisation"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
      }]
    },
    {
      "id" : "FRLMSpecimen.collection.collected[x]",
      "path" : "FRLMSpecimen.collection.collected[x]",
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
      "id" : "FRLMSpecimen.collection.quantity",
      "path" : "FRLMSpecimen.collection.quantity",
      "short" : "Quantité",
      "definition" : "Quantité",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMSpecimen.collection.method",
      "path" : "FRLMSpecimen.collection.method",
      "short" : "Acte de prélèvement",
      "definition" : "Acte de prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "NABM (1.2.250.1.215.300.2) ou 33882-2 [LOINC] Prélèvement"
      }
    },
    {
      "id" : "FRLMSpecimen.collection.device",
      "path" : "FRLMSpecimen.collection.device",
      "short" : "Dispositif utilisé",
      "definition" : "Dispositif utilisé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDeviceUse"
      }]
    },
    {
      "id" : "FRLMSpecimen.collection.additive[x]",
      "path" : "FRLMSpecimen.collection.additive[x]",
      "short" : "Produit utilisé",
      "definition" : "Produit utilisé",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMSpecimen.collection.bodySite",
      "path" : "FRLMSpecimen.collection.bodySite",
      "short" : "Localisation du prélèvement",
      "definition" : "Localisation du prélèvement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure"
      }]
    },
    {
      "id" : "FRLMSpecimen.receivedDate",
      "path" : "FRLMSpecimen.receivedDate",
      "short" : "Date de réception de l'échantillon",
      "definition" : "Date de réception de l'échantillon",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "FRLMSpecimen.container",
      "path" : "FRLMSpecimen.container",
      "short" : "Contenant du prélèvement",
      "definition" : "Contenant du prélèvement",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "FRLMSpecimen.container.specimenQuantity",
      "path" : "FRLMSpecimen.container.specimenQuantity",
      "short" : "Quantité de prélèvement dans le contenant",
      "definition" : "Quantité de prélèvement dans le contenant",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "FRLMSpecimen.container.containerDevice",
      "path" : "FRLMSpecimen.container.containerDevice",
      "short" : "Dispositif utilisé comme contenant",
      "definition" : "Dispositif utilisé comme contenant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMDevice"
      }]
    },
    {
      "id" : "FRLMSpecimen.condition",
      "path" : "FRLMSpecimen.condition",
      "short" : "État de l'échantillon",
      "definition" : "État de l'échantillon",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "(preferred): HL7 specimenCondition"
      }
    },
    {
      "id" : "FRLMSpecimen.note",
      "path" : "FRLMSpecimen.note",
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
