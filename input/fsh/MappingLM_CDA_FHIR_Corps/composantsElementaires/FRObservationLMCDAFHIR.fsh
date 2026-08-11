Instance: FRObservationLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMObservation -> FRCDASimpleObservation / FRLMObservation -> Observation"
Description: "Mapping des éléments du modele metier FRLMObservation vers le profil CDA FRCDASimpleObservation, puis vers le profil FHIR Observation."
* title = "Mapping Metier/CDA/FHIR : \"Observation\""
* status = #draft

// Groupe Mapping 1 : modele metier -> CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-simple-observation"
// Element racine
* group[=].element[+].code = #FRLMObservation
* group[=].element[=].target.code = #FRCDASimpleObservation
* group[=].element[=].target.equivalence = #equivalent
// Statut
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #FRCDASimpleObservation.statusCode
* group[=].element[=].target.equivalence = #equivalent
// Sujet direct
* group[=].element[+].code = #FRLMObservation.header.directSubject[x]
* group[=].element[=].target.code = #FRCDASimpleObservation.subject
* group[=].element[=].target.equivalence = #equivalent
// Date
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #FRCDASimpleObservation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent
// Type d'observation
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #FRCDASimpleObservation.code
* group[=].element[=].target.equivalence = #equivalent
// Nom de l'observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #FRCDASimpleObservation.text
* group[=].element[=].target.equivalence = #equivalent
// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #FRCDASimpleObservation.methodCode
* group[=].element[=].target.equivalence = #equivalent
// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #FRCDASimpleObservation.specimen
* group[=].element[=].target.equivalence = #equivalent
// Demande d'examen
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #FRCDASimpleObservation.inFulfillmentOf
* group[=].element[=].target.equivalence = #equivalent
// Localisation anatomique
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #FRCDASimpleObservation.targetSiteCode
* group[=].element[=].target.equivalence = #equivalent
// Résultat
* group[=].element[+].code = #FRLMObservation.result
* group[=].element[=].target.code = #FRCDASimpleObservation.value
* group[=].element[=].target.equivalence = #equivalent
// Intervalle de référence
* group[=].element[+].code = #FRLMObservation.referenceRange
* group[=].element[=].target.code = #FRCDASimpleObservation.referenceRange
* group[=].element[=].target.equivalence = #equivalent
// Interprétation
* group[=].element[+].code = #FRLMObservation.interpretation
* group[=].element[=].target.code = #FRCDASimpleObservation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent
// Note
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #FRCDASimpleObservation.text
* group[=].element[=].target.equivalence = #equivalent
// Composants
* group[=].element[+].code = #FRLMObservation.component
* group[=].element[=].target.equivalence = #unmatched
// Observation source
* group[=].element[+].code = #FRLMObservation.derivedFrom[x]
* group[=].element[=].target.code = #FRCDASimpleObservation.entryRelationship
* group[=].element[=].target.equivalence = #equivalent
// Membres
* group[=].element[+].code = #FRLMObservation.hasMember[x]
* group[=].element[=].target.code = #FRCDASimpleObservation.entryRelationship
* group[=].element[=].target.equivalence = #equivalent

// Groupe Mapping 2 : ML -> FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-ml-observation"
* group[=].target = "http://hl7.org/fhir/R4/StructureDefinition/Observation"
// Element racine
* group[=].element[+].code = #FRMLObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.equivalence = #equivalent

// Statut
* group[=].element[+].code = #FRLMObservation.header.status
* group[=].element[=].target.code = #Observation.status
* group[=].element[=].target.equivalence = #equivalent

// Sujet direct
* group[=].element[+].code = #FRLMObservation.header.directSubject[x]
* group[=].element[=].target.code = #Observation.focus
* group[=].element[=].target.equivalence = #equivalent

// Date
* group[=].element[+].code = #FRLMObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Nom observation
* group[=].element[+].code = #FRLMObservation.originalName
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent

// Méthode
* group[=].element[+].code = #FRLMObservation.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent

// Prélèvement
* group[=].element[+].code = #FRLMObservation.specimen
* group[=].element[=].target.code = #Observation.specimen
* group[=].element[=].target.equivalence = #equivalent

// Demande
* group[=].element[+].code = #FRLMObservation.order
* group[=].element[=].target.code = #Observation.basedOn
* group[=].element[=].target.equivalence = #equivalent

// Localisation
* group[=].element[+].code = #FRLMObservation.bodySite
* group[=].element[=].target.code = #Observation.bodySite
* group[=].element[=].target.equivalence = #equivalent

// Résultat
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

// Note
* group[=].element[+].code = #FRLMObservation.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent

// Composants
* group[=].element[+].code = #FRLMObservation.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent

// Dérivé de - FRLMObservation
* group[=].element[+].code = #FRLMObservation.derivedFrom[FRLMObservation]
* group[=].element[=].target.code = #Observation.derivedFrom:Observation
* group[=].element[=].target.equivalence = #equivalent

// Dérivé de - FRLMLaboratoryObservation
* group[=].element[+].code = #FRLMObservation.derivedFrom[FRLMLaboratoryObservation]
* group[=].element[=].target.code = #Observation.derivedFrom:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent

// Dérivé de - FRLMImagingStudy
* group[=].element[+].code = #FRLMObservation.derivedFrom[FRLMImagingStudy]
* group[=].element[=].target.code = #Observation.derivedFrom:FRImagingStudyDocument
* group[=].element[=].target.equivalence = #equivalent

// Membres - FRLMLaboratoryObservation
* group[=].element[+].code = #FRLMObservation.hasMember[FRLMLaboratoryObservation]
* group[=].element[=].target.code = #Observation.hasMember:FRObservationLaboratoryReportResultsDocument
* group[=].element[=].target.equivalence = #equivalent

// Membres - FRLMObservation
* group[=].element[+].code = #FRLMObservation.hasMember[FRLMObservation]
* group[=].element[=].target.code = #Observation.hasMember:Observation
* group[=].element[=].target.equivalence = #equivalent