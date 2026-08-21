# Logical model - FR LM Body Structure - FR Document Core (Modèle métier) v0.1.0

## Modèle logique: Logical model - FR LM Body Structure 

 
Localisation anatomique 

**Utilisations:**

* Utilise ce/t/te Modèle logique: [Logical model - FR LM Condition](StructureDefinition-FRLMCondition.md), [Logical model - FR LM Device use](StructureDefinition-FRLMDeviceUse.md), [Logical model - FR LM Family Member History](StructureDefinition-FRLMFamilyMemberHistory.md), [Logical model - FR LM Imaging Study](StructureDefinition-FRLMImagingStudy.md)... Show 8 more, [Logical model - FR LM Observation](StructureDefinition-FRLMObservation.md), [Logical model - FR LM Assessment](StructureDefinition-FRLMObservationAssessment.md), [Logical model - FR LM Observation Vital Sign](StructureDefinition-FRLMObservationVitalSign.md), [Logical model- FR LM Procedure](StructureDefinition-FRLMProcedure.md), [Logical model - FR LM Quantity Exposure](StructureDefinition-FRLMQuantityExposure.md), [Logical model - FR LM Series](StructureDefinition-FRLMSeries.md), [Logical model - FR LM Service Request](StructureDefinition-FRLMServiceRequest.md) and [Logical model - FR LM Specimen](StructureDefinition-FRLMSpecimen.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fr.document-core|current/StructureDefinition/FRLMBodyStructure)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 **Vue différentielle** 

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Base](http://build.fhir.org/types.html#Base) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-FRLMBodyStructure.csv), [Excel](../StructureDefinition-FRLMBodyStructure.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRLMBodyStructure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure",
  "version" : "0.1.0",
  "name" : "FRLMBodyStructure",
  "title" : "Logical model - FR LM Body Structure",
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
  "description" : "Localisation anatomique",
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
  "type" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMBodyStructure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "FRLMBodyStructure",
      "path" : "FRLMBodyStructure",
      "short" : "Logical model - FR LM Body Structure",
      "definition" : "Localisation anatomique"
    },
    {
      "id" : "FRLMBodyStructure.morphology",
      "path" : "FRLMBodyStructure.morphology",
      "short" : "Type de structure représentée par la localisation anatomique. Peut décrire une morphologie normale ou anormale.",
      "definition" : "Type de structure représentée par la localisation anatomique. Peut décrire une morphologie normale ou anormale.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "FRLMBodyStructure.location",
      "path" : "FRLMBodyStructure.location",
      "short" : "Site anatomique",
      "definition" : "Site anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "description" : "SNOMED CT"
      }
    },
    {
      "id" : "FRLMBodyStructure.locationQualifier",
      "path" : "FRLMBodyStructure.locationQualifier",
      "short" : "Précision topographique (par exemple : supérieur, inférieur, distal, proximal).",
      "definition" : "Précision topographique (par exemple : supérieur, inférieur, distal, proximal).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "jdv-modificateur-topographique-cisis",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/jdv-modificateur-topographique-cisis|20260716085851"
      }
    },
    {
      "id" : "FRLMBodyStructure.description",
      "path" : "FRLMBodyStructure.description",
      "short" : "Description textuelle de la localisation anatomique",
      "definition" : "Description textuelle de la localisation anatomique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
