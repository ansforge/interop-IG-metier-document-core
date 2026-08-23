Instance: FRObservationPregnancyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPregnancyObservation → FRCDAObservationSurLaGrossesse / FRLMPregnancyObservation → FRObservationPregnancyDocument"
Description: "Mapping des éléments du modèle métier FRLMPregnancyObservation vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument."
* name = "FRObservationPregnancyLMCDAFHIR"
* title = "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\""
* status = #draft
* experimental = false

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/cda/document-core/StructureDefinition/fr-cda-observation-sur-la-grossesse"

// Élément racine   
* group[=].element[+].code = #FRLMPregnancyObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRCDAObservationSurLaGrossesse"
* group[=].element[=].target.equivalence = #equivalent      

// Statut
* group[=].element[+].code = #FRLMPregnancyObservation.header.status
* group[=].element[=].target.code = #Observation.statusCode
* group[=].element[=].target.equivalence = #equivalent

// directSubject
* group[=].element[+].code = #FRLMPregnancyObservation.directSubject[x]
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent

// observationDate
* group[=].element[+].code = #FRLMPregnancyObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// type
* group[=].element[+].code = #FRLMPregnancyObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// method
* group[=].element[+].code = #FRLMPregnancyObservation.method
* group[=].element[=].target.code = #Observation.methodCode
* group[=].element[=].target.equivalence = #equivalent

// result
* group[=].element[+].code = #FRLMPregnancyObservation.result
* group[=].element[=].target.code = #Observation.value
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result.dataAbsentReason
* group[=].element[=].target.code = #Observation.nullFlavor
* group[=].element[=].target.equivalence = #equivalent

// Intervalle de référence
* group[=].element[+].code = #FRLMPregnancyObservation.result.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent

// interpretation
* group[=].element[+].code = #FRLMPregnancyObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretationCode
* group[=].element[=].target.equivalence = #equivalent

// note
* group[=].element[+].code = #FRLMPregnancyObservation.note
* group[=].element[=].target.code = #Observation.text
* group[=].element[=].target.equivalence = #equivalent

// component
* group[=].element[+].code = #FRLMPregnancyObservation.component
* group[=].element[=].target.equivalence = #unmatched

// derivedFrom
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.equivalence = #unmatched

// hasMember
* group[=].element[+].code = #FRLMPregnancyObservation.hasMember[x]
* group[=].element[=].target.equivalence = #unmatched


// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document-core/StructureDefinition/FRLMPregnancyObservation"
* group[=].target = "https://interop.esante.gouv.fr/ig/fhir/document-core/StructureDefinition/fr-observation-pregnancy-document"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyObservation
* group[=].element[=].target.code = #Observation
* group[=].element[=].target.display = "FRObservationPregnancyDocument"
* group[=].element[=].target.equivalence = #equivalent

// Sujet
* group[=].element[+].code = #FRLMPregnancyObservation.directSubject[x]
* group[=].element[=].target.code = #Observation.subject
* group[=].element[=].target.equivalence = #equivalent

// Date de l'observation
* group[=].element[+].code = #FRLMPregnancyObservation.observationDate[x]
* group[=].element[=].target.code = #Observation.effective[x]
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyObservation.type
* group[=].element[=].target.code = #Observation.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode
* group[=].element[+].code = #FRLMPregnancyObservation.method
* group[=].element[=].target.code = #Observation.method
* group[=].element[=].target.equivalence = #equivalent

// Résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result
* group[=].element[=].target.code = #Observation.value[x]
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result.dataAbsentReason
* group[=].element[=].target.code = #Observation.dataAbsentReason
* group[=].element[=].target.equivalence = #equivalent

// Intervalle de référence
* group[=].element[+].code = #FRLMPregnancyObservation.result.referenceRange
* group[=].element[=].target.code = #Observation.referenceRange
* group[=].element[=].target.equivalence = #equivalent

// Interprétation
* group[=].element[+].code = #FRLMPregnancyObservation.interpretation
* group[=].element[=].target.code = #Observation.interpretation
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMPregnancyObservation.note
* group[=].element[=].target.code = #Observation.note
* group[=].element[=].target.equivalence = #equivalent

// Composants
* group[=].element[+].code = #FRLMPregnancyObservation.component
* group[=].element[=].target.code = #Observation.component
* group[=].element[=].target.equivalence = #equivalent

// Dérivé de - FRLMObservation
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où derivedFrom[x] référence une FRLMObservation générique."

// Dérivé de - FRLMLaboratoryObservation
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où derivedFrom[x] référence une FRLMLaboratoryObservation (FRObservationLaboratoryReportResultsDocument)."

// Dérivé de - FRLMImagingStudy
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.code = #Observation.derivedFrom
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où derivedFrom[x] référence un FRLMImagingStudy (FRImagingStudyDocument)."

// Membres - FRLMLaboratoryObservation
* group[=].element[+].code = #FRLMPregnancyObservation.hasMember[x]
* group[=].element[=].target.code = #Observation.hasMember
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où hasMember[x] référence une FRLMLaboratoryObservation (FRObservationLaboratoryReportResultsDocument)."

// Membres - FRLMObservation
* group[=].element[+].code = #FRLMPregnancyObservation.hasMember[x]
* group[=].element[=].target.code = #Observation.hasMember
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Cas où hasMember[x] référence une FRLMObservation générique."