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
* group[=].element[=].target.code = #FRCDAResultat
* group[=].element[=].target.equivalence = #equivalent
// Identifiant de l'observation
* group[=].element[+].code = #FRLMObservation.header.identifier
* group[=].element[=].target.code = #FRCDAResultat.id
* group[=].element[=].target.equivalence = #equivalent
// Statut de l'observation
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #FRCDAResultat.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct de l'observation
* group[=].element[+].code = #FRLMObservation.directSubject[x]
* group[=].element[=].target.code = #FRCDAResultat.subject
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #FRCDAResultat.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #FRCDAResultat.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original de l'observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #FRCDAResultat.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #FRCDAResultat.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #FRCDAResultat.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #FRCDAResultat.inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #FRCDAResultat.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservation.result
* group[=].element[=].target.code = #FRCDAResultat.value
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservation.referenceRange
* group[=].element[=].target.code = #FRCDAResultat.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservation.interpretation
* group[=].element[=].target.code = #FRCDAResultat.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Commentaire
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #FRCDAResultat.entryRelationship:frCommentaireER
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
* group[=].element[=].target.code = #FRObservationResultDocument
* group[=].element[=].target.equivalence = #equivalent
// Identifiant
* group[=].element[+].code = #FRLMObservation.header.identifier
* group[=].element[=].target.code = #FRObservationResultDocument.identifier
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #FRObservationResultDocument.status
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct de l'observation
* group[=].element[+].code = #FRLMObservation.directSubject[x]
* group[=].element[=].target.code = #FRObservationResultDocument.focus
* group[=].element[=].target.equivalence = #equivalent
// Date/heure de l'observation
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #FRObservationResultDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #FRObservationResultDocument.code
* group[=].element[=].target.equivalence = #equivalent
// Nom original de l'observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #FRObservationResultDocument.code.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #FRObservationResultDocument.method
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #FRObservationResultDocument.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen correspondante
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #FRObservationResultDocument.basedOn:FRServiceRequestDocument
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #FRObservationResultDocument.bodySite
* group[=].element[=].target.equivalence = #equivalent
// Résultat de l'observation
* group[=].element[+].code = #FRLMObservation.result
* group[=].element[=].target.code = #FRObservationResultDocument.value[x]
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservation.referenceRange
* group[=].element[=].target.code = #FRObservationResultDocument.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservation.interpretation
* group[=].element[=].target.code = #FRObservationResultDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent
// Commentaires
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #FRObservationResultDocument.note
* group[=].element[=].target.equivalence = #equivalent
// Composant(s)
* group[=].element[+].code = #FRLMObservation.component
* group[=].element[=].target.code = #FRObservationResultDocument.component
* group[=].element[=].target.equivalence = #equivalent
// Référence de l'observation
* group[=].element[+].code = #FRLMObservation.derivedFrom[x]
* group[=].element[=].target.code = #FRObservationResultDocument.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
// Groupe d'observations
* group[=].element[+].code = #FRLMObservation.hasMember[x]
* group[=].element[=].target.code = #FRObservationResultDocument.hasMember
* group[=].element[=].target.equivalence = #equivalent
