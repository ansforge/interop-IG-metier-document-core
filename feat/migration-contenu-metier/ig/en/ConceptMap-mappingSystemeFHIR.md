# Mapping Métier/CDA/FHIR : "Système / Structure Auteur" - FR Document Core (Modèle métier) v0.1.0

## ConceptMap: Mapping Métier/CDA/FHIR : "Système / Structure Auteur" 

 
Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping : 
* Mapping 1 : entre le modèle métier "SystemeStructureAuteur" et l'élément CDA "assignedAuthor"
* Mapping 2 : entre l'élément CDA "assignedAuthor" et le profil FHIR "FrDeviceDocument"
 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mappingSystemeFHIR",
  "url" : "https://interop.esante.gouv.fr/ig/document-core/ConceptMap/mappingSystemeFHIR",
  "version" : "0.1.0",
  "name" : "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\"",
  "title" : "Mapping Métier/CDA/FHIR : \"Système / Structure Auteur\"",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-07-10T14:07:21+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Ce ConceptMap de l'élément SystemeStructureAuteur présente deux groupes de mapping : \n - Mapping 1 : entre le modèle métier \\\"SystemeStructureAuteur\\\" et l'élément CDA \\\"assignedAuthor\\\"\n - Mapping 2 : entre l'élément CDA \\\"assignedAuthor\\\" et le profil FHIR \\\"FrDeviceDocument\\\" ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "group" : [{
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-systeme",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
    "element" : [{
      "code" : "FRLMSysteme.identificationAuteur",
      "target" : [{
        "code" : "assignedAuthor",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.identifiantAuteur",
      "target" : [{
        "code" : "assignedAuthor.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.professionSavoirFaireRole",
      "target" : [{
        "code" : "assignedAuthor.code",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.systeme",
      "target" : [{
        "code" : "assignedAuthor.assignedAuthoringDevice",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.systeme.nomModeleSysteme",
      "target" : [{
        "code" : "assignedAuthor.assignedAuthoringDevice.manufacturerModelName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.systeme.nomSysteme",
      "target" : [{
        "code" : "assignedAuthor.assignedAuthoringDevice.softwareName",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.structure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.structure.identifiantStructure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.id",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.structure.nomStructure",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.structure.adresse",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.addr",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "FRLMSysteme.identificationAuteur.structure.coordonneesTelecom",
      "target" : [{
        "code" : "assignedAuthor.representedOrganization.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-author",
    "target" : "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-device-document",
    "element" : [{
      "code" : "assignedAuthor",
      "target" : [{
        "code" : "Device",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.id",
      "target" : [{
        "code" : "Device.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.code",
      "target" : [{
        "code" : "Device.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedAuthoringDevice.manufacturerModelName",
      "target" : [{
        "code" : "Device.deviceName.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.assignedAuthoringDevice.softwareName",
      "target" : [{
        "code" : "Device.deviceName.type",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization",
      "target" : [{
        "code" : "Device.owner.organization",
        "equivalence" : "equivalent",
        "comment" : "Device.owner.organization.resolve().ofType(Organization)"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.id",
      "target" : [{
        "code" : "Device.owner.organization.identifier",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.name",
      "target" : [{
        "code" : "Device.owner.organization.name",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.addr",
      "target" : [{
        "code" : "Device.owner.organization.address",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "assignedAuthor.representedOrganization.telecomm",
      "target" : [{
        "code" : "Device.owner.organization.telecom",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
