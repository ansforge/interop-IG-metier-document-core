Instance: FRFamilyMemberHistoryLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMFamilyMemberHistory → FRCDAAntecedentsFamiliaux / FRLMFamilyMemberHistory → FRFamilyMemberHistoryDocument"
Description: "Mapping des éléments du modèle métier FRLMFamilyMemberHistory vers le profil CDA FRCDAAntecedentsFamiliaux, puis vers le profil FHIR FRFamilyMemberHistoryDocument."
* title = "Mapping Métier/CDA/FHIR : \"Antécédent familial\""
* status = #draft

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
* group[=].element[=].target.code = #Organizer.subject.relatedSubject
* group[=].element[=].target.equivalence = #equivalent
// Problème du membre de la famille
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve
* group[=].element[=].target.equivalence = #equivalent
// Code du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.code
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve.code
* group[=].element[=].target.equivalence = #equivalent
// Outcome du problème
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.outcome
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve.value
* group[=].element[=].target.equivalence = #equivalent
// Le problème a contribué au décès
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.contributedToDeath
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve.value
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "La contribution au décès est rapprochée de la valeur d'observation faute d'attribut CDA dédié explicite."
// Date/période de survenue
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.onset[x]
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Site de l'observation
* group[=].element[+].code = #FRLMFamilyMemberHistory.condition.bodySite
* group[=].element[=].target.code = #Organizer.component:frAntecedentFamilialObserve.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMFamilyMemberHistory.note
* group[=].element[=].target.code = #Organizer.text
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Le commentaire métier est porté dans la narration CDA."

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
* group[=].element[=].target.code = #FamilyMemberHistory.condition.extension:FRFamilyMemberHistoryBodySiteExtension
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMFamilyMemberHistory.note
* group[=].element[=].target.code = #FamilyMemberHistory.note
* group[=].element[=].target.equivalence = #equivalent