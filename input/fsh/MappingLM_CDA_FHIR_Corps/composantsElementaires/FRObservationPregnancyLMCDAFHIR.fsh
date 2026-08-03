Instance: FRObservationPregnancyLMCDAFHIR
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping FRLMPregnancyObservation → FRCDAObservationSurLaGrossesse / FRLMPregnancyObservation → FRObservationPregnancyDocument"
Description: "Mapping des éléments du modèle métier FRLMPregnancyObservation vers le profil CDA FRCDAObservationSurLaGrossesse, puis vers le profil FHIR FRObservationPregnancyDocument."
* title = "Mapping Métier/CDA/FHIR : \"Observation sur la grossesse\""  
* status = #draft

// Groupe Mapping 1 : modèle métier → CDA
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-cda-observation-sur-la-grossesse"

// Élément racine   
* group[=].element[+].code = #FRLMPregnancyObservation
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse
* group[=].element[=].target.equivalence = #equivalent      

// Statut
* group[=].element[+].code = #FRLMPregnancyObservation.header.status
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.statusCode
* group[=].element[=].target.equivalence = #equivalent

// directSubject
* group[=].element[+].code = #FRLMPregnancyObservation.directSubject[x]
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.subject
* group[=].element[=].target.equivalence = #equivalent

// observationDate
* group[=].element[+].code = #FRLMPregnancyObservation.observationDate[x]
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.effectiveTime
* group[=].element[=].target.equivalence = #equivalent

// type
* group[=].element[+].code = #FRLMPregnancyObservation.type
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.code
* group[=].element[=].target.equivalence = #equivalent

// method
* group[=].element[+].code = #FRLMPregnancyObservation.method
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.methodCode
* group[=].element[=].target.equivalence = #equivalent

// result
* group[=].element[+].code = #FRLMPregnancyObservation.result
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.value
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result.dataAbsentReason
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.nullFlavor
* group[=].element[=].target.equivalence = #equivalent

// Intervalle de référence
* group[=].element[+].code = #FRLMPregnancyObservation.result.referenceRange
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.referenceRange
* group[=].element[=].target.equivalence = #equivalent

// interpretation
* group[=].element[+].code = #FRLMPregnancyObservation.interpretation
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.interpretationCode
* group[=].element[=].target.equivalence = #equivalent

// note
* group[=].element[+].code = #FRLMPregnancyObservation.note
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.text
* group[=].element[=].target.equivalence = #equivalent

// component
* group[=].element[+].code = #FRLMPregnancyObservation.component
* group[=].element[=].target.equivalence = #unmatched

// derivedFrom
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.entryRelationship
* group[=].element[=].target.equivalence = #equivalent

// hasMember
* group[=].element[+].code = #FRLMPregnancyObservation.hasMember[x]
* group[=].element[=].target.code = #FRCDAObservationSurLaGrossesse.entryRelationship
* group[=].element[=].target.equivalence = #equivalent


// Groupe Mapping 2 : ML → FHIR
* group[+].source = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-lm-pregnancy-observation"
* group[=].target = "https://interop.esante.gouv.fr/ig/document/core/StructureDefinition/fr-observation-pregnancy-document"

// Élément racine
* group[=].element[+].code = #FRLMPregnancyObservation
* group[=].element[=].target.code = #FRObservationPregnancyDocument
* group[=].element[=].target.equivalence = #equivalent

// Sujet
* group[=].element[+].code = #FRLMPregnancyObservation.directSubject[x]
* group[=].element[=].target.code = #FRObservationPregnancyDocument.subject
* group[=].element[=].target.equivalence = #equivalent

// Date de l'observation
* group[=].element[+].code = #FRLMPregnancyObservation.observationDate[x]
* group[=].element[=].target.code = #FRObservationPregnancyDocument.effective[x]
* group[=].element[=].target.equivalence = #equivalent

// Type
* group[=].element[+].code = #FRLMPregnancyObservation.type
* group[=].element[=].target.code = #FRObservationPregnancyDocument.code
* group[=].element[=].target.equivalence = #equivalent

// Méthode
* group[=].element[+].code = #FRLMPregnancyObservation.method
* group[=].element[=].target.code = #FRObservationPregnancyDocument.method
* group[=].element[=].target.equivalence = #equivalent

// Résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result
* group[=].element[=].target.code = #FRObservationPregnancyDocument.value
* group[=].element[=].target.equivalence = #equivalent

// Raison de l'absence de résultat
* group[=].element[+].code = #FRLMPregnancyObservation.result.dataAbsentReason
* group[=].element[=].target.code = #FRObservationPregnancyDocument.dataAbsentReason
* group[=].element[=].target.equivalence = #equivalent

// Intervalle de référence
* group[=].element[+].code = #FRLMPregnancyObservation.result.referenceRange
* group[=].element[=].target.code = #FRObservationPregnancyDocument.referenceRange
* group[=].element[=].target.equivalence = #equivalent

// Interprétation
* group[=].element[+].code = #FRLMPregnancyObservation.interpretation
* group[=].element[=].target.code = #FRObservationPregnancyDocument.interpretation
* group[=].element[=].target.equivalence = #equivalent

// Commentaire
* group[=].element[+].code = #FRLMPregnancyObservation.note
* group[=].element[=].target.code = #FRObservationPregnancyDocument.note
* group[=].element[=].target.equivalence = #equivalent

// Composants
* group[=].element[+].code = #FRLMPregnancyObservation.component
* group[=].element[=].target.code = #FRObservationPregnancyDocument.component
* group[=].element[=].target.equivalence = #equivalent

// Dérivé de
* group[=].element[+].code = #FRLMPregnancyObservation.derivedFrom[x]
* group[=].element[=].target.code = #FRObservationPregnancyDocument.derivedFrom
* group[=].element[=].target.equivalence = #equivalent

// Membres
* group[=].element[+].code = #FRLMPregnancyObservation.hasMember[x]
* group[=].element[=].target.code = #FRObservationPregnancyDocument.hasMember
* group[=].element[=].target.equivalence = #equivalent