# Mapping FRLMLaboratorySupportingInformation → FRCDASectionInformationsCliniques / FRLMLaboratorySupportingInformation → FRServiceRequestDocument.supportingInformation - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping FRLMLaboratorySupportingInformation → FRCDASectionInformationsCliniques / FRLMLaboratorySupportingInformation → FRServiceRequestDocument.supportingInformation 

 
Mapping des éléments du modèle métier FRLMLaboratorySupportingInformation vers la section CDA FRCDASectionInformationsCliniques, puis vers FRServiceRequestDocument.supportingInformation (référencé depuis Composition.basedOn). 



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
  "date" : "2026-09-14T13:28:49+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Mapping des éléments du modèle métier FRLMLaboratorySupportingInformation vers la section CDA FRCDASectionInformationsCliniques, puis vers FRServiceRequestDocument.supportingInformation (référencé depuis Composition.basedOn).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratorySupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-section-informations-cliniques",
    "element" : [{
      "code" : "FRLMLaboratorySupportingInformation",
      "target" : [{
        "code" : "Section",
        "display" : "FRCDASectionInformationsCliniques",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.codeSection",
      "target" : [{
        "code" : "Section.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.titleSection",
      "target" : [{
        "code" : "Section.title",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.description",
      "target" : [{
        "code" : "Section.text",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.observation",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDASimpleObservation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.condition",
      "target" : [{
        "code" : "Section.entry.observation",
        "display" : "FRCDAProbleme",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.medicationAdministration",
      "target" : [{
        "code" : "Section.entry.substanceAdministration",
        "display" : "FRCDATraitement",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifiée dans FRCDASectionInformationsCliniques pour FRLMLaboratorySupportingInformation.entry.sexForClinicalUse ; cette donnée relève du contexte patient."
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.vaccination",
      "target" : [{
        "code" : "Section.entry.substanceAdministration",
        "display" : "FRCDAVaccination",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.otherSupportingInformation",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible CDA explicite identifiée dans FRCDASectionInformationsCliniques pour FRLMLaboratorySupportingInformation.entry.otherSupportingInformation ; la ressource référencée n'est pas typée."
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMLaboratorySupportingInformation",
    "sourceVersion" : "0.1.0",
    "target" : "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-service-request-document",
    "targetVersion" : "0.1.0",
    "element" : [{
      "code" : "FRLMLaboratorySupportingInformation",
      "target" : [{
        "code" : "Composition.basedOn.serviceRequest.supportingInformation",
        "display" : "FRServiceRequestDocument.supportingInformation",
        "equivalence" : "equivalent",
        "comment" : "ServiceRequest est référencé depuis Composition.extension:basedOn (cf. FROrderLMCDAFHIR / FRServiceRequestLMCDAFHIR) ; son supportingInformation porte le contenu de la section."
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.observation",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "display" : "Observation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.condition",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "display" : "FRConditionDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.medicationAdministration",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "display" : "FRMedicationAdministrationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.sexForClinicalUse",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Aucune cible FHIR explicite identifiée pour FRLMLaboratorySupportingInformation.entry.sexForClinicalUse ; cette donnée existe dans le patient."
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.vaccination",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "display" : "FRImmunizationDocument",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMLaboratorySupportingInformation.entry.otherSupportingInformation",
      "target" : [{
        "code" : "ServiceRequest.supportingInformation",
        "equivalence" : "equivalent",
        "comment" : "supportingInformation est une Reference générique dans ce profil, cohérente avec le type Reference(Resource) non typé de otherSupportingInformation."
      }]
    }]
  }]
}

```
