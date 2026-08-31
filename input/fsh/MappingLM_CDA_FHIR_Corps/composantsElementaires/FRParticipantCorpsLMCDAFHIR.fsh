Instance: FRParticipantCorpsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMParticipant -> FRCDAParticipant / FRLMParticipant -> FRActorExtension"
Description: "Mapping des éléments du modèle métier FRLMParticipant vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension."
* name = "FRParticipantCorpsLMCDAFHIR"
* title = "Mapping Metier/CDA/FHIR : \"Participant\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-participant-corps"
// Élément racine
* group[=].element[+].code = #FRLMParticipant
* group[=].element[=].target.code = #Participant2
* group[=].element[=].target.display = "FRCDAParticipant"
* group[=].element[=].target.equivalence = #equivalent
// Type de participation
* group[=].element[+].code = #FRLMParticipant.type
* group[=].element[=].target.code = #Participant2.typeCode
* group[=].element[=].target.equivalence = #equivalent
// Période de la participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.code = #Participant2.time
* group[=].element[=].target.equivalence = #equivalent

// sous-Groupe Mapping 1 : modèle métier -> CDA (rôle référencé par participantRole)
// Participant2.participantRole référence le profil CDA SÉPARÉ fr-cda-participant-role ;
// ses sous-champs sont donc mappés dans un groupe dédié.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-participant-role"
// Identifiants du participant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #ParticipantRole.id
* group[=].element[=].target.equivalence = #equivalent
// Nom du participant
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #ParticipantRole.playingEntity
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "playingEntity (type CDA PlayingEntity) n'est pas décomposé ; le nom y est porté globalement."
// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #ParticipantRole.code
* group[=].element[=].target.equivalence = #equivalent
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantProfessional
* group[=].element[=].target.code = #ParticipantRole.playingEntity
* group[=].element[=].target.equivalence = #equivalent
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantDevice
* group[=].element[=].target.code = #ParticipantRole.playingDevice
* group[=].element[=].target.equivalence = #equivalent
// Organisation associée
* group[=].element[+].code = #FRLMParticipant.participant.participantOrganisation
* group[=].element[=].target.code = #ParticipantRole.scopingEntity
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-actor-extension"
// Élément racine
* group[=].element[+].code = #FRLMParticipant
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.display = "FRActorExtension"
* group[=].element[=].target.equivalence = #equivalent
// Type de participation
* group[=].element[+].code = #FRLMParticipant.type
* group[=].element[=].target.code = #Extension.extension:typeCode.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Identifiants du participant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "value[x] est une simple Reference ; l'identifiant n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
// Nom du participant
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "value[x] est une simple Reference ; le nom n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "value[x] est une simple Reference ; la qualification n'est pas accessible sans résoudre la référence vers FRPractitionerRoleDocument."
// Période de la participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Période sans équivalent direct dans l'extension FRActorExtension."
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantProfessional
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FRPractitionerRoleDocument."
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantDevice
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un Device."
// Organisation associée
* group[=].element[+].code = #FRLMParticipant.participant.participantOrganisation
* group[=].element[=].target.code = #Extension.extension:actor.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où value[x] référence un FROrganizationRoleDocument."