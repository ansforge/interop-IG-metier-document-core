# Logical model - FR LM Endpoint - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Endpoint 

 
Référence Wado d'un objet DICOM (SOP Instance) 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md) and [Logical model - FR LM Series](StructureDefinition-FRLMSeries.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMEndpoint)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 **Vue différentielle** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

 **Vue d'ensembleView** 

Cette structure est dérivée de [FRLMEntry](StructureDefinition-FRLMEntry.md) 

** Résumé **

Obligatoire : 0 élément(3 éléments obligatoire(s) imbriqué(s))

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMEndpoint.csv), [Excel](../StructureDefinition-FRLMEndpoint.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMEndpoint",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint",
  "version" : "0.1.0",
  "name" : "FRLMEndpoint",
  "title" : "Logical model - FR LM Endpoint",
  "status" : "draft",
  "date" : "2026-09-02T12:54:48+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Référence Wado d'un objet DICOM (SOP Instance)",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEndpoint",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEntry|0.1.0",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMEndpoint",
      "path" : "FRLMEndpoint",
      "short" : "Logical model - FR LM Endpoint",
      "definition" : "Référence Wado d'un objet DICOM (SOP Instance)"
    },
    {
      "id" : "FRLMEndpoint.connectionType",
      "path" : "FRLMEndpoint.connectionType",
      "short" : "IHE Invoke Image Display",
      "definition" : "IHE Invoke Image Display",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMEndpoint.payloadType",
      "path" : "FRLMEndpoint.payloadType",
      "short" : "Type de media",
      "definition" : "Type de media",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMEndpoint.address",
      "path" : "FRLMEndpoint.address",
      "short" : "WADO reference",
      "definition" : "WADO reference",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
