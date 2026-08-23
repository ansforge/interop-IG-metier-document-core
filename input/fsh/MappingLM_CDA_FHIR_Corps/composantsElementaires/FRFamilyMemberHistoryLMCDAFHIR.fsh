Instance: FRFamilyMemberHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFamilyMemberHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMemberHistory → FRFamilyMemberHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMFamilyMemberHistory vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument."
* name = "FRFamilyMemberHistoryLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Antécédent familial\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedents-familiaux"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMemberHistory
* group[=].element[=].target.code = #Organizer
* group[=].element[=].target.display = "FRCDAAntecedentsFamiliaux"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMFamilyMemberHistory.header.status
* group[=].element[=].target.code = #Organizer.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Membre de la famille concerné
* group[=].element[+].code = #FRLMFamilyMemberHistory.relatedPerson
* group[=].element[=].target.code = #Organizer.subject
* group[=].element[=].target.equivalence = #equivalent
// Problème du membre de la famille
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition
* group[=].element[=].target.code = #Organizer.component.observation
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Organizer.component.observation référence le profil CDA FRCDAAntecedentFamilialObserve ; ses sous-champs sont mappés dans le groupe dédié ci-dessous."
// Commentaire
* group[=].element[+].code = #FRLMFamilyMemberHistory.note
* group[=].element[=].target.code = #Organizer.sdtcText
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le commentaire métier est porté dans la narration CDA."

// Sous-groupe de mapping : problème (sous-éléments) → CDA FRCDAAntecedentFamilialObserve
// FRLMFamilyMemberHistory.condition.* n'est pas un chemin direct de Organizer : component.observation
// référence le profil CDA FRCDAAntecedentFamilialObserve, dont les sous-éléments sont mappés ici.
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-antecedent-familial-observe"
// Code du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.code
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Outcome du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.outcome
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Le problème a contribué au décès
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.contributedToDeath
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "La contribution au décès est rapprochée de la valeur d'observation faute d'attribut CDA dédié explicite."
// Date/période de survenue
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.onset[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.bodySite
* group[=].element[=].target.code = #Observation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : modèle métier → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMFamilyMemberHistory"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-family-member-history-document"
// Élément racine
* group[=].element[+].code = #FRLMFamilyMemberHistory
* group[=].element[=].target.code = #FamilyMemberHistory
* group[=].element[=].target.display = "FRFamilyMemberHistoryDocument"
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'entrée
* group[=].element[+].code = #FRLMFamilyMemberHistory.header.status
* group[=].element[=].target.code = #FamilyMemberHistory.status
* group[=].element[=].target.equivalence = #equivalent
// Membre de la famille concerné
* group[=].element[+].code = #FRLMFamilyMemberHistory.relatedPerson
* group[=].element[=].target.code = #FamilyMemberHistory.relationship
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "relatedPerson contient plus d'information que relationship; la relation familiale est conservée."
// Problème du membre de la famille
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition
* group[=].element[=].target.code = #FamilyMemberHistory.condition
* group[=].element[=].target.equivalence = #equivalent
// Code du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.code
* group[=].element[=].target.code = #FamilyMemberHistory.condition.code
* group[=].element[=].target.equivalence = #equivalent
// Outcome du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.outcome
* group[=].element[=].target.code = #FamilyMemberHistory.condition.outcome
* group[=].element[=].target.equivalence = #equivalent
// Le problème a contribué au décès
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.contributedToDeath
* group[=].element[=].target.code = #FamilyMemberHistory.condition.contributedToDeath
* group[=].element[=].target.equivalence = #equivalent
// Date/période de survenue
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.onset[x]
* group[=].element[=].target.code = #FamilyMemberHistory.condition.onset[x]
* group[=].element[=].target.equivalence = #equivalent  
// Site de l'observation
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.bodySite
* group[=].element[=].target.code = #FamilyMemberHistory.condition.extension:bodySite
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMFamilyMemberHistory.note
* group[=].element[=].target.code = #FamilyMemberHistory.note
* group[=].element[=].target.equivalence = #equivalent