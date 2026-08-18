Instance: FRParticipantCorpsLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMParticipant -> FRCDAParticipant / FRLMParticipant -> FRActorExtension"
Description: "Mapping des éléments du modèle métier FRLMParticipant vers le profil CDA FRCDAParticipant, puis vers l'extension FHIR FRActorExtension."
* title = "Mapping Metier/CDA/FHIR : \"Participant\""
* status = #draft

// Groupe Mapping 1 : modèle métier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMParticipant"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-participant-corps"
// Élément racine
* group[=].element[+].code = #FRLMParticipant
* group[=].element[=].target.code = #Participant2
* group[=].element[=].target.display = "FRCDAParticipant"
* group[=].element[=].target.equivalence = #equivalent
// Identifiants du participant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #Participant2.participantRole.id
* group[=].element[=].target.equivalence = #equivalent
// Nom du participant
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #Participant2.participantRole.playingEntity.name
* group[=].element[=].target.equivalence = #equivalent
// Type de participation
* group[=].element[+].code = #FRLMParticipant.type
* group[=].element[=].target.code = #Participant2.code
* group[=].element[=].target.equivalence = #equivalent
// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #Participant2.participantRole.playingEntity.code
* group[=].element[=].target.equivalence = #equivalent
// Période de la participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.code = #Participant2.time
* group[=].element[=].target.equivalence = #equivalent
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantProfessional
* group[=].element[=].target.code = #Participant2.participantRole.playingEntity
* group[=].element[=].target.equivalence = #equivalent
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantDevice
* group[=].element[=].target.code = #Participant2.participantRole.playingDevice
* group[=].element[=].target.equivalence = #equivalent
// Organisation associée
* group[=].element[+].code = #FRLMParticipant.participant.participantOrganisation
* group[=].element[=].target.code = #Participant2.participantRole.scopingEntity
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
* group[=].element[=].target.code = #Extension.extension[typeCode].value[x]
* group[=].element[=].target.equivalence = #equivalent
// Identifiants du participant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:FRPractitionerRoleDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Nom du participant
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:FRPractitionerRoleDocument.name
* group[=].element[=].target.equivalence = #equivalent
// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:FRPractitionerRoleDocument.practitioner.qualification
* group[=].element[=].target.equivalence = #equivalent
// Période de la participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Période sans équivalent direct dans l'extension FRActorExtension."
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantProfessional
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:FRPractitionerRoleDocument
* group[=].element[=].target.equivalence = #equivalent
// Participant associé
* group[=].element[+].code = #FRLMParticipant.participant.participantDevice
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:Device
* group[=].element[=].target.equivalence = #equivalent
// Organisation associée
* group[=].element[+].code = #FRLMParticipant.participant.participantOrganisation
* group[=].element[=].target.code = #Extension.extension[actor].value[x]:FROrganizationRoleDocument
* group[=].element[=].target.equivalence = #equivalent