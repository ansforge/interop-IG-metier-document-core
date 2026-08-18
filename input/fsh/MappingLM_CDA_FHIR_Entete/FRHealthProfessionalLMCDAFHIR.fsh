Instance: FRHealthProfessionalLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMHealthProfessional → FRCDAAssignedEntity/FRCDAAssignedAuthor → FrPractitionerRoleDocument / FrPractitionerDocument"
Description: """Ce ConceptMap présente trois groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMHealthProfessional\" et les éléments CDA \"assignedEntity\"/\"assignedAuthor\"
 - Mapping 2 : entre le modèle métier \"FRLMHealthProfessional\" et le profil FHIR \"FrPractitionerRoleDocument\"
 - Mapping 3 : entre le modèle métier \"FRLMHealthProfessional\" et le profil FHIR \"FrPractitionerDocument\" (référencé depuis PractitionerRole.practitioner)

Ce mapping est réutilisé chaque fois qu'un professionnel de santé apparaît dans l'entête du document (auteur, responsable, validateur, opérateur de saisie, informateur, participant, destinataire, prescripteur, professionnel référent d'une prise en charge, etc.)."""

* title = "Mapping Métier/CDA/FHIR : \"Professionnel de santé\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
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
* group[=].element[=].target.code = #AssignedEntity.assignedPerson.name
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.family
* group[=].element[=].target.code = #AssignedEntity.assignedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.given
* group[=].element[=].target.code = #AssignedEntity.assignedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.prefix
* group[=].element[=].target.code = #AssignedEntity.assignedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.suffix
* group[=].element[=].target.code = #AssignedEntity.assignedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent

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

// Groupe Mapping 2 : modèle métier → FHIR (PractitionerRole)
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
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
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-health-professional"
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
* group[=].element[+].code = #FRLMHealthProfessional.name.family
* group[=].element[=].target.code = #Practitioner.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.given
* group[=].element[=].target.code = #Practitioner.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.prefix
* group[=].element[=].target.code = #Practitioner.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHealthProfessional.name.suffix
* group[=].element[=].target.code = #Practitioner.name.suffix
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMHealthProfessional.address
* group[=].element[=].target.code = #Practitioner.address
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMHealthProfessional.telecom
* group[=].element[=].target.code = #Practitioner.telecom
* group[=].element[=].target.equivalence = #equivalent
