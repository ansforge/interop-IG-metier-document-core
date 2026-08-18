Instance: FRObservationResultLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservation → FRCDAResultat / FRLMObservation → FRObservationResultDocument"
Description: "Mapping des éléments du modèle métier FRLMObservation vers le profil CDA FRCDAResultat, puis vers le profil FHIR FRObservationResultDocument."
* title = "Mapping Métier/CDA/FHIR : \"Résultat d'observation\""
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-resultat"
// Élément racine
* group[=].element[+].code = #FRLMObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAResultat"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservation.header.identifier
* group[=].element[=].target.code = #Observation.id
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct de l'observation
* group[=].element[+].code = #FRLMObservation.directSubject[x]
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original de l'observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #Observation.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #Observation.inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #Observation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservation.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservation.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #Observation.entryRelationship:frCommentaireER
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Référence de l'observation
* group[=].element[+].code = #FRLMObservation.derivedFrom[x]
* group[=].element[=].target.equivalence = #unmatched
// Groupe d'observations
* group[=].element[+].code = #FRLMObservation.hasMember[x]
* group[=].element[=].target.equivalence = #unmatched

// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/fr-lm-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-result-document"
// élément racine
* group[=].element[+].code = #FRLMObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationResultDocument"
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMObservation.header.identifier
* group[=].element[=].target.code = #Observation.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct de l'observation
* group[=].element[+].code = #FRLMObservation.directSubject[x]
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original de l'observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #Observation.code.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #Observation.basedOn:FRServiceRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservation.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservation.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaires
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMObservation.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent
// Référence de l'observation
* group[=].element[+].code = #FRLMObservation.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
// Groupe d'observations
* group[=].element[+].code = #FRLMObservation.hasMember[x]
* group[=].element[=].target.code = #Observation.hasMember
* group[=].element[=].target.equivalence = #equivalent
