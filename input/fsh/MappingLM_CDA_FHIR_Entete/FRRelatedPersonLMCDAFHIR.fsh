Instance: FRRelatedPersonLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMRelatedPerson → FRCDARelatedEntity → RelatedPerson"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMRelatedPerson\" et l'élément CDA \"relatedEntity\"
 - Mapping 2 : entre le modèle métier \"FRLMRelatedPerson\" et la ressource FHIR \"RelatedPerson\"

Ce mapping est réutilisé chaque fois qu'une personne liée au patient/usager (autre qu'un professionnel de santé) apparaît dans l'entête du document (informateur, destinataire, participant, etc.)."""

* name = "FRRelatedPersonLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Personne liée au patient\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-related-entity"

// Élément racine
* group[=].element[+].code = #FRLMRelatedPerson
* group[=].element[=].target.code = #RelatedEntity
* group[=].element[=].target.display = "relatedEntity"
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMRelatedPerson.identifier
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de champ id explicite porté par relatedEntity."

// Nom
* group[=].element[+].code = #FRLMRelatedPerson.name
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "RelatedEntity.relatedPerson référence le profil CDA SÉPARÉ fr-cda-assigned-person ; cf. groupe dédié ci-dessous."

// Patient / usager concerné
* group[=].element[+].code = #FRLMRelatedPerson.subject
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Porté implicitement par le contexte : relatedEntity est un sous-élément du patient dans recordTarget."

// Lien avec le patient
* group[=].element[+].code = #FRLMRelatedPerson.relationship
* group[=].element[=].target.code = #RelatedEntity.code
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMRelatedPerson.address
* group[=].element[=].target.code = #RelatedEntity.addr
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMRelatedPerson.telecom
* group[=].element[=].target.code = #RelatedEntity.telecom
* group[=].element[=].target.equivalence = #equivalent

// Sexe, date de naissance, décès, naissance multiple, photo, période, communication
* group[=].element[+].code = #FRLMRelatedPerson.gender
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié au sexe de la personne liée dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.birthDate
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la date de naissance de la personne liée dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.deceased
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié au décès de la personne liée dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.multipleBirth
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la naissance multiple de la personne liée dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.photo
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la photo de la personne liée dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.period
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la période de validité du lien dans relatedEntity."
* group[=].element[+].code = #FRLMRelatedPerson.communication
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucun champ CDA dédié à la langue de communication de la personne liée dans relatedEntity."

// Sous-groupe de mapping : modèle métier → CDA (personne physique référencée par relatedPerson)
// RelatedEntity.relatedPerson référence le profil CDA SÉPARÉ fr-cda-assigned-person ; le nom
// y est donc mappé dans un groupe dédié dont le target system est fr-cda-assigned-person.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-assigned-person"
// Nom
* group[=].element[+].code = #FRLMRelatedPerson.name
* group[=].element[=].target.code = #Person.name
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → CDA (nom référencé par FRLMHumanName)
// FRLMRelatedPerson.name référence le type métier séparé FRLMHumanName, et Person.name
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

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMRelatedPerson"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-related-person-document"

// Élément racine
* group[=].element[+].code = #FRLMRelatedPerson
* group[=].element[=].target.code = #RelatedPerson
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMRelatedPerson.identifier
* group[=].element[=].target.code = #RelatedPerson.identifier
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMRelatedPerson.name
* group[=].element[=].target.code = #RelatedPerson.name
* group[=].element[=].target.equivalence = #equivalent

// Patient / usager concerné
* group[=].element[+].code = #FRLMRelatedPerson.subject
* group[=].element[=].target.code = #RelatedPerson.patient
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "RelatedPerson.patient.resolve().ofType(Patient)"

// Lien avec le patient
* group[=].element[+].code = #FRLMRelatedPerson.relationship
* group[=].element[=].target.code = #RelatedPerson.relationship
* group[=].element[=].target.equivalence = #equivalent

// Adresse
* group[=].element[+].code = #FRLMRelatedPerson.address
* group[=].element[=].target.code = #RelatedPerson.address
* group[=].element[=].target.equivalence = #equivalent

// Télécom
* group[=].element[+].code = #FRLMRelatedPerson.telecom
* group[=].element[=].target.code = #RelatedPerson.telecom
* group[=].element[=].target.equivalence = #equivalent

// Sexe
* group[=].element[+].code = #FRLMRelatedPerson.gender
* group[=].element[=].target.code = #RelatedPerson.gender
* group[=].element[=].target.equivalence = #equivalent

// Date de naissance
* group[=].element[+].code = #FRLMRelatedPerson.birthDate
* group[=].element[=].target.code = #RelatedPerson.birthDate
* group[=].element[=].target.equivalence = #equivalent

// Décès
* group[=].element[+].code = #FRLMRelatedPerson.deceased
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "RelatedPerson R4 ne porte pas nativement d'indicateur de décès."

// Naissance multiple
* group[=].element[+].code = #FRLMRelatedPerson.multipleBirth
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "RelatedPerson R4 ne porte pas nativement d'indicateur de naissance multiple."

// Photo
* group[=].element[+].code = #FRLMRelatedPerson.photo
* group[=].element[=].target.code = #RelatedPerson.photo
* group[=].element[=].target.equivalence = #equivalent

// Période de validité du lien
* group[=].element[+].code = #FRLMRelatedPerson.period
* group[=].element[=].target.code = #RelatedPerson.period
* group[=].element[=].target.equivalence = #equivalent

// Communication
* group[=].element[+].code = #FRLMRelatedPerson.communication
* group[=].element[=].target.code = #RelatedPerson.communication
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMRelatedPerson.communication.language
* group[=].element[=].target.code = #RelatedPerson.communication.language
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMRelatedPerson.communication.preferred
* group[=].element[=].target.code = #RelatedPerson.communication.preferred
* group[=].element[=].target.equivalence = #equivalent

// Sous-groupe de mapping : modèle métier → FHIR (nom référencé par FRLMHumanName)
// FRLMRelatedPerson.name référence le type métier séparé FRLMHumanName ; ses sous-champs
// sont donc mappés dans un groupe dédié.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMHumanName"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-related-person-document"
* group[=].element[+].code = #FRLMHumanName.family
* group[=].element[=].target.code = #RelatedPerson.name.family
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.given
* group[=].element[=].target.code = #RelatedPerson.name.given
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.prefix
* group[=].element[=].target.code = #RelatedPerson.name.prefix
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #FRLMHumanName.suffix
* group[=].element[=].target.code = #RelatedPerson.name.suffix
* group[=].element[=].target.equivalence = #equivalent
