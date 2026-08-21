# Logical model - FR LM ObservationMedia - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM ObservationMedia 

 
Image illustrative. 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Modèle logique métier - FR LM Batterie d'examens de biologie médicale](StructureDefinition-FRLMBatterieExamensBiologieMedicale.md), [Modèle logique métier - FR LM Isolat microbiologique](StructureDefinition-FRLMIsolatMicrobiologique.md), [Logical model - FR LM QR Code](StructureDefinition-FRLMQRCode.md) and [Logical model - FR LM Resultats d'examens de biologie medicale](StructureDefinition-FRLMResultatsExamensBiologieMedicale.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMObservationMedia)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Logical model - FR LM Patient (https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient|0.1.0)](StructureDefinition-FRLMPatient.md)
* [Logical model - FR LM Specimen (https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen|0.1.0)](StructureDefinition-FRLMSpecimen.md)

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 2 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Logical model - FR LM Patient (https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient|0.1.0)](StructureDefinition-FRLMPatient.md)
* [Logical model - FR LM Specimen (https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen|0.1.0)](StructureDefinition-FRLMSpecimen.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMObservationMedia.csv), [Excel](../StructureDefinition-FRLMObservationMedia.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMObservationMedia",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
  "version" : "0.1.0",
  "name" : "FRLMObservationMedia",
  "title" : "Logical model - FR LM ObservationMedia",
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
  "description" : "Image illustrative.",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMObservationMedia",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMObservationMedia",
      "path" : "FRLMObservationMedia",
      "short" : "Logical model - FR LM ObservationMedia",
      "definition" : "Image illustrative."
    },
    {
      "id" : "FRLMObservationMedia.content",
      "path" : "FRLMObservationMedia.content",
      "short" : "Image encodée en Base64",
      "definition" : "Image encodée en Base64",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMAttachment"
      }]
    },
    {
      "id" : "FRLMObservationMedia.content.contentType",
      "path" : "FRLMObservationMedia.content.contentType",
      "min" : 1
    },
    {
      "id" : "FRLMObservationMedia.content.data",
      "path" : "FRLMObservationMedia.content.data",
      "min" : 1
    },
    {
      "id" : "FRLMObservationMedia.subject[x]",
      "path" : "FRLMObservationMedia.subject[x]",
      "short" : "Patient ou spécimen concerné par l’image",
      "definition" : "Patient ou spécimen concerné par l’image",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPatient|0.1.0",
        "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSpecimen|0.1.0"]
      }]
    },
    {
      "id" : "FRLMObservationMedia.note",
      "path" : "FRLMObservationMedia.note",
      "short" : "Précondition",
      "definition" : "Précondition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
