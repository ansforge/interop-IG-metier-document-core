Instance: FREncounterLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMEncounter → FRCDARencontre / FRLMEncounter → FREncounterDocument"
Description: "Mapping des éléments du modèle métier FRLMEncounter vers le profil CDA FRCDARencontre, puis vers le profil FHIR FREncounterDocument."
* name = "FREncounterLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Encounter\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-rencontre"
// Élément racine
* group[=].element[+].code = #FRLMEncounter
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.display = "FRCDARencontre"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMEncounter.header.identifier
* group[=].element[=].target.code = #Encounter.id
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMEncounter.header.status
* group[=].element[=].target.code = #Encounter.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la rencontre
* group[=].element[+].code = #FRLMEncounter.header.author[x]
* group[=].element[=].target.code = #Encounter.author
* group[=].element[=].target.equivalence = #equivalent
// header.participant[x] 
* group[=].element[+].code = #FRLMEncounter.participant
* group[=].element[=].target.code = #Encounter.participant
* group[=].element[=].target.equivalence = #equivalent
// Type de rencontre
* group[=].element[+].code = #FRLMEncounter.type
* group[=].element[=].target.code = #Encounter.code
* group[=].element[=].target.equivalence = #equivalent
// Période de la rencontre
* group[=].element[+].code = #FRLMEncounter.period
* group[=].element[=].target.code = #Encounter.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Priorité de la rencontre
* group[=].element[+].code = #FRLMEncounter.priority
* group[=].element[=].target.code = #Encounter.priorityCode
* group[=].element[=].target.equivalence = #equivalent
// Participants de la rencontre
* group[=].element[+].code = #FRLMEncounter.participant
* group[=].element[=].target.code = #Encounter.participant:autresParticipants
* group[=].element[=].target.equivalence = #equivalent
// Organisation responsable
* group[=].element[+].code = #FRLMEncounter.serviceProvider
* group[=].element[=].target.code = #Encounter.performer.assignedEntity
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "L'organisation responsable est portée par representedOrganization au sein du type FRCDAAssignedEntity référencé par assignedEntity."
// Professionnel référent
* group[=].element[+].code = #FRLMEncounter.referringProfessional
* group[=].element[=].target.code = #Encounter.performer
* group[=].element[=].target.equivalence = #equivalent
// Demande ou plan à l'origine de la rencontre
* group[=].element[+].code = #FRLMEncounter.basedOn[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite de basedOn[x] dans le profil CDA FRCDARencontre."
// Motif(s) de la rencontre
* group[=].element[+].code = #FRLMEncounter.reason[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Aucune correspondance explicite de reason[x] dans le profil CDA FRCDARencontre."
// Bloc admission
* group[=].element[+].code = #FRLMEncounter.admission
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Admission sans correspondance directe explicite dans le profil CDA FRCDARencontre."
// Professionnel admettant
* group[=].element[+].code = #FRLMEncounter.admission.admitter
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'attribut CDA explicite pour l'admetteur dans le profil FRCDARencontre."
// Modalité d'entrée
* group[=].element[+].code = #FRLMEncounter.admission.admitSource
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'attribut CDA explicite pour admitSource dans le profil FRCDARencontre."
// Diagnostic(s) de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDiagnosis[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance explicite pour dischargeDiagnosis[x] dans FRCDARencontre."
// Bloc destination de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDestination
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "dischargeDestination sans correspondance directe explicite dans FRCDARencontre."
// Type de destination de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDestination.type
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'attribut CDA explicite pour le type de sortie dans FRCDARencontre."
// Lieu/organisation de destination de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDestination.location[x]
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'attribut CDA explicite pour la destination de sortie dans FRCDARencontre."
// Localisations de service
* group[=].element[+].code = #FRLMEncounter.serviceLocation
* group[=].element[=].target.code = #Encounter.participant:lieuExecution
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Les lieux de service sont rapprochés des participants de type lieu en CDA."
// Période de présence dans un lieu
* group[=].element[+].code = #FRLMEncounter.serviceLocation.period
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas d'attribut CDA explicite pour la période de serviceLocation dans FRCDARencontre."
// Organisation/partie d'organisation du lieu
* group[=].element[+].code = #FRLMEncounter.serviceLocation.organisationPart[x]
* group[=].element[=].target.code = #Encounter.participant:lieuExecution
* group[=].element[=].target.equivalence = #relatedto
// Rencontres incluses
* group[=].element[+].code = #FRLMEncounter.subEncounter
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Pas de correspondance explicite de subEncounter dans FRCDARencontre."
// Note
* group[=].element[+].code = #FRLMEncounter.note
* group[=].element[=].target.code = #Encounter.text
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMEncounter"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-encounter-document"
// Élément racine
* group[=].element[+].code = #FRLMEncounter
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.display = "FREncounterDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMEncounter.header.identifier
* group[=].element[=].target.code = #Encounter.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMEncounter.header.status
* group[=].element[=].target.code = #Encounter.status
* group[=].element[=].target.equivalence = #equivalent
// Auteur de la rencontre
* group[=].element[+].code = #FRLMEncounter.header.author[x]
* group[=].element[=].target.code = #Encounter.participant.individual.extension:author
* group[=].element[=].target.equivalence = #equivalent
// Type de rencontre
* group[=].element[+].code = #FRLMEncounter.type
* group[=].element[=].target.code = #Encounter.class
* group[=].element[=].target.equivalence = #equivalent
// Période
* group[=].element[+].code = #FRLMEncounter.period
* group[=].element[=].target.code = #Encounter.period
* group[=].element[=].target.equivalence = #equivalent
// Priorité
* group[=].element[+].code = #FRLMEncounter.priority
* group[=].element[=].target.code = #Encounter.priority
* group[=].element[=].target.equivalence = #equivalent
// Participants
* group[=].element[+].code = #FRLMEncounter.participant
* group[=].element[=].target.code = #Encounter.participant
* group[=].element[=].target.equivalence = #equivalent
// Organisation responsable
* group[=].element[+].code = #FRLMEncounter.serviceProvider
* group[=].element[=].target.code = #Encounter.serviceProvider
* group[=].element[=].target.equivalence = #equivalent
// Professionnel référent
* group[=].element[+].code = #FRLMEncounter.referringProfessional
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.equivalence = #equivalent
// Demande ou plan à l'origine de la rencontre
* group[=].element[+].code = #FRLMEncounter.basedOn[x]
* group[=].element[=].target.code = #Encounter.basedOn
* group[=].element[=].target.equivalence = #equivalent
// Motif(s) de la rencontre
* group[=].element[+].code = #FRLMEncounter.reason[x]
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "reason[x] peut alimenter reasonCode ou reasonReference selon le type porté."
// Bloc admission
* group[=].element[+].code = #FRLMEncounter.admission
* group[=].element[=].target.code = #Encounter.hospitalization
* group[=].element[=].target.equivalence = #relatedto
// Professionnel admettant
* group[=].element[+].code = #FRLMEncounter.admission.admitter
* group[=].element[=].target.code = #Encounter.participant.individual
* group[=].element[=].target.equivalence = #equivalent
// Modalité d'entrée
* group[=].element[+].code = #FRLMEncounter.admission.admitSource
* group[=].element[=].target.code = #Encounter.hospitalization.admitSource
* group[=].element[=].target.equivalence = #equivalent
// Diagnostic(s) de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDiagnosis[x]
* group[=].element[=].target.code = #Encounter.diagnosis.condition
* group[=].element[=].target.equivalence = #relatedto
// Type de destination de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDestination.type
* group[=].element[=].target.code = #Encounter.hospitalization.dischargeDisposition
* group[=].element[=].target.equivalence = #equivalent
// Lieu/organisation de destination de sortie
* group[=].element[+].code = #FRLMEncounter.dischargeDestination.location[x]
* group[=].element[=].target.code = #Encounter.hospitalization.destination
* group[=].element[=].target.equivalence = #equivalent
// Localisations de service
* group[=].element[+].code = #FRLMEncounter.serviceLocation
* group[=].element[=].target.code = #Encounter.location
* group[=].element[=].target.equivalence = #equivalent
// Période de présence dans un lieu
* group[=].element[+].code = #FRLMEncounter.serviceLocation.period
* group[=].element[=].target.code = #Encounter.location.period
* group[=].element[=].target.equivalence = #equivalent
// Organisation/partie d'organisation du lieu
* group[=].element[+].code = #FRLMEncounter.serviceLocation.organisationPart[x]
* group[=].element[=].target.code = #Encounter.location.location
* group[=].element[=].target.equivalence = #equivalent
// Rencontres incluses
* group[=].element[+].code = #FRLMEncounter.subEncounter
* group[=].element[=].target.code = #Encounter.partOf
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMEncounter.note
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Encounter R4 ne porte pas d'élément natif note."