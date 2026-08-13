Instance: FRParticipantHeaderLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMParticipant → FRCDAParticipant → ParticipantExtension"
Description: """Ce ConceptMap présente deux groupes de mapping :
 - Mapping 1 : entre le modèle métier \"FRLMParticipant\" (entête) et l'élément CDA \"participant\"
 - Mapping 2 : entre le modèle métier \"FRLMParticipant\" et l'extension FHIR \"ParticipantExtension\" """

* title = "Mapping Métier/CDA/FHIR : \"Participant\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-participant"

// Élément racine
* group[=].element[+].code = #FRLMParticipant
* group[=].element[=].target.code = #participant
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #participant.associatedEntity.id
* group[=].element[=].target.equivalence = #equivalent

// Nom
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #participant.associatedEntity.name
* group[=].element[=].target.equivalence = #equivalent

// Type de participation
* group[=].element[+].code = #FRLMParticipant.type
* group[=].element[=].target.code = #participant@typeCode
* group[=].element[=].target.equivalence = #equivalent

// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #participant.functionCode
* group[=].element[=].target.equivalence = #equivalent

// Période de participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.code = #participant.time
* group[=].element[=].target.equivalence = #equivalent

// Participant professionnel de santé
* group[=].element[+].code = #FRLMParticipant.participant:healthProfessional
* group[=].element[=].target.code = #participant.associatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le participant professionnel de santé est de type FRLMHealthProfessional, cf. FRHealthProfessionalLMCDAFHIR."

// Participant organisation
* group[=].element[+].code = #FRLMParticipant.participant:organisation
* group[=].element[=].target.code = #participant.associatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le participant structure est de type FRLMOrganisation, cf. FROrganisationLMCDAFHIR."

// Participant système
* group[=].element[+].code = #FRLMParticipant.participant:device
* group[=].element[=].target.code = #participant.associatedEntity
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Le participant système est de type FRLMDevice, cf. FRDeviceLMCDAFHIR."

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-participant"
* group[=].target = "http://hl7.org/fhir/uv/fhir-clinical-document/StructureDefinition/ParticipantExtension"

// Élément racine
* group[=].element[+].code = #FRLMParticipant
* group[=].element[=].target.code = #Extension
* group[=].element[=].target.equivalence = #equivalent

// Identifiant
* group[=].element[+].code = #FRLMParticipant.identifier
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Porté par l'identifiant de la ressource référencée par extension:party.value[x], selon le type effectif du participant."

// Nom
* group[=].element[+].code = #FRLMParticipant.name
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Porté par le nom de la ressource référencée par extension:party.value[x], selon le type effectif du participant."

// Type de participation
* group[=].element[+].code = #FRLMParticipant.type
* group[=].element[=].target.code = #Extension.extension:type.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Rôle fonctionnel
* group[=].element[+].code = #FRLMParticipant.role
* group[=].element[=].target.code = #Extension.extension:function.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Période de participation
* group[=].element[+].code = #FRLMParticipant.period
* group[=].element[=].target.code = #Extension.extension:time.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Participant professionnel de santé
* group[=].element[+].code = #FRLMParticipant.participant:healthProfessional
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(PractitionerRole) — cf. FRHealthProfessionalLMCDAFHIR."

// Participant organisation
* group[=].element[+].code = #FRLMParticipant.participant:organisation
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Organization) — cf. FROrganisationLMCDAFHIR."

// Participant système
* group[=].element[+].code = #FRLMParticipant.participant:device
* group[=].element[=].target.code = #Extension.extension:party.value[x]
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Extension.extension:party.value[x].resolve().ofType(Device) — cf. FRDeviceLMCDAFHIR (composant commun)."
