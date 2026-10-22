# Mapping FRLMSupportingInformation → FRServiceRequestDocument.supportingInformation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMSupportingInformation → FRServiceRequestDocument.supportingInformation 

 
Mapping des éléments du modèle métier FRLMSupportingInformation (partagé avec le mapping imagerie) vers FRServiceRequestDocument.supportingInfo (référencé depuis Composition.basedOn), pour le contexte biologie. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FRSectionLaboratorySupportingInformationLMCDAFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/FRSectionLaboratorySupportingInformationLMCDAFHIR",
  "version" : "0.1.0",
  "name" : "FRSectionLaboratorySupportingInformationLMCDAFHIR",
  "title" : "Mapping Métier/CDA/FHIR : Informations cliniques (biologie)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-16T13:00:57+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMSupportingInformation (partagé avec le mapping imagerie) vers FRServiceRequestDocument.supportingInfo (référencé depuis Composition.basedOn), pour le contexte biologie.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
    "sourceVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucun équivalent CDA identifié."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMSupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMSupportingInformation",
      "target" : [{
        "code" : "Composition.basedOn.serviceRequest.supportingInfo",
        "display" : "FRServiceRequestDocument.supportingInfo",
        "equivalence" : "equivalent",
        "comment" : "ServiceRequest est référencé depuis Composition.extension:basedOn (cf. FROrderLMCDAFHIR / FRServiceRequestLMCDAFHIR) ; son supportingInformation porte le contenu de la section."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.observation",
      "target" : [{
        "code" : "ServiceRequest.supportingInfo",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.condition",
      "target" : [{
        "code" : "ServiceRequest.supportingInfo",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.medicationAdministration",
      "display" : "FRLMMedicationAdministration",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifiée pour FRLMSupportingInformation.entry.sexForClinicalUse ; cette donnée existe dans le patient."
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.vaccination",
      "display" : "FRLMImmunisation",
      "target" : [{
        "code" : "ServiceRequest.supportingInfo",
        "display" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSupportingInformation.entry.otherSupportingInformation",
      "display" : "Resource",
      "target" : [{
        "code" : "ServiceRequest.supportingInfo",
        "display" : "Reference(Resource)",
        "equivalence" : "equivalent",
        "comment" : "supportingInformation est une Reference générique dans ce profil, cohérente avec le type Reference(Resource) non typé de otherSupportingInformation."
      }]
    }]
  }]
}

```
