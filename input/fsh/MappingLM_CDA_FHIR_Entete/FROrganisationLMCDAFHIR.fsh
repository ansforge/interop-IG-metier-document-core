Instance: FROrganisationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMOrganisation → FRCDAAssignedEntity.representedOrganization → Organization"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMOrganisation\" et la structure CDA générique portant une organisation
 - Mapping 2 : entre le modèle métier \"FRLMOrganisation\" et la ressource FHIR \"Organization\"

Ce mapping est réutilisé chaque fois qu'une structure apparaît dans l'entête du document (structure d'exercice d'un professionnel de santé, structure de conservation, structure destinataire, structure informatrice, structure participante, organisation prescriptrice, organisation responsable d'une prise en charge, etc.)."""

* title = "Mapping Métier/CDA/FHIR : \"Structure\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-organisation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-assigned-entity"

// Élément racine
* group[=].element[+].code = #FRLMOrganisation
* group[=].element[=].target.code = #assignedEntity.representedOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Structure CDA générique reprise dans toutes les occurrences d'organisation (representedOrganization, representedCustodianOrganization, scopingOrganization, receivedOrganization, healthcareFacility.location, etc.), ici illustrée via assignedEntity.representedOrganization."

// Identifiant
* group[=].element[+].code = #FRLMOrganisation.identifier
* group[=].element[=].target.code = #assignedEntity.representedOrganization.id
* group[=].element[=].target.equivalence = #equivalent

// Type de structure
* group[=].element[+].code = #FRLMOrganisation.type
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la catégorie d'établissement, distinct du secteur d'activité."

// Nom
* group[=].element[+].code = #FRLMOrganisation.name
* group[=].element[=].target.code = #assignedEntity.representedOrganization.name
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMOrganisation.address
* group[=].element[=].target.code = #assignedEntity.representedOrganization.addr
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMOrganisation.telecom
* group[=].element[=].target.code = #assignedEntity.representedOrganization.telecom
* group[=].element[=].target.equivalence = #equivalent

// Organisation parente
* group[=].element[+].code = #FRLMOrganisation.partOf
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à l'organisation parente dans representedOrganization."

// Secteur d'activité
* group[=].element[+].code = #FRLMOrganisation.industrySector
* group[=].element[=].target.code = #assignedEntity.representedOrganization.standardIndustryClassCode
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-organisation"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Organization"

// Élément racine
* group[=].element[+].code = #FRLMOrganisation
* group[=].element[=].target.code = #Organization
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMOrganisation.identifier
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.equivalence = #equivalent

// Type de structure
* group[=].element[+].code = #FRLMOrganisation.type
* group[=].element[=].target.code = #Organization.type
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMOrganisation.name
* group[=].element[=].target.code = #Organization.name
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMOrganisation.address
* group[=].element[=].target.code = #Organization.address
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMOrganisation.telecom
* group[=].element[=].target.code = #Organization.telecom
* group[=].element[=].target.equivalence = #equivalent

// Organisation parente
* group[=].element[+].code = #FRLMOrganisation.partOf
* group[=].element[=].target.code = #Organization.partOf
* group[=].element[=].target.equivalence = #equivalent

// Secteur d'activité
* group[=].element[+].code = #FRLMOrganisation.industrySector
* group[=].element[=].target.code = #Organization.type
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Organization.type est 0..* : type et industrySector y sont tous deux portés, avec des codifications différentes."
