Instance: FRHealthProfessionalLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHealthProfessional → FRCDAAssignedEntity/FRCDAAssignedAuthor → FrPractitionerRoleDocument / FrPractitionerDocument"
Description: """Ce ConceptMap présente trois groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMHealthProfessional\" et les éléments CDA \"assignedEntity\"/\"assignedAuthor\"
 - Mapping 2 : entre le modèle métier \"FRLMHealthProfessional\" et le profil FHIR \"FrPractitionerRoleDocument\"
 - Mapping 3 : entre le modèle métier \"FRLMHealthProfessional\" et le profil FHIR \"FrPractitionerDocument\" (référencé depuis PractitionerRole.practitioner)

Ce mapping est réutilisé chaque fois qu'un professionnel de santé apparaît dans l'entête du document (auteur, responsable, validateur, opérateur de saisie, informateur, participant, destinataire, prescripteur, professionnel référent d'une prise en charge, etc.)."""

* name = "FRHealthProfessionalLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Professionnel de santé\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-entity"

// Élément racine
* group[=].element[+].code = #FRLMHealthProfessional
* group[=].element[=].target.code = #AssignedEntity
* group[=].element[=].target.display = "assignedEntity"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "assignedEntity et assignedAuthor (porté par ClinicalDocument.author) partagent une structure CDA équivalente pour représenter un professionnel de santé."

// Identifiant
* group[=].element[+].code = #FRLMHealthProfessional.identifier
* group[=].element[=].target.code = #AssignedEntity.id
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMHealthProfessional.name
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "AssignedEntity.assignedPerson référence le profil CDA SÉPARÉ fr-cda-assigned-person ; cf. groupes dédiés ci-dessous."

// Adresse
* group[=].element[+].code = #FRLMHealthProfessional.address
* group[=].element[=].target.code = #AssignedEntity.addr
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMHealthProfessional.telecom
* group[=].element[=].target.code = #AssignedEntity.telecom
* group[=].element[=].target.equivalence = #equivalent

// Rôle professionnel
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.role
* group[=].element[=].target.code = #AssignedEntity.code
* group[=].element[=].target.equivalence = #equivalent

// Organisation d'exercice
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.organisation
* group[=].element[=].target.code = #AssignedEntity.representedOrganization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cf. FROrganisationLMCDAFHIR pour le détail du mapping de la structure d'exercice."

// Spécialité
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.specialty
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la spécialité ; elle est portée par assignedEntity.code selon le contexte."

// Sous-groupe de mapping : modèle métier → CDA (personne physique référencée par assignedPerson)
// AssignedEntity.assignedPerson référence le profil CDA SÉPARÉ fr-cda-assigned-person ; le nom
// y est donc mappé dans un groupe dédié dont le target system est fr-cda-assigned-person.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-person"
// Nom
* group[=].element[+].code = #FRLMHealthProfessional.name
* group[=].element[=].target.code = #Person.name
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → CDA (nom référencé par FRLMHumanName)
// FRLMHealthProfessional.name référence le type métier séparé FRLMHumanName, et Person.name
// référence à son tour le profil CDA SÉPARÉ fr-cda-name ; ses sous-champs sont donc mappés
// dans un groupe dédié dont le target system est fr-cda-name.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-name"
* group[=].element[+].code = #FRLMHumanName.use
* group[=].element[=].target.code = #PN.use
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.family
* group[=].element[=].target.code = #PN.item.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.given
* group[=].element[=].target.code = #PN.item.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.prefix
* group[=].element[=].target.code = #PN.item.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.suffix
* group[=].element[=].target.code = #PN.item.suffix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.period
* group[=].element[=].target.code = #PN.validTime
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR (PractitionerRole)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitionerRole-document"

// Élément racine
* group[=].element[+].code = #FRLMHealthProfessional
* group[=].element[=].target.code = #PractitionerRole
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole ne porte que le rôle d'exercice ; l'identité de la personne (identifiant, nom, adresse, télécom) est portée par PractitionerRole.practitioner, cf. le groupe de mapping suivant vers FrPractitionerDocument."

// Rôle professionnel
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.role
* group[=].element[=].target.code = #PractitionerRole.code
* group[=].element[=].target.equivalence = #equivalent

// Organisation d'exercice
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.organisation
* group[=].element[=].target.code = #PractitionerRole.organization
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "PractitionerRole.organization.resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."

// Spécialité
* group[=].element[+].code = #FRLMHealthProfessional.professionalRole.specialty
* group[=].element[=].target.code = #PractitionerRole.specialty
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 3 : modèle métier → FHIR (Practitioner référencé)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHealthProfessional"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document"

// Élément racine
* group[=].element[+].code = #FRLMHealthProfessional
* group[=].element[=].target.code = #Practitioner
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Référencé depuis PractitionerRole.practitioner."

// Identifiant
* group[=].element[+].code = #FRLMHealthProfessional.identifier
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMHealthProfessional.name
* group[=].element[=].target.code = #Practitioner.name
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMHealthProfessional.address
* group[=].element[=].target.code = #Practitioner.address
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMHealthProfessional.telecom
* group[=].element[=].target.code = #Practitioner.telecom
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → FHIR (nom référencé par FRLMHumanName)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-practitioner-document"
* group[=].element[+].code = #FRLMHumanName.family
* group[=].element[=].target.code = #Practitioner.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.given
* group[=].element[=].target.code = #Practitioner.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.prefix
* group[=].element[=].target.code = #Practitioner.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.suffix
* group[=].element[=].target.code = #Practitioner.name.suffix
* group[=].element[=].target.equivalence = #equivalent
